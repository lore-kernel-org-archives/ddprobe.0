Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3519A1A3160
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742764794; cv=none; b=eTsVNrlOB1WDoyN48gHfXUgs5SjHt4H+NQBB/YgAPJGsmXXekJbtBtMks5rEdWMqzv8YcE6ORjPF+sXlc3FHx1WCROoz6EdmiSP36EzzxpNrZCN96/Tw7mWf4QFgpQwVAbrHxPBP433ijPAcBw/xrDDyN01QnWqiww7LyJ/wB7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742764794; c=relaxed/simple;
	bh=SSycbcqLklfeVUqLvRetCeu+sLsdzolovaxwkmh8hVI=;
	h=To:Subject:From:Message-Id:Date; b=CYveeJ93em0YpOP+DgyaJTjjtIgp0Vv+aAS8jJFIYZ0Kk/IAvWnP3trSSIv0Fiia2BrS7QMgJ4Uk6Em3CMzeTtUQHg/WsqCBB5nHiaK4pZR/fZGpqZiGzDkGkmbRjz9nTesPjylQnNjS7B26Qn9FNA36tDFlUSTg9CYA2iEMryY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdWsuvja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdWsuvja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BCAC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742764793;
	bh=SSycbcqLklfeVUqLvRetCeu+sLsdzolovaxwkmh8hVI=;
	h=To:Subject:From:Date:From;
	b=AdWsuvjaSzkrChOb+Uettq7Awr6IPpisWL3u1LRLji5nO1mlgdHevAM9IHF6XskLk
	 n3EJXdd9sHoA6d126n7t8I84v7VuvHmVhN+19V8ZvzESW4XRey2ZVfU43/xmhjXIVa
	 xCZiGYYLUiCFCFMksp5EQ1iQxl3tY4lbi+CXIYz3q8gVs4SGowl7C8TZECZHcI6619
	 RqUe+3s2gowepzhW41lKtcQj5ypd+IbgGybchstxC5kDUJ/2sGsJNAUbNB3oGXabX0
	 9OBCPrA3X5PVAyoseKT2eCbGcegQZcvl6PvPAN3L+Ukb7iKqSOADRzn2/vY2QJJyiz
	 y9Nlxo2mIzhLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C22C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276479366.11711.17763165255878388674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6fda9cac4c89eca160f626690bd5909b79b5eaa4aa9443b90b2ba8ae17bcd1b
Date: Sun, 23 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742764793
