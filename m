Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67012D6623
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757623793; cv=none; b=o3klgXNTaljiRXIUnOaqImNToOgpsi5v8Cul7QHzNtz2+vPhA89GuzENeC80RJCyBOVKuCa6b0Dj5r+HJHQG2yL2JTNaVYEZM8/FEC36YWn2yyG8PLGTRYAkbTK1JWRbgkLnDYBzSE7eKnF9LX0aSJtyrJKCzI0Z6kWQvpJzzcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757623793; c=relaxed/simple;
	bh=1cvzjzVrFo23wzfN5lOJ7mWQ9eJcAFhhr8w9RMrqvus=;
	h=To:Subject:From:Message-Id:Date; b=awucj8B+X+an4wfOpcDL96sIjz719lDNweCjMKZrbwVrNk+1OAqd7t+oAGYsxriGHGMnmGf5jNRQILsVOjo+2mbreQeclgtlb9KePDXYQK/hYhl/Tk4yK913yW7lsz4pevTpclti/f0orc6aI8W3DrFgv2txVgKRRz+Iaaai3Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBgrRDX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBgrRDX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757623793;
	bh=1cvzjzVrFo23wzfN5lOJ7mWQ9eJcAFhhr8w9RMrqvus=;
	h=To:Subject:From:Date:From;
	b=oBgrRDX0MEYfVlnN3P1uusprBBC4jXeVwY43KFIjH/hTlPxKcmPyzBbNFBXJqiDWz
	 4pcP2e9/oJixIaRgxXewwVJY5sjp9gokFvLLagqid/QBBMowALfDrz7xKX+NLXQ2AY
	 UpysJ3Cxw1U0TAp4HmUIUiE01qnB1QHv98P9fno8IHWygYFYaaO0yYhY0ISPfvb7FD
	 Ww5Q+PlSE3vC0HPrgqBsinerfwY41r8aC7aBnPB0rcFrgr2CbuS8peiB3j/VMY6qsX
	 yZUjRZuP1BbdJdl9nqKH3MZLcPaB7M1WYGYPqma0Tzg/ZcK6W81gUdK8bFyku5OyOk
	 Ik+HzA1h2t9nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDACAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762379358.8870.9134623955603605673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb90a9ae8cd10439f3c5684421f0d56fa85923ca81de8f6cd3d57ce32f7d4e3d
Date: Thu, 11 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757623793
