Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F5D1442E8
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724798754; cv=none; b=eh/uRLudiDVaSTwxFm++pgvJAIJ56LB6/A4HEBOclzWT5D+FwXcwCAt1BnKaPtqv3r09yKO99mtbrXSboBs66Zd83x+jCFC/bz4hZhAqz8QmEtv/Nu/G7azGONZWSvEftUI/TQ5xUMWPOMGgEffMAsWsuP//7vI6fyNhwQJGO9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724798754; c=relaxed/simple;
	bh=mZeVtOs8eLWFeeAY/cEVcgVACbXaIN8+CKjE6cjQr7o=;
	h=To:Subject:From:Message-Id:Date; b=SvowUHAdP0Majtw9OLU574Gn3ImDi3t4yTh4P9Fho3CGE3HS2BDEiJWV9r+o5GANZXO9os5v3ffKEr1CJrkWsmCUYsncA6PQzjX+qhadlM65U2wIbTLTSj+5MzT7RpOo4/50Hx1tDUlJLW+y5vFHjL++02z6nKBeSAiWbktOMf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0KnnIzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0KnnIzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CB0C32782
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724798753;
	bh=mZeVtOs8eLWFeeAY/cEVcgVACbXaIN8+CKjE6cjQr7o=;
	h=To:Subject:From:Date:From;
	b=A0KnnIzVDv/Sn0WHw6av+K9RQeui29h+hWNVEW+Hk2NqKDFzRyRNnopVZdqdydoMa
	 JBWBHM1RKGHCQJZKCaT26bm5DWMDkbxF1qYYLlkH0yNEVhS/95EyLdrvHdFkS8ijz7
	 eReRD/7iSwkGc4QzuWPkOi7PPqNTzA4gjQOiiVBC/wzRYYJgkFYKU3p7uNt7qtdxop
	 pBjPKXFyxb+wv4MHybYcUZNX6cetkPlKFkKPYkeFqYTwDXkylnUZwOeAOTBt0JJuyJ
	 ZJcUummuF02mjUDfjqc7fiiIrmGHPkS+zctUO/24KtodYM/zyZGH9UdB0P2AY7eSF6
	 1WeWkezO5HlQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC93C54742
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479875361.29123.2999197828762974920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de7b23a89dd4ccb0b955cdefcdec3d8cf8a40d78701ade65eadab4a1fa30dac
Date: Tue, 27 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724798753
