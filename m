Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0631327E5
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717660643; cv=none; b=djITbXZkSrmbgljsEt9lVvrbGW45vj+/uCXyumN1zqxli2PnB0lNxbBtFZMYhbRqcHBX1s/SN8xKgL2Meaj8oGMdxocwLFXHavANQGA1VSGD8jvYU7Djnu1LmnTvHrBW39Bie42f00ZyA517NNRy6f39P+cvFxoKQRXXRMCwPo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717660643; c=relaxed/simple;
	bh=WCQvugO6guGKdbkfh/Tx8n5XNdb40Qd8GqY/T4VRTMY=;
	h=To:Subject:From:Message-Id:Date; b=eE2RZzNfekVxL0rqPL/6bVt4CsoqfF3SXJwuYsLVLU/nliRsy0pXgWRIyREX3/QWBlfnVUcUkXRCk5CyEE1MYiPNoaO4ZpJ7VEREEZnXlaZBl3R3RaYkLyEic7ekvhjDwYV7/hF0OlBicfel0ZyWt1Mi/fbWibsc2NOdQGyph58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOn6XVUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOn6XVUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1536C4AF18
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717660642;
	bh=WCQvugO6guGKdbkfh/Tx8n5XNdb40Qd8GqY/T4VRTMY=;
	h=To:Subject:From:Date:From;
	b=HOn6XVUIFXVObkm6Wx+9N9PRFs5mjiebIon/OpkDjd3FmNugEEuMBNyTiuotu8cD9
	 oeEs+YZdBu33MoMzZ4YFpL/WbqzTwwQWjGcb/yHWxvFOrgMFqxzlg/aRnLLVzgzDY9
	 9jrQR7BTOUVBjgt5xd3TvgT8umZDtmK74+IN/6cVutQm3vmcKNa8Yhp7m2qJ36c8LR
	 FTYtgDAg3TN6oKusb64/0U8OFMWniKJ8gVZlN8wmgRJ1TF4gHLpXvURv+6gb4sAWrz
	 sW6nKvlWH70wW2E7xZ38+llOiQHrzOSjtiofyI3K4k4SB/5ZvdJTO6cYJvi1nsGlmU
	 OmLU1c1kEtLzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB9CC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766064277.21012.9155763178581080604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ae15a091484b14b4daea1a189b7e6eb58682818c68f608ada499037e5e07df
Date: Thu, 06 Jun 2024 07:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717660642
