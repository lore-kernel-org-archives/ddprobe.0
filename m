Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B83331BCB3
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758069594; cv=none; b=QpSNFnkXrR41V2wH1debq7B/wJ4UnSNZkk7zZYddF2dI0GSmSrRJ3+SQLyrLlshuAHLs3rNXDKKuSDJhVaVW7tM0Tg6CWXMloHt23KQBCJnUStdmQVjk3MGISQ0JCYpOjdnPRmWv88h5rwqX3Xz1XDBsOChe0qCNfWbM4sfj+zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758069594; c=relaxed/simple;
	bh=ZDLisKNWNwZ6Z764KnKG02gyq5NV9u08OhEPIUL5m6o=;
	h=To:Subject:From:Message-Id:Date; b=MkpCZcmW/sUcqqB+MeIvZ1pmNQhPaekEtCREGpJ9iPSOZuS7DdP+fDEQski6Jqkso6rwb+NdFhx6o1jARtlKPBAnflZHkUWxvhv+EQf6WesCSALONjm0gAzWasduOe5ziizLuFvCTie2Gl2F9lUnA8IeSY0WUCDqkIKskJO2jfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aonaTGr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aonaTGr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D2C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758069593;
	bh=ZDLisKNWNwZ6Z764KnKG02gyq5NV9u08OhEPIUL5m6o=;
	h=To:Subject:From:Date:From;
	b=aonaTGr3UxfRooG/6dQUZDUWqjmqhKKTk9IKl8sK7HxS0jkdW6iCJn+fNWTxxme6f
	 avMQjxdNbrhjxy5IKecuEJppp/fnxo13ayU4Ht/MzWELZhbxp8UTZ7irK553alImWc
	 HmXXZUqdT4Vn+E8hszql1dR/YydnBOsLkCFObOfEmw0L2XFhp7ga962DeBp2PuZU/v
	 arqvoiwNs4CagRbGj1Sh4htFVq2ZOQXEz/xXAEcuVyXqJGlvXpWG2XXMXMyOdKb+fJ
	 fyI5CiAehg9TSLLzx9u+LJFI+5azC9l1umFi3cUOZH/ubNbW+54lsYIqaSikyC0+AH
	 TyITF+peQn7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407CCAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806959357.20852.7752913180468104049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae13d7be4e8df1bb3ddc5d4fa5f6c9ee97ef4e99e68253aa065aeb7018082e8
Date: Wed, 17 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758069593
