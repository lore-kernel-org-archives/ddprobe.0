Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336A930AD1A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764783174; cv=none; b=VnhzgB9a18CHFk1QE/22QjWAEfCMKSsxTPOUZxJ37x4KOcNh5yHGTSD91AixkaqtEdGNV4sioN8mpx5Bpo2Sde7CE20EF00016KWr1dd1981zZ8BbKwS8I0zk1YtPVcpV+Lh0sSWSTsbB5gQfQHdsHBYh0POn0waW205W5FxO8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764783174; c=relaxed/simple;
	bh=k7pkkWLZcmjD/V9NcAnQApZWMnLeTnZuSdruhVMvlg4=;
	h=To:Subject:From:Message-Id:Date; b=jek/KawylDZw8ETPZZMKxObjpmAHqdMRIklamDoMkJj3PnaN1nniLrh6u/JHmjd4D+kfMLndtHzQ9zeLeHOzKhTTbM/mp3Wgt+D1j9UrVQtonGvdEpfzmD859s2CpL/yRpBPW9hNzpqepkyrJ+rAhzVA1baCMV6eiwmQP4FdHkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX5hCp8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX5hCp8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6921C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764783173;
	bh=k7pkkWLZcmjD/V9NcAnQApZWMnLeTnZuSdruhVMvlg4=;
	h=To:Subject:From:Date:From;
	b=GX5hCp8IubBeD7aXUguHCUoW0EBjBk2QqtTZn9wiCPiFWdbYx76nWNy+yXoE62x/z
	 v1x+tarGLetVz/03/K2C2qwXL9j4zqIHVGDLG7pjY4udPOnu8i2fmjCJJ9Pjd8oGkv
	 8a/lsJFrgX1kGJn7GDD/dEMCLyBONOJNmzY0hJVCE5EwkOHzHDdIJAaaYRoToWqvdY
	 jzo8hmw/Kpc2gAWrrHPXBHSsB8DxnJwXLgcmPbuNp+hWgPAU3k++jG8xn44te+RcQR
	 I/P2e7TeqLnpGvUNguTjKM6vSqv2O/Wpnh7DPwcDAtCnnUufJ+qPNzTAGLKosA5HhC
	 WVewKbdsBoTLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A2D15DAD
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478317360.26683.17187990417772745179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d33d434dd2f573a8d82a14a8b8b150186f24856eeac918c0956962b89e168b0
Date: Wed, 03 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764783173
