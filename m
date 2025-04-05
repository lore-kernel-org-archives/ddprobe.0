Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D8146D65
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743887994; cv=none; b=KloC95YH72kRMQDAOCyz+gul9tz8dDvWdYBQuYFwihg8igbFRjTaVH3helMO6Jd74NLx/PlIIPdnVtw1ZVgfmw9qxeMm8md6fh25qDFsahSgQ5KGr9tXiA+yHDDkDbOrHks3at4UWwfuFqdS/CqREhGjHwipNnRvViFCFly/Aow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743887994; c=relaxed/simple;
	bh=3galRWxPM9rmyToFzLqE3UgEBbnhMCZTCVi70ZshV3A=;
	h=To:Subject:From:Message-Id:Date; b=LJYxTTJe2WUUhq+KxcdGpE4GV3Mt+/cV+Mb+6JWn2Dj7KJXrYCDyw1tpl+cKCgxGUOQTbJvOi0+ixJIoIE38ObGcGuzdtG02zj3muIXwzCJrYSZKn9GPSUwiWEZPUTmp58uCkaWOVOU0j/ajoi7yk0XX8pKGgcL7jiCp4rpcqLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7+yftZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7+yftZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB842C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743887993;
	bh=3galRWxPM9rmyToFzLqE3UgEBbnhMCZTCVi70ZshV3A=;
	h=To:Subject:From:Date:From;
	b=Q7+yftZ3gAEee5kY9XNeDdlWe4lIGYrWWLmDrx7GzX5hiOf56m3iwm66rbsVQeK9Y
	 cWT9SyLN4YpJKBStWrXCyfTe0UyE4PwiCVjcRJ9kSZA/F6sIKBcg5df74Pl6S5IwIF
	 9HjAkWGz/NIdz5SjkmvFSPlkHDBmSSzLvcsTLdLln1ebDDnLkU+N2b+YvTUnmvan5H
	 SXeFO03Beb8MUxZV/X/L1ddxRO8/9r56mIwdF2XBg8duRi64VR8EnWEwq2bKX0wXx7
	 6RtfYdGvhq6lD2LEnUr5O4pWqAMP3cDzW8K+afQg4e7In1eos1CNsuMygHPhLpnatH
	 JGPz7ZvKG9s1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C5CC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388799364.19192.8510716359959394807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6964a13609cacf4a1619561ded3e6e1346b86faa1c54e785cb731ad70dda590
Date: Sat, 05 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743887993
