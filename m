Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEAA23AB9D
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765134174; cv=none; b=kTExt2nvHUMAkPetNE+4telFjjQ4hbsC8UyYDM7eyYCvt60CjrhNPMTw69+hYBtDys1zU3NY3ZtCLnyJxMoYO4jBa9t5KXY/BmYRPIQvXVlDc/0HKEM8j5z1MrMTOW/2xGnloMkc6yNcbyaZzYKLwv2Ta3Ing0wUdOKvF05DOc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765134174; c=relaxed/simple;
	bh=THb5HUiegSOWcyvXqbkN0mtuPde26syNC1StykPb8Zk=;
	h=To:Subject:From:Message-Id:Date; b=QUiKoi8EafjKZ3eBpWv4CyGrqri0e72CVRCmehWduWDlbhHWO13/yAfwQgT54BL7cnJzdIt7nzLsLhibQdnRJ1aw3TAjkrJnbWPdPad5gj6eX16XIG1D8CziIHJs0bLBnmroWWcBrVhUjxi8cqeSFTixMpycG6SDK1Q/3D0htCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ9NnZKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ9NnZKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC385C116B1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765134173;
	bh=THb5HUiegSOWcyvXqbkN0mtuPde26syNC1StykPb8Zk=;
	h=To:Subject:From:Date:From;
	b=dQ9NnZKal55RlCM2LfAjzw2IqvSUhSt+nD0jNuHg+xYzmd0sPp9aS911Bx++Dp3jt
	 SaBoQEu8JTwKxTJlahL1BOTP7bydB4fIQosKeHRy6tyyoZXA6f6TLZ3aM59aXlQ52d
	 wXPKmqz6rsDkDMdPp5xR0PxHMz1OjdDP5HV8l8hWjnmCTJSZX5RLwMPr6RiJJZX1vv
	 oUdTDQZXJhZBkBE9Tsj7+wrQN8RL8ZSzrQMfdREJ4n6bTsN4UeFO6jhQYzgIemPlh3
	 k7DnlY+qjaJ16XgzQkRBkuKXi3xGdhAsRlU3Wdr1firwNaqOLgyWE8pj+iIa4QcJUZ
	 gmz/sqW1pXvaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C1D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513417358.17518.2021465614032187708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee3bc4cb5a7d15a0ff2ef5c7cb499962376b89a165a988abaf3546b3acf532a
Date: Sun, 07 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765134173
