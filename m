Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5701494B5
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715866943; cv=none; b=BmnTWyJebb49JafW2Zr/E9lMyjqV1rpjaAyIotyPUIiEZDV31buYMtBuE0IPEyAXRqMXsRE4C0pI3q90pb6zfNqNw7Zs33dWzZxuYPbK8G/+KaE8HoCqAhz/VT7QHRAqueHNBiBh4cw/Cp4ai9h9zjfybCn1FHwGkDxZ4dzgrPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715866943; c=relaxed/simple;
	bh=QRjnfLp8pI8FS66YylEelGfdf64MMevqyVOrpDGyK7M=;
	h=To:Subject:From:Message-Id:Date; b=mZXg9rBbHh1lZmICxYp+Fdkk09MAf8o68RKpf/NkmWHM5IJrVtdIW18qiatPIaRpAzcb+oy2dczq1d9KnF9jV9mBet3tW79fU82mg8tLxFr0hWHjhYAk6vh3AiOWi+iu9OMwkJkuqnelUHm53vJOXn8sPZ3AVc3Hy8BNYStnJ2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MH9fgeBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MH9fgeBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5311C2BD11
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715866942;
	bh=QRjnfLp8pI8FS66YylEelGfdf64MMevqyVOrpDGyK7M=;
	h=To:Subject:From:Date:From;
	b=MH9fgeBr9OsvYGZ9TyeS3PiXFyhEuSMI4ZfOmsf6Uxa0wploRG8sriGq9Jy4PiLNl
	 eO8ljPNAgDYYMvtoeTOYZKeFULPc1xc7GXleNEwXYtbS+qOTvaHygN6B5BpHaTSimV
	 rnueCY/YAg1GztvWY2lApZXeQpnLR5DHBIwvKHuMo86AbCCUYRHLpP4mdy9b3VneuZ
	 wHTRkAiBicjI9U4ytpJxqwkVEDjCknwTHH+PRKusO3ULR51z07prI61AxQbCuUz9aC
	 AIZ68BVP49DqZkx2PF0rJw/jiwiNY6VkpYEzvLcBzf3co/mhA6ith9buKa8ioioSG9
	 pU0Mx2WnLv/3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2767C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171586694276.2249.9317839136318785187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de88404c44465b0c720133dad9ca36f9de47e13677b1bbb05644ba3ef2252eb1
Date: Thu, 16 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715866942
