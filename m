Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575949463
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789298434; cv=none; b=TuA9xZtszA6bjHzUj8XRWVvKsAFsaIbtImHReSthky7GAG5XprppFf59Clb5be/6N/d8TCf7RCJN1rtyE1OxYNT3wiVIxof9MePaTneKRZtlMF8Eyd5qJIzHDp3/x3t65WnM9YaFcA0HPYow8M2mT0ogpBLnpSGQJr4NyHVojEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789298434; c=relaxed/simple;
	bh=VFOFT9BkV1a38qjcvBjjNDpHonM5WrKjSD75xJw1X+M=;
	h=To:Subject:From:Message-Id:Date; b=OkV+WY+54p2U4yF2rLpOOmAMLXP/XdXg92pKLGeayxxiH9ZG98ppMSud6nsXoV5Upf7OrkKD33FPFgCcm1DV7BQrGxgGL9Vr+BOre8MMZjkK2+n2AQSmqhgRS5MhU7M5bLsBnKMJCssAS/x7inivkI8W3xCEHaUTSc0FNEMG4Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVoHHPR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVoHHPR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB59C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789298433;
	bh=VFOFT9BkV1a38qjcvBjjNDpHonM5WrKjSD75xJw1X+M=;
	h=To:Subject:From:Date:From;
	b=IVoHHPR6XViHwkoAxwS6OUDXOq2wA7EKN5EYYEoxeB6YLmF+NEBojIpEMCVIzw+Tm
	 nhiynU3u7PD5cgfz3krUqxfKEUr5n95BenL310eL6VNEyjXvtT0w/Tb5e+aUwS+gK1
	 Edp51ceWuAk3VOEKh0YYRIfiWY+jd4Kn4Rf2PZdbBXPE35DMcF0YbGTYaqHzTzHPGu
	 nqrITZGyN8sBTAlBCgB38g6eI8BlnSmOin1/sN1rEeqB7KPib7fiFSwl/DYixF4iPU
	 cp+gktGVxF0rxKH7AAheZlj9kSRGvsAHjoTcGFSiflOrQHTNj5zIaoN2pf1YNnDcDW
	 ypvxQ2VYeVQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF6FC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929843368.22324.17390007247352795608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cf37671f32820713833baea0e64ef2cfd74474c1a4ed08820655917a85461e8
Date: Sun, 13 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789298433
