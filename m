Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34825347FC0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762829394; cv=none; b=YGDXN7sYCr8k58aeqwWMz5scjEsMWXRj1qUgaHiewuiCmRFw9LWnG9a77JTCodgR5FK0WDfq6CMr8bg4lBtEb+ApsyRRbABM1XgNe3MCriMuLh44J21b7yPWwiTw542TTdqF2iBnKkSUqwHiRiXR7qiGWkbZjj9vWbr+CdI2yLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762829394; c=relaxed/simple;
	bh=Ny5u5dJIzlvhzcWAuWh6pSTENEGWLXwOWbqnTmmgdhs=;
	h=To:Subject:From:Message-Id:Date; b=IYLNIBp5QHTYZ7jKN8g9xp5wfreaXGTFANd1D0CK2S574j3Kw3uX8KoktBCQdpkDDnvnV3M0YsMBskNcuHXD7mnbZzcYhkLTz5YsPeeB569G7ghEYRcmU2GHBmgMvvslOD6TfzU7RImPK/ZVtvDfGATu7SqTe9ELA3o6Z7QzFpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfIlel+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfIlel+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A939AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762829393;
	bh=Ny5u5dJIzlvhzcWAuWh6pSTENEGWLXwOWbqnTmmgdhs=;
	h=To:Subject:From:Date:From;
	b=hfIlel+/AjK/+ElmziWhtB+M/XcBD83VoidfL2MOZyoCtgnriqWa/r1nv6kFLVSDp
	 BSJWvaysVKd2fMydFU5jzq/b+g0rQAKo2FchU0u3h5zlf6Jg2qX+i3qufB1ljsguHb
	 IM/bdE+4i5R85SZRJC39+X7WXFOxPb4sVdUQAhAEzsW/0WazujYjH9LfAuYCATJOPo
	 LupPn14Hg74Mkmy+t5lyOtiAA6qfUJO8AWAdpwYJBjYO8o7nP/ai6OtzMnOYWyKUSz
	 pt1YZUin0wDB3RsuRHXsT4YxTqD6VxTwH52Ej3LmcRpnAtPuD2zArri3mHWU6NzKgV
	 /80IE+/pGSaUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D0CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282939360.16743.1995438750317911415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2f3062d9c237a492c87d3cb9584f967bcdc9ad28ea02ccff0b0ba528b7ccec
Date: Tue, 11 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762829393
