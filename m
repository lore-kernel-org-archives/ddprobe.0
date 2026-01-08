Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1964C5695
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767856434; cv=none; b=skKO+TBxeWiijN8QtGLOAyfF5gOFCY2tjf27AGqsLjEKYuPql3Boefda8fNg5N/RKU3Q/1DvUwx0i+9QM41n/APK6KvSegT0xifsTH7F7cyMkLPEv4y5poughRm7WSs0Ur2BcJsUa0f3E7xNWqyxo94PCvJ91Mst/ssQ0bNp5Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767856434; c=relaxed/simple;
	bh=aH/DPd/lAkzGwIV5nBLYSTRgyLI5FMwVFhBhjT9DtNo=;
	h=To:Subject:From:Message-Id:Date; b=hqaP4l8HcrV0/LtwcF9CuPpRS9n6ExKTsZwaKze7WMwMNL/KynNV1NDs61FGmj0kdxxsgeJ6oGYZmvJWY3gevuKuY4gSd6OzjpWBkGfTKLYiXX46gxgnMrMj06Z46jUvTAvyex8pN/f9WtzCnLPzSMVb++zvCHYcp3k/FJyxQOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMXO97ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMXO97ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767856433;
	bh=aH/DPd/lAkzGwIV5nBLYSTRgyLI5FMwVFhBhjT9DtNo=;
	h=To:Subject:From:Date:From;
	b=aMXO97iiaYZJ9TpHt9cXUmFrJPsADzUdqnnVxvnrgc91uU6lh0HU9euB1THvJv7Zk
	 nWljpdEaJpRXmBlHd0HxJh58n6q55v2OxpfAtmJL0Gxp/dR74wjBFDYhFzA5ZRkVsY
	 2vjqqP1c2l0y0MjLSBbX8hURWiYEB7C29tYJZZbay9I03T8zRgfwZorL4zgrwkSEz5
	 YopOeZ5O6QZGumC3JjQ7vz4or8t1QiMRhsHk37AktFnDo8JxthRwJ0GSsh+IilSJXH
	 5Ji7unxNZyDRT+cMCL/fSRob/iSLmaKSTxaU0aEsgiSV9HwgRSMeO/qdFp+DV/oUn2
	 AWsGRtUZdMX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4CAD148B5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785643357.18723.13608499027265223596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae37bc8f545f600b5b5443be224d772fdbf7620abb4bb91ecc75c9e1b611a3a
Date: Thu, 08 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767856433
