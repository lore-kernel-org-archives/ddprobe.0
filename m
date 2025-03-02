Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9C61E522
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740928134; cv=none; b=mNzx4rtCN/Pqmzk5CcLvJfbJrGY3KEEk6k/OFWfJBFi26rlCQh+9NNcsJIq9TOLE7sw2D66VbtwSnT96n43KtVToaYvvGYzXI8vjlnj0yyeP2vBrN0woSvd/YH7E8Kwm7yNdIaa/zUrXKzaKTp5q39c/01bW4ApTNd8knbZCym4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740928134; c=relaxed/simple;
	bh=LC432bU2Ho8v4yebN+pFKqjNL6pOVqnGSEusxXiWRsQ=;
	h=To:Subject:From:Message-Id:Date; b=mPvYgDn0V1Bm7vWVtuwBxOgx04nAIzfnplr4UJ3amT4R12g3D+FYYggRKQH1ukJUeO0cyqGw8bA6GAe7Eq+zDwsTyNFuLXmBgVcUksFFEDw8VmXXayKq6TOzhoVKlgj7IdlUCDBqWT0Ls2aPse/Y8SIqFlzjsAaRykS96nYnrXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAfSRPb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAfSRPb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC30EC4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740928133;
	bh=LC432bU2Ho8v4yebN+pFKqjNL6pOVqnGSEusxXiWRsQ=;
	h=To:Subject:From:Date:From;
	b=uAfSRPb74jP0O4XLRhUDUiqYOV7rDcVzLTsyIBTrlbpz2xpiwC0XtIxXXN7lypUfY
	 ThXYU2E9jm/VdMpR0/wh2cscrvUuiRftBU5+K2IAlj32Z0YREr4V9Rr/lhP4CHh3SA
	 WMAh54egp4JI6n9KuuDzNjzzxCNmJXRD5Vx4SfZ1tpfDQdP6QrN/ADVNCVu+X1+gIk
	 BT4mD8Kjg7qwYgtl8coMrBt8JU3lFvWL6N6dIFpGiHEz7bNLq1CYsoSo3CfKobWDHz
	 HFkE8UpytqPU0tSnj+ZjNtHWgbX1FT//yOZsIL2y1S9t9I+Xhs3WHzMD4R+4Bg14+Z
	 gvdQDmEx7LHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9636FC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092813358.30664.18420109634165860971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a856a7e622f1293499c0f51f40d33034be91d196a53b8c88bd4e0ea0f4b3b7bd
Date: Sun, 02 Mar 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740928133
