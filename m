Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1D3238C36
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785951634; cv=none; b=Q0Kna8yj3a1bolg4jhJmxfsAQOwG5GlpJX4dN8Wps1+qreSQk8tsojtdHIgJtX+nWN+t/nun31X5LP+eQUNh3jupzgYPmSm67E15hP5q14oNI/zmGcNG0stKx+EPW+Tx69tMOt/Pnp+cQZLOMgLKaIs2fLxKKd3Mr4rBcNWYJDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785951634; c=relaxed/simple;
	bh=CnexWlbD+WRsZU115XyJ9R7BbSw3W8XA55UDfMbBaic=;
	h=To:Subject:From:Message-Id:Date; b=UE4XQbw1ptplvwbkbxojEmdXxuvf8uL2U/lo/EbtHojBSrNvooEoWW/5Ij7ZmpYxaIU8HXO8JmDWC1u5xAoWFQbmgwRsppNSBf4KuyV1/+qEotAJthbKS76OK9Il9fuVp9dYtJWzRZxfSzmAcbjRlJeXVRT9N8QsQo00aHmlnbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYVsPQvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYVsPQvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B63C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785951633;
	bh=CnexWlbD+WRsZU115XyJ9R7BbSw3W8XA55UDfMbBaic=;
	h=To:Subject:From:Date:From;
	b=hYVsPQvqE8KE3MPvWiTES/Ha4h5ns4tjn63/S2ydCcbvMRlLuLH4Jtr+bDCej2OCH
	 33C2IKIV7+PjBevIiW27VMc84Bo/Y5SxDvv4MqmJFsS35mv0a4/tcNMlHd0uQ5KGPa
	 wYzw7BuE08VbgjV/th9e22aRlKcldd6vL7QdrvK67wr7QjVJ+9ryX033CydRUaEzi/
	 L3TtRKmxI2WXb/SsLx2NjmpWD2US0t1/kLBdihCYRxxqJXmq+Xvs2RDiAdXjN9c6Ia
	 l1DVJoRQd7b24PqWSL6ZlsS07zCn+LLFZmS/rbT0hxCYQK34KlR86JrQTgdDTLIrnA
	 mjDPykuTiEY4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB77FC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595163369.2317.16684459368952806897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d36c659381c041d307038716a847ade01e64a0319e04fe954b91b3f84ea3453
Date: Wed, 05 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785951633
