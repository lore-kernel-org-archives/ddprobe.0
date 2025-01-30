Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471BF33987
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738218354; cv=none; b=oJixVRyFpw/1x0g6S/NjyPTDZxDIcQa1eGREaoRv/W/LOmUzPYOl+NZ1fchHE+OTckbSlQliORkYn/tQ9NimkGCB9s/zsJFgjzgpbWAH/hpT7F9dr5lKC+bMgZ+StD64L37h5VrXKrju9fSaO04IEKB8lcgG8rHQ/ZYav7tI3oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738218354; c=relaxed/simple;
	bh=5AemtD2hrgbJ/fjyGnLxm+t0itCSoxw/w58e3xOTrtU=;
	h=To:Subject:From:Message-Id:Date; b=Ssg5JJxlF2U42OvL9Cz2oAvgYsElMq6+xpsSimy5xbHqWGwAPzGkeMOGWjVfCDOZmI38ikYCc/dzsejwE6SRcnxCotiybF2QcohQL0oY+fHgVxeMzpkcpdHFfSmbRnR3sR/Q5qLZGHMvCUAi/emaabKC0zscBHHVxSzg6/HpRyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4E+YeE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4E+YeE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFACAC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738218353;
	bh=5AemtD2hrgbJ/fjyGnLxm+t0itCSoxw/w58e3xOTrtU=;
	h=To:Subject:From:Date:From;
	b=q4E+YeE5oVOOt2THxrgj7cKEw/VDXVWwl2Ngfr2+U+Y1Ie/OfEYEMGLShaqKOe9up
	 ZX254lMgxF0K+JjQfTfsuU4/hzSiC8sfnBWj7SxCw1ls0Yx6/h/xodq98W/fNFa5Kc
	 0jWT9R89Kz7sW93ZENb14nNEqICoXJhmGqRgCBzKh9IiNnqIwI4ZJTtPOlycC8p8NG
	 ZiyDcQx4Kf2v71vhZZfUv8C4X4QFvP5ZXXxU2JbGLjm1hoWA8MF+pr4MsS3O5glMeK
	 2g7rVeiT7UhQDcNvE8Gi8B9hax/cHvI3So41y2xz8U5uHmyDXJ5x5wTMF6hI54eulK
	 7UyzfLHczUucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99129C0218F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173821835361.18949.1714787667465596444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b2d731f09f1d29e74522b6ec39e9a114e7c8f2b75b18ad56b4e6a9087eec4d
Date: Thu, 30 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738218353
