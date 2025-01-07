Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2242A2594A3
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736215554; cv=none; b=Qi43BCVkVP1pb8F2kr1kWI/32DZNxDkQGA4/O4o6GeeOQa0dVdJ1g4vOIThswngbST0qYO3Yj1kunHA+SBQAwTgDRdgGkHn9lqYlGZu42ROiZhXQN8pYw61dzhFDk9TVzKzRYA4Z8an+aTQ5d94KieYScH/6XliBGjqNPbK/vcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736215554; c=relaxed/simple;
	bh=CrGpIdqQgseLISsON6+yGo/Ktrg7OFa+p6DRt8/sLow=;
	h=To:Subject:From:Message-Id:Date; b=owwC6UTcrxXK8jWBAzGJ74d4vBi69BWsHjJpfSsoKVKaCYe74keIpx21vxY3yLCrMNNOfXUYSe5u94Plsc7c0+cQm5v7/kX3Etn4aHpob+8tiZvuNOjiYSUMQ1ollViWkQk2TRTxNM/0a7p8mCgMJMdoYf+u3G4uaj58avUX/aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6/42aqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6/42aqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BBDC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736215553;
	bh=CrGpIdqQgseLISsON6+yGo/Ktrg7OFa+p6DRt8/sLow=;
	h=To:Subject:From:Date:From;
	b=r6/42aqLk40KXHKzhfGm7MNJHTGwY64FRYaTj6NGqHtJA425sG/VhuxQHl8YQ5KVC
	 6yPb1edX4+dJlZmu7jOJ6dkKH21+lu8Hb4MIiO4LxVcq1Bl7HkaYS2JYxAF6e9um09
	 kJNA29MW61tpgtFRygAo8CEIFi4VSRjowah8ROx+auX8Y4sDPmCYPBO5IhH8e4FpQ1
	 JpHQYjbWLMsjCUpmFBN8fkT+kiupTOW+EEad0OmHDZCT63ehoYLh3nKyHQSTjAtG4m
	 4al+RSGkWrMRJE71PFZSueQW2jHEXZPEt1ynmlBH44w8cJhAIQCcMt/3jcn+VMI65u
	 wv5mj04XsCtPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B4E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621555358.18793.5066551785713668121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e742cac0c05dcd7db0d460bf06c03b7b35802dd2401a94424d79714922b2f9
Date: Tue, 07 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736215553
