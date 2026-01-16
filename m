Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CEF3A1CFC
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768594434; cv=none; b=KXPeVkgFvc3LF0OCM56kZLBwJx4w9O9z9uKwlXuOuT25RC0DSyLjWG7uV3F3MuggQaiGivZmycb1awn+dfy1BROC/4vf57yj+1jVey4Sx7sfMGxOuZ3aCaz/SruJDg44S99891PUBHiK/tGOVr6tvvAbGJcnG50YtOu+ZE7Jqws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768594434; c=relaxed/simple;
	bh=REmMJ2/3Lz3gV0H4u7SF8mo0JQgN87EJ5Nyfo3ulYBU=;
	h=To:Subject:From:Message-Id:Date; b=PylaQm1v/x0FYYb9Lgtn6XEDRAAdmRfZrV/bROAJ3x+CbFNcOvyyZLiO8BSDRV/mWNUVKq7MKSGQbacZDE+y51gH6Cd0vQM9LyiSg4Yo8YXKs1+kr8jLFxjhxNLi5Vh0LhSJrwWLr61DxpOACFesuxAJB/9mDLtc0v15HBb4FFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wm+aw8az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wm+aw8az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41A3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768594433;
	bh=REmMJ2/3Lz3gV0H4u7SF8mo0JQgN87EJ5Nyfo3ulYBU=;
	h=To:Subject:From:Date:From;
	b=Wm+aw8azw4QHczfyJMv8ZGUJrXxk5JtuMKcikVlHnx9sqL2u7RALrjMhOI5nHM3Uf
	 SQCoSgnzNRXzInPpAmPq4Bv1j6TWw0L0YYBmJRZ95jFuoKcQ4b8fgOuYldqrSMqh4B
	 VMoEzG4A7Ud1UwoC7/GlAgndGQgb8NyLxfkwGxrZUT9C9+yQTa3qQptnFSn+01LRWm
	 qb0dxIcV0F2XJJM/XMOQbGFxmAA89kL22azjq6l+AzZqUm9dbFm86LwPAAWgs+QG6h
	 8PWbL1AYvC5h3+Ar+Y+rh6SHQYaY/BofItJp3JhSoFBEBkd4f8XWOLmi1HBMubY92g
	 OFcREAD6h+B4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914DDC982FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859443358.20259.11504262118109338344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af4c7b45144b2092a8f23a33633dc5e7bcdeea77b4fbce380c9b404ad37ef23
Date: Fri, 16 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768594433
