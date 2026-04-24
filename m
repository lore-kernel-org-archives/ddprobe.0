Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26224388E41
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777027054; cv=none; b=so1/W4SRE6oknoQFOQydeCE2iuaKS5ec2zsYjCTceMZE4OmKKNsvpqIzOy0TEpUF0BSMrJGJt4Q6Lqal5SMl3fT7lXMCABa4nNxDhq/sve9yY4qecmGMxPwJ7U+/OgyG1+5P4ox+x8VAMczz1He2ftJGxeWabemhN8JOhwkx1go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777027054; c=relaxed/simple;
	bh=UJ0c1+aphumN0Pu/vJRDZNKq0hPqSYqXRqiUIvHsLwk=;
	h=To:Subject:From:Message-Id:Date; b=onQsSSUq5wJDSBbeVhJnFDjiAEQXk7z4ov/dfAD0D3AGEtA5sRzLx3Za1eM+HHvWRbJqmG55wE/7arHCLMThPBrU+PGKlc3pNJSYqIh4pPQ4mOvqeUDUTsPfnQfBP3FDmlk9mtgHUFI8YwqV6yt9HWMWyZL7th7geukrpt00LbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7y0J5Lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7y0J5Lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B688DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777027053;
	bh=UJ0c1+aphumN0Pu/vJRDZNKq0hPqSYqXRqiUIvHsLwk=;
	h=To:Subject:From:Date:From;
	b=t7y0J5Ljx8PqjBQHsbJmv2fxqp+8GktgEBQNQOfTNI7QXrBbpwosE+csCt96ZONDl
	 X7gfkAjVXjbg/y0/byQ8EON9V2j2Mq7Ipe5ItsHKJSfWZ0J8ppYy38D1r/nQSw2Hkn
	 b25z0Hz94yLaCBS2mRlbvxIuuG9f10XVscfYsnC/Y5H/Bg938Gsvh4uBj14HpaiQn8
	 GMOfPpRJxYbBZpfN2bZ+gGN51+VHbBK6khbWeNNlFWmoMVeypXFVEyNm8CU7Khnu+c
	 nxAq4qpnsdvzSS5hqrknCtmhwhE+N/iGvZGweZZsqnuWTHaa1Ar49uXXm9HxLkOhfD
	 cGJitRiOXbxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0B0FE5204
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702705368.32609.5425067092529959238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852822ebba46b6f025d3d8eeabced0a698c00d7bac6a4906d7f00bbda1a17e52
Date: Fri, 24 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777027053
