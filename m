Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAFB149E17
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748314194; cv=none; b=pfdXPT/fatNpXL36a9ZykbaIqa6uok9jCWdgVdxvqVLCuq4vXSGw1i4DqHsvqEG3PmxA+YkuGVs+9dyn1EDyEmyRh2GNRXvJrmES485MbaRic7wIQcMgzh4H8YYpQoPBRQW21XZVrTK4TgKMlUM53xAA4YS+OW246QYPzPxHcYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748314194; c=relaxed/simple;
	bh=SYL5UVceFQRkzNnkxavKg6/o8CUvfhBAH40xkFH/iXY=;
	h=To:Subject:From:Message-Id:Date; b=EA6cIizf2XgJ/IFwdZbOEtAVJ7Wcjhuedr57YdNJNCp+fijmplJ1V54aGPPVuC4L6Pjb3awB49sv+cMQqRP++c5xu2IYzjtizix+snLfhbWTmnaHfRZ+N3+zVotDMXG7qoIb1jGexhA2scXu+GjGKsrjPKQFTjqyMdhm4abPu6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kck6BeOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kck6BeOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA80FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748314193;
	bh=SYL5UVceFQRkzNnkxavKg6/o8CUvfhBAH40xkFH/iXY=;
	h=To:Subject:From:Date:From;
	b=kck6BeOCKQkyw70zN1bydB9cPrqIotV8Vp4hoIe1xZLsBsBNn455wAzXS1jVTAxna
	 zc9nLtA3Dco2s/u9wDLnAxmH85ntjVdn3O1i1VrM7xn3bTuoCC24aS92u6JBwBjlPP
	 xcjCm+FSPqWN6B1ewFk13+U0dNOJEx/gyuVprefex0cNV7GZsX26c7yABZ5VWAiqS4
	 eYazOEJkLdlpwjrg7U4014/gBa1P+UC5ZMozSpo0FlR9G+DwHPtEq7iqLsInxFH48G
	 PKwNccgzsGFWwzN5rrPwwuy6vc2v79HU/QRkhDBqdGMjrBgDRILdw++8yTqAs901vL
	 GUzL2/PRu5lmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630FC54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831419360.28287.4607832298832908569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84bbe79d9668396b2ffe372513496149475f461e5a19f3a9a15ff2ff174ea876
Date: Tue, 27 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748314193
