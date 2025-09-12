Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214C6313278
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757691594; cv=none; b=dBObj8Z/PugUJxjVbnPij6E0MaHNLywJ4eSidrLOs6bdWxALHqqKuvxMg3umWuLPa0WBdWH0FYD65lKkIAsfxDMDkJpXD5pd2RmPGxyv6+ySBenuu1eEvlOdrha6IQwIjQS/Hh/QNXuMRIzhxkjRKAIDKBNbS2XTd5VgNfnNwns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757691594; c=relaxed/simple;
	bh=FzJ+AnN/k8/CzXBVkdQmO6jvjyWLUjs4TtfUct/OVIM=;
	h=To:Subject:From:Message-Id:Date; b=Iu2CFKVVXPh6F+lah2OO40lhPCnDvaWaTHjDFcQHFlIufCAST9uA+uW7itYnuYATlCL0oBQeInCJlm2cgABUmDkPIBfanhbwS7mpMHUj5ctTZj5iR2DQwKXKtYFFivMS2Jzx9pP40OVQNqDvULmtdy6g8wUVyIIhPBJ++GqQ0hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIV+CJEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIV+CJEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDFC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757691593;
	bh=FzJ+AnN/k8/CzXBVkdQmO6jvjyWLUjs4TtfUct/OVIM=;
	h=To:Subject:From:Date:From;
	b=SIV+CJEYn7p5SifiRqxtkXCtEfm7zFkgfrhlmJ3x01yztBk3IPAlI8ARXCZThyMGv
	 67QkBAAe+8BczWsYSHuYJjSLkIlCUeT4xylXpY2wdc4FKYwrqswejc6F/k1V/Lb48v
	 8E9Fz2IlNGLYVXC+QhGXRNfN350xXqC+blsECD9PPiOUbBSIZEtNRGeh76dknW4Y3A
	 5l958WHGALdGSI5KuBeyI6D2TYvyMUxryR81uTeyY8M7UiIFzFc1pyAq8cZUHY8dFF
	 9xmrV87M1Q/+CADhmY4+/g/AORdI/mCOZ+yMyo9EIna/7aiViEmbiNCjNLbEoCohLJ
	 LkiE8OdVKbeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC8CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175769159357.23820.10836427590597597135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf0dde2264d17a9f3f0c342948814b77c2bc19cfac385544c6ee00810077d7d
Date: Fri, 12 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757691593
