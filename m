Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590341C6B4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744921794; cv=none; b=Sn3C3GlfOfMFXLxh0am/VLgpJrYk6uW/Yu9yaSScXiwseSr+S/nCfn6v0bocMsqS1Rs11DlHEJ9B3sAjNOMyP6wQjPc8jUn2uI/X3etqhHBE6dM0B4i62VB6Ve5YXNHJ8L6VtVe3clRCdclFSvSyXrcdKAvuS7D6cipo6ch/W3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744921794; c=relaxed/simple;
	bh=RuAqomzRP4XlSnWGYcFfSR0mTTAxwDZAFOKP1zqEdWQ=;
	h=To:Subject:From:Message-Id:Date; b=Hw1gprq6nKIDcL7GDs2FFpy359umYEq5vuKRD0vni45UARfafcxzZCjOh78Wug2/bmgKvkZhp9bSDnP3pK2W5SPsaImKp5qKxRAlbkSh26EAyBNtuFW716edz+p6IT9OfqLGShvSX+c8ogDaEHY9YuEHfjxP0vqhfOdC6SdUwo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEkmdPlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEkmdPlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE312C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744921793;
	bh=RuAqomzRP4XlSnWGYcFfSR0mTTAxwDZAFOKP1zqEdWQ=;
	h=To:Subject:From:Date:From;
	b=dEkmdPlqBEUxcR8VCLD6zeiwDYadk/ZOVAoiiaayRpBcqzCZL0i4KfJg+53Aadbc6
	 u5aSA9MWhX/R4XQvTINia40p5u23Qu561IpSpXpG/Mz/KUQ0OcdqpbUJTO8hWe22cD
	 4/EdWG20Jsr7I9vOR2b6p+MgsG6W1RvDd9DwjvtMCkaY6M+lb8wFmK2R3klzBEbhIy
	 GoEJCHfdtC1eJqymWTjMEUZgwNRR/2OHDMG2ocLc9BrXukqOQ7uW+LIquNmJRzCRYf
	 VaTLehua2/7fMtWgksnyYaTlIE/Hzqn80kL/AhPEVMD6zb6BeYz7nD6ShONcDUkVzv
	 D+zy8a/je7IAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD9AC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492179368.14437.970641191962595843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab996821eadac45c3d072a6fa682b154920c882f6349d1011d015814b983b482
Date: Thu, 17 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744921793
