Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCEF2BDC0E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775794654; cv=none; b=rPlymiXYGuo48PFnPSgj6ls58g1/Of+/KrTwp1JiW40QFM1CrXNFwoYTYU2bmHoXe/0kjvsaPiMbXaJDliLimCDoW/hxYnNtKuqfdXY+i/onSPvSyUz8VSzfLTMKC3+IqqdQYmV7LI35I8rbpdDCKYnX49IWdeIe5LFurWdz3ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775794654; c=relaxed/simple;
	bh=6Q2uMqCpXUm84XIP3oMbaFNqAgfC9IdJaY1BYcIzHcg=;
	h=To:Subject:From:Message-Id:Date; b=aqsD3zTMG4bAMQBXjHikGqbMQk0otdRLpatYmTHAefLt9mOrtnVX+1i38Et9uJekaLiJLiqQF+0KY7LZyRQr9JvM9yZv9GNBih5j/d7TMtVF74MEut9BJ4HfYdqGQ80rDzI5gWyI13V7/YNUfljc3O6xMJRQvGP1U1VBtJl878E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBI4ZdLH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBI4ZdLH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBA4C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775794653;
	bh=6Q2uMqCpXUm84XIP3oMbaFNqAgfC9IdJaY1BYcIzHcg=;
	h=To:Subject:From:Date:From;
	b=SBI4ZdLHPU6VRZuR+sUI8y1anZcdXgpPyabzHVpBdob1AQ1FTDRN+yqgD56iqsTOo
	 hGsa/o1LT0aWNE3gMD5XFZH1AKZuU4+ciKhr/8RjhwGSpCKbCJ8SIEiKb54TUrYPpv
	 RSgTegVYx7yCYzkDqZU1C89K/aIqBLV8rstgWjI73tl4ujHOsi49WTgVWyUYUkR+75
	 S3pN9QJJUD9I7rcNiNWlak79yhMjkfM1ipA0938+FjaZkgn6Z7E1Ju91MP9yOueKBM
	 PoCtrOxubKVMakXRgN7q2fDYnf4rZfLPU2PRdDJpBCe3KQGQZM78MhlZ47UKAVSpgs
	 +5jf+5iFzz+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF0BF36BA9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579465374.20323.17248593383544006419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25655ffca896d7eb86cbd4fa59c91b2da50f7505c6dbe8d476dd6a3ba84b0f5
Date: Fri, 10 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775794653
