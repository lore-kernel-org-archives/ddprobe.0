Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0B0356A38
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897893; cv=none; b=s725v3snoBlUySmceeyVAijWbRboxVdUWy0cAKvZAcf8Ebz2a7ww7tPwvqFwaqJN7Oash+B95/DbA4cOq77mDVNV7FQat5fod312dv7vQo+d5Q4sG/IsuVyT+cm7U937rqC/tbvTOocxPqynoJpnSHEEcomzmDRiBuT6kO4t1nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897893; c=relaxed/simple;
	bh=97OWNJ2c0zcDo1JVrilk6qOsKlYOh4A0U8wiuejEcCM=;
	h=To:Subject:From:Message-Id:Date; b=eLSd9HSuDjVI9UlrB46sMXKI18RRDDs5kfIrYhK+ylcfh5T+L5j54riKHxo2EJet8HSgbYgnru9H01SzA0Kc6gRB8o/aGwKvWVXmI4ck9tuAQbOX53glVk52Qzx6R4suR2qWE4g9ASqBCdSEb6eILhkzA0uHbdLETI5LGSfXsms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgNHAmnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgNHAmnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0133C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770897893;
	bh=97OWNJ2c0zcDo1JVrilk6qOsKlYOh4A0U8wiuejEcCM=;
	h=To:Subject:From:Date:From;
	b=tgNHAmnfx2imCa08htUZ/mCiS+pmAWGghurX8rQGI/NqqQHrXwm2730Vg+uC3lZDl
	 dU21GwMrYN5EzeeGVjFlOKhuByZai1HXIIMI/I4YMcRec/rh8oaAF46YaschLE0eVR
	 BlAtWL44UmtzEDXuotuKpZIDema5X5OhwPGHiQ0ST1+LceUvzyrNvF0CtzPACMqkKK
	 Tx33tJiqZx/kLXyXYmZmbHNbVQm+Q8zqiyy56PSBTobhp1kGPbokbN2nWWiUYm0/OR
	 cp5cWobsS7B7PehQZZpIXO5q4977eTZFY9Yly71hGxiNsVmfcNpWRXMUCxcHpUWHkO
	 8RvKzv/8H5t5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE34EB4911
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089789364.2256.323195521648422679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da50b534e5ae6cac006179005ac495eb9803838f2636c93098b924dde22eadc8
Date: Thu, 12 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770897893
