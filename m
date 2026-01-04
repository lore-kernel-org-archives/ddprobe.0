Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6D010785
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767497634; cv=none; b=EQbgZPW0G6WPNziSXvlewqVO4H4ToGsVBx+VgDiVRfrNPfjPCpIeUW/MObEk5OwZpF/EEv0pZ9GxsWyfYbDCoxM2REXbN1tJYhB99xGc5fGeHz0ZlaGeew5I7WkUUK0Nm02l7GdxJT5GAUUS/3/JI5vdykMq5OZUnHuWoELWD2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767497634; c=relaxed/simple;
	bh=CrkF5OFJMViEs2FZJ3lTrjlXgYsIzLLmN3+xqkXoccw=;
	h=To:Subject:From:Message-Id:Date; b=eSW3gdm5Z7mNr/lWWvT8NBRoPC69+N9NAdezZRIATPhc1ZKnvkw9Acka4Tlu72JYZ2rMg94OgFNRWomYJTXV/Lg8I2KNtGCCdBz3fFWFUol0bgoTi8Qs4kgwK/or2Z758P43cHbGWT0Em8MOdAhsevEVp5H0xxgthmBluBJlwL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4b2LXCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4b2LXCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767497633;
	bh=CrkF5OFJMViEs2FZJ3lTrjlXgYsIzLLmN3+xqkXoccw=;
	h=To:Subject:From:Date:From;
	b=P4b2LXCde8u9Vtug7vnq1bJgmFTR1MlvBl+z0BsoXqlYGhABjtBOrrfo8gIyyjW+U
	 6IjQ2DaadBJ2fnJZVIOeCA2IeOPTcW4y7vyCOg1IoqcjHc5/c4bnh3V5lP0VC/D8/x
	 cNyBkuhVazAzUtJOG+Nk2e64rVwTzhgrk1i7UOCOamjc8hvyLgS7xs7iow1b/HCaxM
	 +JiHVZ1PRBQP5M183xLiSw9wQgah33lOrth7eyXcD9XF//Mo0bzOxCS0vV0qTAN1r5
	 br5DMirCUcg735n0zFko0s7JEa9v4HS+d+PVt6RVe0pfbq9Rym4DFxLXgWY3WWTiok
	 J0l0AuTMOy1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F2C2A06F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749763357.5845.873370747960754715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf0a63b00e3cd077d2eb92322b8919b29ba3591e3f76987a6a0bbd0d63ca609
Date: Sun, 04 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767497633
