Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEBD21C19E
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756059594; cv=none; b=gLywmscqQgHo9vz3oml9IMMQtp3nACBW+DpGl7VLvWRI4X2vgipkMJXkjDwTL1b//jiNqt6ktL6NrkWGVnQRFMKSvBEw+OhMDdiQ28L75KMyHZE5CVfOmselKaAEnMMPP3OdWix6jyfSODyQlokZI5bY0oUQ2HvPgsU8afqxBGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756059594; c=relaxed/simple;
	bh=nD8TANiF5dwfHhiut3b/pU5MLJXCmit1qzbyoVQyNM8=;
	h=To:Subject:From:Message-Id:Date; b=Dryvmn5Qs/eHeD6rReJBXWl8E+I7O1xlUVqtAwSIsVHFP/6rQkU90AGANcoWLdVx29JmnJGAsa7pF+U81OdwKaEHzmip66Ye6SK1UQhpdevRZRzCHZeXkbh5mOTyureJWFcQtsrc1M5XihuAj/2hhcsZ9EBG4Blj8Pw/ZjbtnZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdSnFbwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdSnFbwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A163CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756059593;
	bh=nD8TANiF5dwfHhiut3b/pU5MLJXCmit1qzbyoVQyNM8=;
	h=To:Subject:From:Date:From;
	b=LdSnFbwEsRqQuGyXFJtO2SWBKIVlbpTnWgLwxbkkQ7MyL9On1wWppt7Yn60nrrDzr
	 3QOGZCFoeskrtBUfK3XD1vqNAPBFtoCrOZxbqIhshMtBPzCR71p+sCVjvy46edoxyl
	 PtxiwwIU3UUiZQcY8TUfvr7NqQoXY26epbbqDoYdP/BGR+SHRtRzApsZBcWhgR4feh
	 z5TcIFcRk/L2RlvB4chQWaXh3bC57G88zvRNffkB4cm+e37R9ZVxHWFUey2Bic2iiQ
	 eulnUrZNMMHCgrTlr7hRvjP6Wnt7XKTakk28wfYJe0s74tMBb9bnFf0R0j7m95Ax1P
	 19L3gbF7f9FxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F4CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605959357.12546.1971015922658050940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07da4ea8ea533d48d75e67869b041296caef2e62450d924a74b9c8ba74c465a4
Date: Sun, 24 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756059593
