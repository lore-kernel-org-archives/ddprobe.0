Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573DF2D5926
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771069494; cv=none; b=t9jkzi2IctJ0xIqyR+75tWoU75V2Nj2ClYdTQjwyNoftExw7AqWaiU+iswXDBgIdDgxh1Lbttc7tea257VN+m8uwJKGPIBzZl9Xb6zx+8jM1xW4KwrKTje73z+Bn+hh5dWAEiD4SDwb1baOldua2960ULsuyiQOLxX/cVq/uKBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771069494; c=relaxed/simple;
	bh=X8n5/JTtHaZmS7QR800gbAHNHLECPFz6vfJC+T9CY8Y=;
	h=To:Subject:From:Message-Id:Date; b=ooasw4AJQ3zYPlZxppYls9xgmlHKULL8TOjxpY4WoESQIftBgbPOVnKJEGGgNNYVwOfr65izAQ811J/oS5qc5lklaMCzol4AyRDgIPrXtP0BYMJ3jxjPk3cLNcbwr9/65BPUQ1F9PPuBj+XStKPA+D3mtfL+Ws1a2zlS7XQaPvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6vcxIWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6vcxIWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9B1C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771069493;
	bh=X8n5/JTtHaZmS7QR800gbAHNHLECPFz6vfJC+T9CY8Y=;
	h=To:Subject:From:Date:From;
	b=h6vcxIWTzpUip7qJBNLOkvVOqQPs1G2RJpPOD9VrlNHv8wSukMdB5hfQIf1L9kBxx
	 2f0IaxV+WMRQZaNPa86hd0UmfAfBi+WZ9vsPz6Azlo633SNRUZ2TBC25VVwSZOM6zV
	 k8M2gZRZpHJ7JoBvOuGTx0Kym8eImjDOb9AxtnojiKkyTmUiRq3A1fXgkRDO11ze3B
	 hJJ6wPh29u6KKsKfNgW6Gh1DB6oDIwEOMkXPLOr5yIM/hc5bF4FyKDaox0FW3pwOXb
	 is0HJO6SZNAOriK/WxCGLiwED8wZ/ZlnT0BWAXoLCTKDaV3DSGrMPfHv78d+HwPBUy
	 GWBUPdQ/RwzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0363EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106949363.2475.16885627337619214258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022cf570cb14eb50a1f77d7f2c390ff0acf3083862a313b45b9002eb5e8a0a23
Date: Sat, 14 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771069493
