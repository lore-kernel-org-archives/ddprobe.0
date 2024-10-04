Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5621E378D
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728062754; cv=none; b=mNHZ7CDkBans6ryAa9qzfWaOw2JguWkiNEJgV2LWB90z6PX39Aesk9ccFPEIHzgC0cabW13ySLBXrbrkBU8RouUm4hXE3qC7w4oVOzNhKV5tB9v8cUJrqCGyViW4fyc6UwZwQP9sH49p9T5xHON8IXuJiJXbUDeQ8M2A6+7T2yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728062754; c=relaxed/simple;
	bh=DljRd3krpPs9VMpooX3H5ktuwl0zn8JS/YyObRdpFh0=;
	h=To:Subject:From:Message-Id:Date; b=oevwlDJlkWDuljsVd640CNAALGt4xHIkT3eEyHrh8RboYIVjNFORCv7hCChHAB9JkPcjw2vJWVg6NoxStZBkNDbmKT392X4df/Bnb2Dur38r9MLhchiXdZh8XzGi8uXIi1YOJJkzde6qjkMhbPkh9/08Lvs/b6QAtNuUo5WSjlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6umyck6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6umyck6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C171BC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728062753;
	bh=DljRd3krpPs9VMpooX3H5ktuwl0zn8JS/YyObRdpFh0=;
	h=To:Subject:From:Date:From;
	b=M6umyck6Z+VgqPWaRE050IubiCmFXUc2HZBZzIJDBJtlD4psWxmL788hy/TpVPAqm
	 P4cg4R2+kQ1lZ2fc939rCDdanyp+2lEFgURY6LPs+mo5X15tbYD89SrFrJFTO4caWi
	 dPPjl9Gx4gs3NWpvD9GqosmRc8p1UGOdB/8zXRVYgdC92WmZR6FbU7D0IPZly2KHDg
	 yzuIxLmnHBIKC7fBt4l8gTVEwKFskjIy/QXJqQHkwi6HXQwDJuPgs03v913JG4ZO2T
	 ayRiqocGI5Os9JTm5/ErgtEgozDFowgSTmW5G5hhzVMuSb02KzjOnvxE0mPBudbMLE
	 X5SvlRAgAe0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB1CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806275368.15176.10247394038432038202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde8d15ab30ad60ebd2b8fe4648d204a65e4a32c1f72753a34b6fc0f0b5a6283
Date: Fri, 04 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728062753
