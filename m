Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D7A3A759E
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777388854; cv=none; b=T5f+RDJpAk34ixiRZObZ4GkxYewlry7o/JbaLc+ByVuyC/QVtdbDM7jxE5ktg839xJHsnKv2ZpmBCHizDKDPW2aPIRhmPl8AAbypjRzs3oDkayeAZbS5knr6z8X9GqrLsOG/RKQiM/wBAU/0RnBNzYpjppfiXs5TOiuPozwacEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777388854; c=relaxed/simple;
	bh=bidVAbg50R2h2Pb+xuExhjzN8FpZrAcA1sVMNvMevaw=;
	h=To:Subject:From:Message-Id:Date; b=KogDBAd4mA1ECMXiQWGTiU76wgbSLRX3C729DZMEwcsUeJPQ1wVrAiI0N3TvXbUXPPUpNbMnassdLH6F/nQ+an054/U2ASGjTqFZMKNguzcG4nEy7r1ARRQYwJlW+9iRLZYq4N6LEtWweWn0/yczajm4XhSbiDvsARsXBJ3/+cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVExtytI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVExtytI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B25C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777388853;
	bh=bidVAbg50R2h2Pb+xuExhjzN8FpZrAcA1sVMNvMevaw=;
	h=To:Subject:From:Date:From;
	b=PVExtytI3pqbqi6jzm+1WQ1pJWASf0JgAwWgvgT810NGI9QFTWwvaPaVbxoq7xfFG
	 fFfv67YlCT+4b+KB3iB60u4WT3shTtbXwwZNSnbFaDBBvzJS9y4yS9RtB324kt6Clq
	 wBLIeqzjxZINUZK3XtkUvFMSjPHZPs9c8oSAdBYP60/db/ja2NzfzoKlJg/CG4kd5S
	 6A1q1bTwDqbP5MRig1MqF3KtY6zWHePdH4J7J9cXcuSAlNl+Y7yMZ6MPHGb9ocOymx
	 2zk6QO6mq+8oVRNuJDQfsQ7JOQOCx1ZW2hvyozS0b93ntquzh7ZvXtAueoKaGodeTv
	 OyI09GTIiYkUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA20CFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738885368.27328.11084476614904584793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f73cd996294cc35e0f16e0c3e66adfb26a8d9002153bb7ff18248d15aa2a47b
Date: Tue, 28 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777388853
