Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B913C14A087
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 15:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714057883; cv=none; b=NhIAVTgU9G6UWVvymbL8AYzuViEqNl2j2ifFi6+3irZn202dT1aJTZW1kqTncpR7D6lafPQNjRoreZ2wE+QSWbDgCWDQDb5LNGMJthuzis49VUmHOAo7Cn+szX7hvdgU/LJTy87jc5tWzeBl4z+IWDfneMzBQ9wFz7bN63Pu69o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714057883; c=relaxed/simple;
	bh=LdWFXpXYhWc6ITg0HVYT11KILDgMYrgqILUcHpcN3xc=;
	h=To:Subject:From:Message-Id:Date; b=Ov7nSSavvXaRRYcfGLixuNI2OO4pyjQVLfG1NL62JSUynABEBXPBplw/9+1KpwqdCWJdABxb8/cyhwoRNi8nm1HnXIY7cOtzRBkgvCcihnENPXNS/6tb+LJmHagM6Zd/BBPEUv4cVIgzOYqevGfHgRsdnc9xI8kcQMRuw5jtdPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fusL+NoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fusL+NoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D251C113CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 15:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714057883;
	bh=LdWFXpXYhWc6ITg0HVYT11KILDgMYrgqILUcHpcN3xc=;
	h=To:Subject:From:Date:From;
	b=fusL+NoWHcsgdKXHX6/+fdsgihWiZ6OZHX/DpB4fyZTE9VT+e5ROm67mBpEv2tTPd
	 aJ+Pck6rAs5eWmBNmHOYtuDLR1Zt83pN08zn+w9M0EGE827/hdIanBcNL9Xq/9sDkY
	 +MXztFI3acmFBd3wcGakbyRYzpUVArdkB5RwzXl02UjwM9OsmHpnNT2gIBkfyTaquf
	 njhYT8DAuPpwZyUi2kZd3FP4hqPJDXm97pQIJkobWYodiuxWODD69Oa9eZRzT4Xrt9
	 /tsVFFgA3lxsP1iMp78TL1RsSSpi9jXc9Dqyd7TwkoE158gLZOb9AUXHfJthF69ZO5
	 VoavjJXWUSoPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 088C7C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 15:11:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171405788301.18314.14940569912200136636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbe25c2d497ff9235df345954ede40e9ff6d36f36abf6f32fe62707b752fee2
Date: Thu, 25 Apr 2024 15:11:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714057883
