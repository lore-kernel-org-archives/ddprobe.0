Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4306B403AE6
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786526434; cv=none; b=An3xsJNpYde4EXHmWXBXf+XF8L/9jQKFeEIQ1NrkIvrZGtdpExb+FcdGZu1lLN77J0BFrIltrxVLkeh+xrKie4w4Y2fIq9MFUS35Pvlxq1VQgWir9fC86wS9XSX2fTrcQTIevCT5l8t9VO7HE/avF8KPd4uwMfJYavq5hFzDJV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786526434; c=relaxed/simple;
	bh=gc4YzcHoGUeFBoVgmlma2myV9/vPdq89OVgKQ1ouEzk=;
	h=To:Subject:From:Message-Id:Date; b=dPZH2jV6Mpmlc7lSsrDQAgMdmWzXXgo63bIvm8Oln5rwk+Y2GOE9Oj4izolc9vWKFPXwBLefOJ6Yf2PUnB9vTHg+jOG+Qofz4OTYIict/Z0KU/2KCLPvy7gopvi3Vbzb+tN9elbxKr+lQw/3q8jiYgCDQQye4n0ySyZOj1uhMhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iO8JD1WQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iO8JD1WQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFDAC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786526433;
	bh=gc4YzcHoGUeFBoVgmlma2myV9/vPdq89OVgKQ1ouEzk=;
	h=To:Subject:From:Date:From;
	b=iO8JD1WQgNxMoJKlwZYhIdivg3bGnL9z6y0b0dwK2XCazTAVUmQJ/MKhJra1wqpzc
	 V7T/kERv6326U+ui5LiCJwqxKEAaN35nIzOzKBxLaRfnlctJx7+/O/l7tzKJifhXk/
	 p+UbZR+HY2xhEBeRTyUDztOnsHEiAeNDi7gyx7SPoRLfblJ8J9LbaJOdZtZi+4ONA/
	 i0Rw6594KCrtAzbhnfTRYVbUwfKg5HK3EeqebxYr3iCg/m9EjneTpUSOIoZKtbBmSi
	 KLy2jtoQLQlzgT0kAsMMnH3hyy1p3Tgz4FH5EpnYhRSoD61indOXP3t9Ny+eukS+LD
	 ONbUXilhnkM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A84C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652643368.32335.8473210595891228098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62540aca72596be95458c2b5f66fec7d9200f8099ac2c92cdab1ecf903398baf
Date: Wed, 12 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786526433
