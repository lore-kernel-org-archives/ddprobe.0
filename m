Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C8A39A7F7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770195234; cv=none; b=PATIC82OjFRBEBZfTA7ZskFU/ptIcNpsnYenmSbk4te5iiiLx42f/tHprg8aHqwkP0togGbqod6lu+e075y2wVPG39I43PlgGONEyEzg91eYtzABC/hKst8Xxl97wV5QbCmxj42j5LMneCRVSaWDYyg/ygjbiYFiuAQzZSibpLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770195234; c=relaxed/simple;
	bh=dI+YPgkf9ry6TBanq/e4tsmijN5jxCaLO1kg4jX7ufo=;
	h=To:Subject:From:Message-Id:Date; b=vCTLu53rIV4OYKvenD5eoC/ar17IAmUqudp1Clpt35srcZXXhGh67p8h4dFoT9y/g//ANK5aAqEOUl0+RjWVDIzr5SSMXek9DoZgNGdktOiB9KAi1bPsaNXeBLah8O+BVejcMqPGvD/ZvKzwf1lNUXZiJDWIiMqNbbrGK4E2gKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLFVKDj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLFVKDj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52A2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770195233;
	bh=dI+YPgkf9ry6TBanq/e4tsmijN5jxCaLO1kg4jX7ufo=;
	h=To:Subject:From:Date:From;
	b=RLFVKDj152z4s1gLXDKJPMyBRKBh5Kudgotwl94gtcnLnjnYMd7IhV32I2spBRf+V
	 C6Dq5+N5er7iUtvdFKFqfhVN6sWeGiVAU+srtuUzKMDR29ZwJWXdcdoQGJC/+tvH1I
	 L2p8lLTIrdTnY8BBmb8FnFhZIk/treM7zwM3HaJhwybn1o09fYDW8vAMALucEki/p1
	 +hqvj9wxVUI4Z+NBJY3w03xko7n/M9C9Ft2QH9qTLOaJEnOwOW5DeP0uWAdzOZHBtb
	 Z9EDEza5qoXYZUcNvT1ud5hWWweZg2t+VcQ/9FEU07JRAWE7DvDYmZ94ZlWTivaNGj
	 iY7DD5kWxUNUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A075DE83EE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019523364.16745.3367775652151287428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3edd495c0e431584dd8d14c56aad094c4b7416430b3fc231a899f66f156329
Date: Wed, 04 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770195233
