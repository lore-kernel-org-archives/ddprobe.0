Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FDD26CE10
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751360994; cv=none; b=ErhlRgi9fd97gfqPXBq/pUNkFg5heSkvoV8wxgwoNdPYYyYi4SwNoWjTQg15wRfgFFwgwairOLrKkyX/3iL558MXKrSSrzWSqxoG6LTPbf9itCoEvuAoYeYTBxHo+Z78X8Id4BsP16qk+iBbywMQH6hnYogkAZ49l5DW8nIjlro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751360994; c=relaxed/simple;
	bh=F15UWzl4IHszTiCwvP1nojh9v9wCrXNh+/I9+BWRbYA=;
	h=To:Subject:From:Message-Id:Date; b=iLwU96a1k+9ty2I5OzwGXs3iVEJex5ZLHMpTHc9t6s/ZcT0Qt+1EcliRba7QjZG9JEdyK2rIic82sXOlUnRPTpn+PvOJy47WRcmgZlDTd3Z6C5O4098NUkghkFkVi+d6nku3VJ2aCjO5dcN9CFPVOU2FT5RKsAAUo0+uAr4407k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuaVCbaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuaVCbaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2260C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751360993;
	bh=F15UWzl4IHszTiCwvP1nojh9v9wCrXNh+/I9+BWRbYA=;
	h=To:Subject:From:Date:From;
	b=JuaVCbaGG5qPXdsXqn/LOmly9oS0Xrq9t3NhfScVcbdqDKUOvTaQRG4A2CsU8BfK5
	 2y++LaHZ81QAserezD+9qvc1J/bTqeZTXNDFPzU633Z1RKlJc0Qdnn9XrEV2t8mYHf
	 c239JbR3jrftOPe+4tEPh6EyiiqPIKPH8IGO6Vl5p7dgwElpx1x+O8OPv3kNC6V0UC
	 yXbveeGhexyL0FVKyHtPk9HJNQhWkiQjRdLBKHPsRYb1Rr2rIQUufh5oIjGvlUE7fx
	 FX+N9Dr/TCE6/0Mxh9wtaXRClP+tgzfrgtm4392EdplNisuuXZYbmIJUO4giRAUWps
	 oQCtfA5LoE4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F800C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136099357.26606.12181290568601638033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec475b035778d873ccd0c3d16442f7e9e498177da0c7f5fd59f2848abee06010
Date: Tue, 01 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751360993
