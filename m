Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA112459C9
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761173394; cv=none; b=XKgnhTP/fNDNwIuJKiYnS3AJm1c+SYUijSmlhp0ajv3Cs05SY8riZtOEhnvg/9cXQ13qq047mixu7DZXwoloSWA30eun5K4H3Rakr0WrkKxhkDwlHtuR1XuuwVthieDJWzyYZv6dZAvkTZlthmi/ZQDLqKqwqv/wsoJed9NwRcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761173394; c=relaxed/simple;
	bh=uC5dxgGR3YPIksFUegUrpEq+ZqtSmO4R7T2fSPjLWPs=;
	h=To:Subject:From:Message-Id:Date; b=DRtlag0/I2XUIaUZb737BOTA3+mB9LDbWHiQ7b0By2QPPyxgtlHla+cc9OYFBdAL930pOOyf+XPbrVZuQMunoCWqOFmXYo2kM95UPawjoXWQ2ULX0Opr9wRnMk/B1HU5/hWDDoLO+bXAGe9c6AhYY/8s+qgDmHcGbC81MtHnE3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0uOzFGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0uOzFGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761173393;
	bh=uC5dxgGR3YPIksFUegUrpEq+ZqtSmO4R7T2fSPjLWPs=;
	h=To:Subject:From:Date:From;
	b=G0uOzFGGOjVi9B1TI3Rwpr9RnGEUx8im+tE8YGMd5A66pgdXoqfX34byvTnnJBlas
	 ehzI8LAIMGgf+daUFHZEbFfboA86LGkvp8wWzMq1eACQf/ctqgJ/wa19FT2ZgxrG1R
	 5FBAfqXDsrnXrVSFbJ4b5P6qwZ8UTgVmwGVj/ONnG1NBP9soVFyZYYhXXRgsO9BxiA
	 y4SpysC8N7Y2D8Ka/glAyYTjeIez5M3Hz94QYtFtPZAXv/ExVJEEu4sUmT3bXxPg9N
	 wRrB+dh44OGCuRWMujW0C7FFs/TQkIeba5zbhjxKoKvuDnlbQOysVfX1J69euc8XIy
	 mmD+mEoCliNww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E55CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117339358.7087.9038918049000991566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2356dfc4cd950968b6816cb51b5de1c1e3ab4e7450e59a170f39be6b8c6b56d
Date: Wed, 22 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761173393
