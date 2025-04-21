Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F77C2AE8B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745212195; cv=none; b=I28FnBs5luVQ/NPLODdWPPGAITn+flrffFDe7GCkY/gNddT0cjYig1EAGDqvtdBVisS5lCnElCQqmIo/TkdNRGYqtwFDIBUqgEnzGzdt4++oPaW2EiC4/Z2lTk5/aLLo9l67FScv0G0YYQQrum/NadNFpWOJnE/MZ800UiaaBtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745212195; c=relaxed/simple;
	bh=RtrjOEe1O1wxpendFCYZr28t30ZGCP+0sR6vf++5Peg=;
	h=To:Subject:From:Message-Id:Date; b=JLS3Go8rZ/IS/pUPy+7ZpJSn9oL7uO4KEg/V9DlKLRxe5FHD4IBK6f67wn9k3rq/IRCucPj+YgLIhAYd0d9bihbzkBHqmmpXd7itxMS/hLf2pqU8cbJWb8nfrgwQ9Il00vGDbevk2Wsvor9yOfoSXO06teGo03nP4jRfTM67A1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpTBy0rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpTBy0rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F7CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745212193;
	bh=RtrjOEe1O1wxpendFCYZr28t30ZGCP+0sR6vf++5Peg=;
	h=To:Subject:From:Date:From;
	b=MpTBy0rsAUQ/xrdUh8PG+tlFhxCGVnlN5XfqeHLNkx3frCYi9oAYGT1ig0iBD15PY
	 4Jbj0pzdDA3O6Yp9ZGkFNO7ko0TEjol8GQdh980pKQ6LIhK14ejsoKF51fXCI/x7SS
	 VriigsoqNx0mTbo+7MZ67enBjfWBaVKmE+OixLOsMSeLlpyVTsuTVn0M1C3dRF+ic2
	 TaEP9G+mrXfJb1Uc+ODOuLSEgXWv87ZDM89eKYojMFmmUsJ4wjJT+KoN96RGaqcTyz
	 QAfAAFExScqNDU5nHquL6RH4Bdm2IXHb5a9NHxsMYWKaHEgSpjYIvYAkIMTnaLclv/
	 EgXkDyfQF/tLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F3C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521219361.12917.13996963377356854445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477a7ae4695abbec127e82e1f6c584e1aba3ccc5a83509b53c306c84a722176d
Date: Mon, 21 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745212193
