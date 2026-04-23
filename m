Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9E035839C
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776987454; cv=none; b=LxYUy+n9+Kxz5XErEH/S5zVIFylBio8rn+EPwnrb6PUbe6B0s6c2NxoI070zxdLc1DNLL45PD3jLJoVzGJqmlcYgjpho0oR9vqek9bboW3ln59FF1c2vZf1N8PE8IeMN7tTeUq6P4X2ao/mTlkPVOC8KOdKPHcX+AaSoaz9QEcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776987454; c=relaxed/simple;
	bh=J6J6F7BuB1EqfUlGytFQp02xSUbB0ijFsCCP5Vf0pz0=;
	h=To:Subject:From:Message-Id:Date; b=g5CplvsFN9c6n6o7BgGbbJAC1PggqOKwTh2d+Jdr9xSbhy3Te22EKbJRd0wYASfEbbgPE6+bCb2yDmDeCzY8Occ9+J7ti8ph8kh4nDdeo99ht1A830txPXVzOSEgi1cNbZb6JkpdXE3U/dgeu0KlMVOmY5/ibNJgAqxbMgVYGTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaKhc0Dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaKhc0Dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2125C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776987453;
	bh=J6J6F7BuB1EqfUlGytFQp02xSUbB0ijFsCCP5Vf0pz0=;
	h=To:Subject:From:Date:From;
	b=YaKhc0DptHXfV1mbA9rdHPY4LP2HYVVbTVwib/NDS394deMet716jyt3uQPbTlNrO
	 0ASYzL9cqRMwb6w8A0Uo3mR9cnHU/yog+Tx9F3UUSYS32lQScuc+iR4AOZP/lgfxhE
	 PqEZtICrvc/MJ9WO3iZvZrdQ2j6dkqFnWFOQ2/3WPsoXe5o9gkzQcLt8O+yEGtA9vI
	 k4f82b7Q2d7/5kYynPixzqM55f4DKqYNgxMMytaCq/v2W3OInYUkp9EMU96L7dcCHW
	 W8D4VA4qyjLFhDYfgS0nPIPLPMGSLgVYmeBol70YYm6WBu1+QLYECd7yNoyIOvmymo
	 t5AcNMsgnR0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0591FDEE4D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698745368.2645.13639630051679696972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658f567e0e95e26c07c107d9b6d186afa01c9fb75603423fde71d7a369b0f1f2
Date: Thu, 23 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776987453
