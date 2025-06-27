Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC1B2D3EDC
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751015394; cv=none; b=lrBbX7/De2Meik7iETPFmdJwQLFcR9irVSEl/JuasRzGl/Crr4Sc61UzSiEW06PB/zfAgqwmL5xT4K6anoJ4TAwa14mYjaP72R85RsM3KA0dnyisZ5byR8tDtAjVtwL8TMdXle3eUkZYeoQg+lXgSV2qungKs0kx5hZnr3TJCec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751015394; c=relaxed/simple;
	bh=/Hd5S6DbaUzy3XQjQTSuG7HGbFSmos4rkc/psrwr1eM=;
	h=To:Subject:From:Message-Id:Date; b=GLYvdve6snxf7bcb7lMY2yO9eJ8hfqmfEgRWBL19Gzo/57eYzqYoiImuDnkZCA3m6tKDgLfZtWXvKC6Q68F58rYQxNw1qDC3sr0mlIUW0jZ+DxmCyDRFRkbjDMC1EJcl/OfISMXkJpYJWKvNkXcHJmsgN68u7ANehFWfXARmwLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umhe1iwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umhe1iwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEA6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751015394;
	bh=/Hd5S6DbaUzy3XQjQTSuG7HGbFSmos4rkc/psrwr1eM=;
	h=To:Subject:From:Date:From;
	b=Umhe1iwdKvlcFdgYUpG4mzLbuCFkGYaR6Boe7D7KBW7+fWueyT/bAF3Ty6WhTengV
	 XChcFSW5WmSdVxOs7JSqreHlOP0DJ7LqkCBw6Pmqf6ho7s3daY+J3+lyPTeg3Q+AlF
	 JRw/WOxeCr9Uz8QJkYlPJnca+W7EXwuYs98YRh8PBCvAV9E7tgZauNa4qF8HHpJeUx
	 YOuAsnrWETgE7RAUihl0UK1ZeFHIMlFF9JXGh3w8Jr8hT+AVtSihIzu0wlXZfa7+f7
	 5rgNRJgDcrgRK8GoB2OJErgyoTgDC29rkRVVS0lw7kBDpO3exjieVDcg6ucXv7eRwt
	 4K0KStUOwBDVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEC1C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101539376.19311.14482680293726868228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2a8931f51793b06301f7c0908be7c08fc7a2f2b85718e30318f47fdc575f91
Date: Fri, 27 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751015393
