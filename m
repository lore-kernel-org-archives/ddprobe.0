Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E7B7E79F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707318497; cv=none; b=NE+W06oRZFiFj8dwjbyqPf0qKN0PSIYYMAobGOlW2d5vNQ6wDg7F/vmjXTx9CmiYe02AQrnMvAW9OwgpNhwy0kxiHHdAmig0kBsK+NoYre6g7K9nUVE02eCzk8cw47hSBn59HZozxrFkdNjdNF/L7QOZGxapr87yUEsGrdLuju8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707318497; c=relaxed/simple;
	bh=Z1zUnBFjmgvH7T32c/JEfXeDM6HJmowdKLwW+SztYZI=;
	h=To:Subject:From:Message-Id:Date; b=rYROVCtO+fTLexwh+KXg0GaglTqKID95U2bxEb/TsVvn91eX/AhvnB/gHy3C+7mSCwQg9vdN7jJin+JZYyuaCMr7r1GJbWaA/nuIOZhXBS9XHMD5NRif8TymQYFy2ukzhiG6sl47sf6RgzUM55PylMKq9eUNNZKif3hPR2sKpiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuZGHbzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuZGHbzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 831C3C43390
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707318496;
	bh=Z1zUnBFjmgvH7T32c/JEfXeDM6HJmowdKLwW+SztYZI=;
	h=To:Subject:From:Date:From;
	b=UuZGHbzuAxms3c6UDfDLjOSTXqh4RRbZ3k4sKDI7B44akDfqVpLMO0B/vBtCupKwn
	 4TRSdjNQZCC8ouPYeRqZYCxC5maWbA48DcQF0Yy3vc8o6YqwBZfyNdUnchbFbuL34h
	 eYYBopX6iSfUqzqAAAEARNms7r7Frljyx+q26NYvaCwxiFydjFLf5gEGTzHO4hGLgq
	 00QZQ6pMfiIRzHMOEo/+/9ewnIR22sZ1yAdlhGmHDosB1HIfsYWQJh6h9t1ysw3ffC
	 9yHohTb8AmKX0dP2Jv8vEl1SjLhnMS8K4qB4ARha6odXL6N9epRwUDngHPqSA8FnBO
	 1NukA3FR1FM+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68CDCC4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170731849642.25346.10592141963055545056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8f5b83771a1aa0acccb457ea7da4be37ca90d2746ee9cc3556574d1f750b40
Date: Wed, 07 Feb 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707318496
