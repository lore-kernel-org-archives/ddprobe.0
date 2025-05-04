Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB49219FC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746380994; cv=none; b=oDIlnqcIzMG8RJHZY06soQ6CU8ZS913uTHb4pjF/yXhQACIMGUp6jEDViAiCAU6qcY4cffy+BOrzujAeS0w59Wa9ovf/1pcshFyvI8gEprFCbC/SbdILVRNzU+obxfuwqJSZlmjJFfDGx4wgufkRfYoEmWSOlKdWZNGCPLxCt30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746380994; c=relaxed/simple;
	bh=uTHX8u2pTdu1o9xC5L1Rm5plu6osjFQ6GbOyk4KYQ8w=;
	h=To:Subject:From:Message-Id:Date; b=QrBUy11egD11q1qhYMBj6MYYKAuZ9wYYTX9IumoTMtreAV/6R7S/O1Cf+f+ifmA5n6C9naSUFdWSHqqFsuv49JawzTvqxOp/oR4Ryvpm6/nz4395swNO+HzXu+775sYRM+QCKWOCC0t3MdIJfaeipsSZozfh3baeo3wP9LU9xbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/YSXOuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/YSXOuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D586C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746380993;
	bh=uTHX8u2pTdu1o9xC5L1Rm5plu6osjFQ6GbOyk4KYQ8w=;
	h=To:Subject:From:Date:From;
	b=d/YSXOuSfNZDhdfJx37ZGx2PPMDMVlSfpz6PWZVFkX9tkLNer6MByf7IvRWroGsTx
	 ngjRqeDXDnRN3HyyGZntANBfFT1yEValMrUOPxrXh9A0778zdE5/2a/kKc2fKThoFX
	 03yomSgpv4aaMXBbreycWzxCtGA9kErMbkrEu5y6IKpFKTiy2w70i8y/T0HoOK5ZPb
	 Y+q3KdsmBXL1BZdm14VgjtR0wt+DFbljODzooHE1EJtCCZfNTZhJXxwd8tPfy6tptG
	 AmoNShvaE3SPgxzTLyYrCa3thTfZjNAHYBLPQ8hKoOhB6HGQpEaBCF2QqgkMqmIC2Y
	 8wgV882MtXTbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA0CC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638099357.13327.11031971674709781557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b602e400aefcb16d45ed6dfdd00dd694aed5f6eecf5653097f50e881b8ba4a5
Date: Sun, 04 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746380993
