Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC8B5227
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709776697; cv=none; b=J/qAkUsgqgXBuweoT2MYrMdH6OyaMzhIADaFpdTBxiLhUuuB+yJUjEBiuebSxTETtsiKUPfJaPZU2RvjiOomFjjHePAg6sJZKOraH1TcZQ0VzsBKdicGPlNE0vAj6yWuGcNsZc+YapGKP101vlDDvQAgLnTbUGWfxs9cLxpokxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709776697; c=relaxed/simple;
	bh=dMoyc36u0Qi0CVYDCmNQXFKo9zuw3x22D4nhrrsXx14=;
	h=To:Subject:From:Message-Id:Date; b=e89rjp29G+BEaledAr9MndqQ+SWBtS7PHYEB2UniuOKXX5CurSQr+1VtycMzzrlXk0e4Z3vBAMjBiOY1Tlbpx4Cuic260HWie5M17RmzCIqaLgBvtxwKMSwww+TJjPhOMeoJy1CMK2qpyieEuxM13PGXonn0nRcxqJZZe9i+F5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rst/2Aos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rst/2Aos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F3DC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709776696;
	bh=dMoyc36u0Qi0CVYDCmNQXFKo9zuw3x22D4nhrrsXx14=;
	h=To:Subject:From:Date:From;
	b=Rst/2AosaDKWf3OqLYxn1UcVZ32dagbp1SpU6JKHdaiv14B8u6mD18u2Izf3aX4vr
	 b13IHaHv5bos8QeRnN1tn02/XWhd9mJSBOQn7C/CYaC3FSCMcQTmjEjCJJ1WQ8m9pr
	 xtP1wxY4mH+78v7EJVNFwPb7Sa78x/4GUrltvO8DevaMEZUF46w5GMUMsPyPZvgS55
	 JNFrFfI5zIqW9urgdiltWWPdz1p/qL58X4JJCaLOBiYTip1elC49ezlDTAhI9vRtzS
	 iHj00RTRE0igAuHy5/FU7galHV8CDrWEJSWsWdWAxe8jF0U0q0F38uYVBcvLvvsYRO
	 PHjJCkN8O/ODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B23C5475B
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170977669637.5690.563758959776962262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a5295cec3f238a2161830bda05e2a2ed7723a349fd8f073c6d9c362af90fb3
Date: Thu, 07 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709776696
