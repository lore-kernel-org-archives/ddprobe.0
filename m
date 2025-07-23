Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEC78F58
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753277994; cv=none; b=RM6NiQwR6uB9fDvwU8N0GBoWluopkJPbxdbRC5B+DCQzVWKljU2hG3fjkvDxx8RlTPDW9Xg4kTbV9mQFVB2EpLyJmmzJQWwNbYx6Duepi09KrHGhfF+2mkuz5wGjEaD/dm+JP/xp8bmsyX0TIofTeiKSGgFLn8TlqIdNFXyGm2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753277994; c=relaxed/simple;
	bh=TWfwJUyyupKQSi4G4Jpg62loVjEDG/VIBNjZVpxXAr0=;
	h=To:Subject:From:Message-Id:Date; b=JRr0lxAW3s2mJz8Nf58EbL/3sIdy6IxiXcGNxtnEs0rCJKkHOblBcJWbl6Z5BGhRTRF7uSB+cJLwC7a26GwL8EBdq1HsqyeE3F/FAILvaW8D9MJn1hr69SwgZhFZWNLYSJVIVGFekv8rqysQMrav6GJ1JQgoOvozJvT0u8zk2gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbIyL1NB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbIyL1NB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B11C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753277993;
	bh=TWfwJUyyupKQSi4G4Jpg62loVjEDG/VIBNjZVpxXAr0=;
	h=To:Subject:From:Date:From;
	b=MbIyL1NBeEDGvGegxuSbkmPA7wgZNwh7M+4R62g6gQ/zMYPx4xvXglBPTrqcvwl4w
	 xFFUYmoTWhElpO3ZzAj4p87UPMgV+GoOJYW8g7EAzjEwT1D3f3jc9JLntRF05e+AqE
	 DOhBD/essFX3OKUk59qNqY4eabdTyqmUhUAdKEurd7xEdLt12o6CYdu0knPcjXbAbz
	 z1isL2dzyhnoMEYfzIkqVrEnN0ghQTngbj1c/+gm1CiW0Vrs+cMRCLdNQoL/Ov2ArO
	 U0SUFEBWCtuMyUNFobxuv00HvJj6Eh09h+tpiaHQfayxEwdy5Oy+FzfB4GNwTgn+bi
	 2uo92gSNADx3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F8FC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327799359.2798.13232938713739017467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d9147b450efce8693f8ef95904e5e25f6399b303a5f8d565776e07d78b5ac7b
Date: Wed, 23 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753277993
