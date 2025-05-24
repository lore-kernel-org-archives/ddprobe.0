Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DCD433A5
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748123394; cv=none; b=un/iVq4yfrsBF3RPLKyiDIMSLYkMOjiK0oY2PQFSf9W6P/7ufax9bfyVkOA0bQ8V7YqdJuyb1bMnIbV1+B5Y/yEEmE/gL78B7gg8HogLYsOnEY4B+emPUoScuN+q1IQPHuLeRjY21kZOpQ35/M2HRBmNkNLou2V/7ndEvj9DnUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748123394; c=relaxed/simple;
	bh=zbwEE1b7NMPjEjtR61pmHUrYXFq3wErfs/DN4426Hwg=;
	h=To:Subject:From:Message-Id:Date; b=myIyc89NllArZDxQDOsIAhw4WZqinzRLNfiOqCV33TJZpkO367lScG3TjeMvr0okkAyiCKdso7ToBBKaQiuK6cIpiAsTmZUUHrDGz8sMG3zMOXX0ohOM8Ycs3vPgxZGjBxlFpkSOVdewV6v9ntTILShLGOv4PuIJfovAG670vMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SocPVbNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SocPVbNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5BFC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748123393;
	bh=zbwEE1b7NMPjEjtR61pmHUrYXFq3wErfs/DN4426Hwg=;
	h=To:Subject:From:Date:From;
	b=SocPVbNovEIocQumwdytHqtsydUu5eRUkzWFHTB+w+AR4RJTAuQvHEcOovqTH/qaE
	 RbDfVzDGKAPwcjtlOfvS9MY8JusZEgiAfv2Id2ksyGSudoWBE1cNeQozTFHK9CLtlO
	 PHd4/xfk3dZqOcX8jyf5wRP+TKH0absjhZm88V4qpm8jJ09nCWhh7EZA8GmVb3Mm52
	 PPZTOr42NstXvvMnfZH5KdvK2Io6ztnLefqSELCgpSFAxbVQnwo+3j07K+toG7GrTl
	 +dCndm6i7F8QeLcVrZK91dbE/V+134i65XKevA2KEXHiKmG56oRcOiNgHV2yoVydXr
	 mEYfxOTl2iz0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C380C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812339361.21009.7959504711345837323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b4825517082ba1f27832bec45932e1704d96c158e8b4068c4c4aa3597df8af
Date: Sat, 24 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748123393
