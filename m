Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5183B637
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727010954; cv=none; b=jFvDIWEUppjFFkJHSszm9UgS6PVMoiuffQK9i+6EToWWZ4BznKOzx+3FO+CJphT+cw7AJrLFc2EY6xH9HWRFJ8R0vOQpsYeQITqWh1g5pevoLYEbSo5P5iWF/VNUR6WGzsTOZe/8Qy7wnQ/aGorDqD2GO7HHaXedwG+TTFl+U+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727010954; c=relaxed/simple;
	bh=useYzy4ByPUafcYMEbu8W7GvRDWDypMqtX1J2CduxNc=;
	h=To:Subject:From:Message-Id:Date; b=CZC6IzJhgNjb5NRti4d4wGihLgKettLqcwepBCTDby9ofPs4zC2jXwyR2jfAsj88ge41p6l31coj+8PVT4AJ8aX5LhrJNFw4NRmYs0uHvitQt9nGzy7E8xH8zhte9xPQ2wSdIqhGyiPGG9ZshEG9+otuTs9f8yI7QOUVyAPDuU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6rgHD6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6rgHD6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B520AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727010953;
	bh=useYzy4ByPUafcYMEbu8W7GvRDWDypMqtX1J2CduxNc=;
	h=To:Subject:From:Date:From;
	b=P6rgHD6vkT3HT5cR7Kj2mMdSfNuCjkmQifix3gvMIoKFSPlJKUPQKU/99G5jRYLVz
	 qeWWtJSD3GGMPsO7krcSwvNbhcXfqLDu0JcQb97wKziuUOapdkxbwvl6Y38kxMruYJ
	 myBnyG3KeNJtpYezk7iVJv6xRDOdlsTMAdvlZ+fXSG57QnBN10j7BSXUDOGLCu5282
	 LflL+BkhOyC52UxTjU+fFbHTzVczubQcq2Mu8kFlH2qNkSsuJDdBOZUUU/ORS7Go5d
	 XWYVgwZp+MJUpnpIV0o/m9mPLPEIBgnvAEf19/YFm1+cYQSA7VhUhnQDJsr2MDReaD
	 7MMJStBx0ObDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BE9CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701095358.18354.1786861225242499441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca733c8386d6649f67a674777fdf484ed6cad2b18d07eb2d1a8b333b6e296294
Date: Sun, 22 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727010953
