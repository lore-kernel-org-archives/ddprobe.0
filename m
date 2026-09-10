Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D71B34CCE
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789019434; cv=none; b=CGbTuSakO+AW/5k5595Ncxmh3bcBYxabAxfzrz6icpPpp0FsS3JY3Nk0chdRAIs7ISUgiZdCdSYa+JH2se7Sb6XtwqhIrV+oPKGsy1SUxO8aCFqmWNwRErBBZmElgqQ2WLu/xMQSnqNIRfz5qyRDf/R4i8IfiZkGKSoYdFS440Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789019434; c=relaxed/simple;
	bh=qR7HzBBK11s3p5k7jbRgzyjEMBXHYZn/yPbkFntcTYU=;
	h=To:Subject:From:Message-Id:Date; b=lYCf5Dy0Vnt+G2po6rA47cEsULqyl6jkUiJG2k1UjsUsCiPSvgDqnaMGVIcggl7juQoMmtK2o0GKV9u1kFHYiNKfLr7b5NX9/ZwFWjLWlhZ3YymUvnvYkEeinTwUqyPY2OYWRMjDuPHWhfR0mPaxeCzTt9fwQzOzIVwAtYIV5+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OewMq8v1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OewMq8v1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA7EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789019433;
	bh=qR7HzBBK11s3p5k7jbRgzyjEMBXHYZn/yPbkFntcTYU=;
	h=To:Subject:From:Date:From;
	b=OewMq8v1sF+qpn8UU3+lNBv2FDiipFh1fY+psf5R3uHfpAaxON68EJOgXRxq5Nc3v
	 QUtKph5+UNbVVs31DbsBkSWZSsbg9y+/0QfzbIc4uI8MKwKK9V6oG5mb0lXuP1DFje
	 Br861BlPibK4lUmEkQpXCzNa+z9EE4C4v6xCkOP4NCBz2AReJdLH+SMte+xqikZLG5
	 yF9C99/F02K/VL/mfzrPT5fI8CMM0RERJrjWBEYPFjnviayQ6d9Z8vPyHQrntiZrtY
	 tsz/Qsx4Bdrssc6TvIkCBCxvi4sekrHS7KhY1Jz6bG8e7wvGMuWyk3e5o/U1PAObBm
	 Lurdip23yM1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA500C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901943368.32678.5106573502327310727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e8d2410eb1f6ade528108e8027105ecc8b8d5d1ea55e67c55d07020471b1da
Date: Thu, 10 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789019433
