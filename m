Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D91210F0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780877674; cv=none; b=uL1ZDLq9Kvor34SlpakZTYI0lF/yWJxi/ZmvlR2gIRqubVgvzzo/YSQBiAd4rSMkbwgi25wQSeFIWIvNb+tUbwkOyxn8FA9tzjnd6ZFVBgtjVYiIu4g87b0Z6JQbGX4U60HoNKn/jYAZTieG7rrjTLRmcBGFhhUldm22JbAAfyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780877674; c=relaxed/simple;
	bh=xCSvAbSAnaxD+7m9PMypXTgooqQwsDZwF2Xr5c4d/J8=;
	h=To:Subject:From:Message-Id:Date; b=VRLm3wTc8TkqNB9x9xzt1ZrKSjuNtfUPl/JbNWlivVSvNuM2Q+QykWNMC8VW/qPLLU8BF7Wwy96CgLHqYeAY0C7nDTnt9FG9ssbZKYyZIbgUOKw+HDhssue/lSmlEEdgBLd179l3J+5zNmdf5omGw1okpCyBtgBD4q2+I5KcQbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBO8Bj08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBO8Bj08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7190C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780877673;
	bh=xCSvAbSAnaxD+7m9PMypXTgooqQwsDZwF2Xr5c4d/J8=;
	h=To:Subject:From:Date:From;
	b=RBO8Bj08lUUsXkG5sLgidl3Xhi+JILpWt+j3DTMBjzFlvxA7T3GzXEzPVJzdIBiQx
	 J0TkJbrA6D05MI0bGIQR7L/pnALwDgz7twoXbPC+nLKKfkWfDKfCq8z9Uq63Pve88g
	 PhgujkwS/bszMclKMoNkVLrk7D07EesnIMdx0ycfrZoUqjzyyPvHBalYH2dOZBcfR2
	 gVCnr5jWEvr0qTPKCvjmZ3QdotJSbzLGWW//hznNEyTgFHsommbYYR/mgJVzBPnxKL
	 vvvki8wKevpCiaAW/ggB4H1Y8LsKRgfHN4FDwDDOI+WbNTgAj4cvhfGdwYX9MEZCk2
	 M7XqWXJL16ftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2A7CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178087767370.24302.15967843649998683998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4407b6c90790c1fc4dfa092808591522a35b923e7b353c6e7611c84b2d398265
Date: Mon, 08 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780877673
