Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23362727FA
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773882894; cv=none; b=V5CZMsGoKtmbYrmlgGDjbZbAKtnC+/wWfaVfdDw47FQW9AnJbSWtOguedZsdWCrjXw7LB0pcT7NTeoWc3XU09ySUd107Lj8Vyabm6xUPo1LPzW0ym/g3wEwFfMxcTnO369TI0/lvcHTIrYwRCauwJ3S0CgNDEeukNK/ZusuvskU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773882894; c=relaxed/simple;
	bh=F8iJle97siEoHSXWvh01i7EOTebiQschm58wh9NCWqI=;
	h=To:Subject:From:Message-Id:Date; b=sOWshKbD2OjNYCHgRiiZD2r/D8JZGEwVqVKMPfMydXmdTyzc6EXAwgC6V2+HovGNJXFfl+yLwGregXpN3Z8Vcs43Q+vwqjMsrVB289Z6ra9tNr1Y2aiDl9ZDncD1ypbqSSmqcJ4Gjy/XopsaSLWskyuRHuAfjHC2Lp6gxTcEgjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXNs7jUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXNs7jUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB29C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773882893;
	bh=F8iJle97siEoHSXWvh01i7EOTebiQschm58wh9NCWqI=;
	h=To:Subject:From:Date:From;
	b=FXNs7jUnxGXiDtknb+GGp/XcUK1/At6GPxe4ofE/Vm0SJjTRDMYndzkvxjQcVzJX1
	 Zw76FFbhk8KE1gSINsqsYQglvipPff9PbGdwQr8qEkl/aORsCxK/1510u2r10n7Vy8
	 X3F2dX+/3rSeKKO9/1OdZIiLTlo5f4YWkmNo7HFOJmkxeGK8JiDLrmOBHy/DLRuy0P
	 UkB9PBTFEvW3OM9pyg4gSGXaJJToHCndLORvYuvxmSpOlDVnlZkXcW25d3BazF6kcW
	 v5fZvzjip1GLOC7mBA/s9VSoOUK4X3F+VWQ24AbpDANY/+4KXlaokowcqPJzSJaPdM
	 ktHU50TAeUS0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77A1088E5E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388289357.5525.11076824534309059564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31479f4ae750b9dec23b946f1525856c7db2704da9b3e22426e56bdef8a5981a
Date: Thu, 19 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773882893
