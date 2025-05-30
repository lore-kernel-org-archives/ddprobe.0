Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E8322CBE6
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748603994; cv=none; b=L1YF+WoaIEN/KvVeond5AF1qtDXAwl6FYKDa0ISuxh3Bpg+wyEPMcb3BgRUl60pIC7+EXvjnQc2OhZkhTBUWQ5T5sjNSimIe6MOFdnX1zW5eoCMBGj/CB2hyEk3EpyR0uZVCaGBKrfFKp1sN9V//ltufFQsMnaUQoMhHSZP4xmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748603994; c=relaxed/simple;
	bh=IrdE1fJ/M+/GpQYfE0xf0Ta8LgGm/GN/ziF2oRiGDCY=;
	h=To:Subject:From:Message-Id:Date; b=opluWtJsH5HP5abucmsfHXswE6Y+fk0f+g20Jhf17V4ogah2gb/5TR0LXIION1s1MWjNxEghE7aiTvT87YFFgapuZAX7dAG8XAPdUYYBXVDDoEXFULfg4TMAmfBYn80PkWGkZz3CAgI8sYn1poPxX/69G26XDn48NrbFzOJa3NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PCWPPcc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PCWPPcc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A361BC4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748603993;
	bh=IrdE1fJ/M+/GpQYfE0xf0Ta8LgGm/GN/ziF2oRiGDCY=;
	h=To:Subject:From:Date:From;
	b=PCWPPcc6zjD5bk94ON17E8VoAGVdoOh59PEEoHpKL0XqHPJc4iO8BifjvzRc5Pof5
	 ahcJkzUHdhhDYCcMVs9ir2wRMElODy41F2IU8wvTqdEKGnAcDJHfb8c3C/Fnh4qE1h
	 mDGOpP2QCX97judadf7ZNQfRKap8hu/fCaJQ58QqJExi56sLHLJf+d+tIOIaA4w6pU
	 YxRp8fEuEFgXQc2QC4dLQvZxh+7UrgmHtAqZt5bn99wF6Fo3XhcI5MvtANz8RCkHV0
	 82T3h/kCecyJ6u/fHdQ/zgIHBHLi+WPGJv+oSwnRLIf3TKjD0RDGXMDSvZL3zCUgqf
	 mo2aXKFvAbphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD2C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860399357.21264.17731098812685774424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e92878553117a11470ab2bb76674c67a54a0d1ac62bf87e9471982f97fe227
Date: Fri, 30 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748603993
