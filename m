Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6891E531
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724679954; cv=none; b=FrS1X1+UmLmj4U9A8pMsmC4PuDGAwxb71ZF2mQdjQdyfnnns14POBQs6FjYKN7yendHb3zL0F+nLJMCWIPS3fx12t/atRsJPoVQjN49vb70hIKydXRRoFYA8VqCkJNSAO/0AirOvrvMWwh5WYqFhWVUNbHwyaylImUj3pAm3Oo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724679954; c=relaxed/simple;
	bh=g7uMjGV5yMVyjkomtfFf3TnJ4V/Lijkuau0EEbt+gP0=;
	h=To:Subject:From:Message-Id:Date; b=LM1CchMkxT+AfX31KuMN13HCS1TMpNEP7qtyZt45F/WNvSXZBRPx1BsslIIfNyvw1L6SBd/Wnn4dc4ee9qPCFFNgmBk2Kt81fcrXg8CxkElB94uRBvJ3MyWRVQN5t6EMPILg7ei++p2zGclnZ2Ilf1rqXeOz0CwVJRTf8yf63PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmKK4B/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmKK4B/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A5C52FC2
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724679953;
	bh=g7uMjGV5yMVyjkomtfFf3TnJ4V/Lijkuau0EEbt+gP0=;
	h=To:Subject:From:Date:From;
	b=hmKK4B/KLYCGYVJAN9WLuUCYY85BnAjefK/Qcf9+pjdl/fNIFNQWGeDiL4bLO1/kb
	 xE9PVURB8DxEcBl1cw+3rIxWmup2Qht/mfaHfStQ0qwX2eeFb0x9+R8efLAD+kKXur
	 gu38IJqoF6D4Sp5EdhDEI2CcM3pVbFugYYfjvJ45xh+2bpUWNstyA549St06A4ANjT
	 Hu3/TOJyccFEiaZjIPJPXRzedqT3TMZAxsjQVM2zHQV7EBlTODzfGvksD6/5Z4rmiZ
	 40PZa8RhNVXY0EqYVfve24mrWZmErv0exA8cNpeKkCVxBU+zPtkDvZAd/uwz6yc0l/
	 RNvLlsvceucUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C7C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467995357.4909.12782555706187356355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a89578524b6c8badcdc9eb861cc95ce53947e6d6ae15d00d398bd492316e28
Date: Mon, 26 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724679953
