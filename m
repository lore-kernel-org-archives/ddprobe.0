Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABEF1F63E0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736270754; cv=none; b=ObcHTGnOKxdmfjzlYZLRIKs1UjxXIPSZ5ZYiNjvqjoBfuripzUQzWsNky/uzBMxJsgbCmhdjpObhY10+E6pYYQGSshzjPWwaMsjnXd+bxb3YfQnFqaSVzUvIqx7jfBMn805Gj8PyBmgHKes17TL7xRPBgiANxlK9pSgBlzmdVps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736270754; c=relaxed/simple;
	bh=9NWqbcrjgdKtwvPF73R4afpXVpm6qWC/eIW89LJFXRQ=;
	h=To:Subject:From:Message-Id:Date; b=pFYvFWQ2uCwe1Bw7of5dnZs5ghJ/birdZP3UxgYpMzTMo6vVCZ4TOyzUt3y018NkbZ9mthJRc2IjvaZRmD+dkSgdZk8L4QiVJ4p2kBJBigIMLr7F6t0Xy/sdKh/1C9vjwke4UlThGAxvDYPGu/o7O604f9tuKG5FPDdpbM2370I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXLQnQqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXLQnQqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70AEC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736270753;
	bh=9NWqbcrjgdKtwvPF73R4afpXVpm6qWC/eIW89LJFXRQ=;
	h=To:Subject:From:Date:From;
	b=LXLQnQqhisDRXeaZNYvI5sK7Cds8HMHuwL2NSSpJbm9ciNTtstAmO3VdVjkRcNUEI
	 JHJBCt45f38Lo7DTjbj/qfZmTmR31e7cAWU8Y8SzXbypxKp+SCJi7RvEMDyoJ0NC9o
	 B1rSP+W7ef+M8OVNpIBw9tfB499gJsFOJ0x51SlP+7lMnrL+qHSATiokp2q6xp7Tja
	 ZWT4xrESwZf6J7rEJp9962l0L9SDljkwyj+IaaEMMCdzP3B2uyATRDO94bpeACKq7X
	 HxZtM/HMy6UxbD6Obr1k4cL1aJkvXFZb++/oLMbrmu+OLQVTez6MX7MpZlYrCtj5vo
	 P79u4HPdW6Y3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254AE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627075358.8927.9589335728049887456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44842481f1bdb9d54639d62ad21bf1412a2846deaa8df975f88fbe47091994a9
Date: Tue, 07 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736270753
