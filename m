Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F44F7E579
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717437323; cv=none; b=osiWY7RpG03BMpe726Bs0b20gPpJLGCBSfhlwB1BsSAbCU5vl5s6CXlD3pHSCIVmry9g5uyZFtTAj4EA6aj+PEfGCnaj7og+VhvsTHcCcGqUftgR7eCZNw39rsfTZZ/SLO/FxwPS+mdsoTOdzhAGO3almBlF+rIruMiyMqQbpKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717437323; c=relaxed/simple;
	bh=aeYHNa7EyP47+XTqZbjyEGGulxkts3oMaUgukVoMFCg=;
	h=To:Subject:From:Message-Id:Date; b=P+jyabcS4lNkSfXjY9ngMNe5Y6nPkaCBx42RFZhHb76yovoVHPB8P57YfUXhkrIx2p8UWTNksTgXYZ6U2Um6XwUIvGrl2hxL87cqbkNTMWkBC56SNoaiWDbHpqjfw54XNeVh4255LGtNEj09/yxzgCJf4K4e+6QFxpDI1xG0lKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtNDjYM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtNDjYM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C46C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717437322;
	bh=aeYHNa7EyP47+XTqZbjyEGGulxkts3oMaUgukVoMFCg=;
	h=To:Subject:From:Date:From;
	b=BtNDjYM3blSplcG/jz0eXDmVmDze3W91+i7UnQIiRloVy1WzNG6jblyj2F0vn+qFC
	 oCIOzK0ja9uGuo1aYLBK0t+FbTJRQRDcCf0LSpUrj/+W7+ntpm09mc/d94pPvLiNGr
	 vsThzixF0KRITa3d5k5dxDoNdNNILCIbiN1ADUUh1X7emocEqm0ctnYqxkgtfa/TEo
	 3BWPotJjrGh8hZddXArzANPjxeZxvnejxxIrwo8AcxIY3gQPzmr2ygYws5AYSryWvp
	 NTuTobB6s3hysBeUGWLP9jbwTaMV9BpD/MCq8OTZI9Qzf0Cq9nzAYwIU+bzC3MIYpq
	 eh6TfIsFLCPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF45C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743732277.22402.9701018565578637519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252a922aeda91beeab60a4499ec5459891eef3af252a28c397967f5f52d67706
Date: Mon, 03 Jun 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717437322
