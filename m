Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A30D3BBFC9
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791978034; cv=none; b=Xo5TkPcOrfxZM61BeezIYPUrkTU+N5sCfs3seecgx+xpnzjfrAWsaVHnBZCy7L8Qc0bklyRGiLKh8KiDTlwAClUhX8LmbfEWzzmGJbd5iboHBNAIIGZvPwQFXgAUsDI5j001ENJcZly4g4wiJWWEijrT0BvWgIt5nItOOh5Z/qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791978034; c=relaxed/simple;
	bh=6QARB4nf9BBt6k0rzAf2S+TxQj22Jnxo5MCtxvZ5Cc0=;
	h=To:Subject:From:Message-Id:Date; b=f6QM87XwAP3VzTBXWszvsCqtD6sSLMmezYe0ElzMvr1aoCYgcEedcMfhGNRUw4EgjF5vZOB8lSkqTHJSxf21JDUcBtwPjUjvK2FJHYOPpFtcc/acFDEBLaoc9stSh0fkPnZUC2tU+2iDmD0d1VCboB/TfS7uK5UldnnTajKCac8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RluPaiUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RluPaiUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC36C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791978033;
	bh=6QARB4nf9BBt6k0rzAf2S+TxQj22Jnxo5MCtxvZ5Cc0=;
	h=To:Subject:From:Date:From;
	b=RluPaiUlc37bKu2LhGCiU1RJ8uyc9m5xcXUuc1CRDdxRUmL7TOxAKNdDapgLkNkJ0
	 2Es9SDaWKfGIhUo/c35ER7TPNHAl3SbCccLyNkPPxLDskJfJ9hMq3aheoBX7lTKjx6
	 XNb++CGTxcdV45pM4eJxQ973BofXexl/NE8XfssYwgzSc/+kfUt34Bqw+a4uEDH9Ro
	 xKlRVlN8spiX4a1NvMFf548WGFZ+G4pSwamdjqt4BCf8+g2wx3pZHOKUdWF/hb8kA7
	 nqoHgSXDU2ypBkt6IPnWthA0Z1jFtqIkY2TehhNyu/2qDVhFbex6Yvsp/NH7kPDPdx
	 U16teUMrpJRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB050CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197803369.17518.569838852856019951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46d042f28a8f65a9a454876a4793be185731de8b610bb154f8228b844c48fc3
Date: Wed, 14 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791978033
