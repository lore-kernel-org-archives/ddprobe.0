Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368FC215789
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746209394; cv=none; b=BcQTDAq4KNqXiV8wJz+zZpv2ECJf1Duu0QoVYj2/ZQqG8gHLL59/45eerUTzHs12YFNd9Z0EubBwnGyWb4X0aPxiIu+Ajhxvhc9JItmgCKYu76MdILpSR2SY2ERNh0KiZEZvZWFmrRif3kL8KryOypl7CNK98CLUntnsfTTmltM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746209394; c=relaxed/simple;
	bh=nzpIptFqHZR9SAeSuLftzhfgLBl8iA0UEsots4dRtFc=;
	h=To:Subject:From:Message-Id:Date; b=c1g0El4B7VTxHpnY/ATs89Jfk9jb5NnWymx+13utJlRBgvBjox6cDq52Xi/xmTLEFO2Dt/9Pp7rTR2sKlHa2ggtxGnCr3ERXkd9RFBNJ6nV1fAV03+L5UGyG0gUGM5PzYYWsIri9ZTfii1fnNEr+KIarCZssfEvNVNO895GoJfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFeFacpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFeFacpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1364C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746209393;
	bh=nzpIptFqHZR9SAeSuLftzhfgLBl8iA0UEsots4dRtFc=;
	h=To:Subject:From:Date:From;
	b=EFeFacpfmjaQNgQ38vR50Jb812Zxu55mdrImcqyzExh0pRHvuyMAlYZa5B1KCpCuj
	 lYhhpdflAR/OFDaRZVezYb0btqz9OjnLuVqvZjKtXzutu+pYOMVauqT+k+SKjdu/3z
	 /3SVrBBXtHD6+ce2PgtQzaDFSj8jfZyxsTHMATp0qpLETEIF95IxSUsmzaaLlqbquc
	 rVThAFj2QFazEXlW77rCqR9u39f+CUyKY9f23oG2K9J1A8Tsw9rmw8d8NStgI+ZK+M
	 D7IFtGsAmIcJUrF3KomANQIRi7wrq4E2psWxNrJgKiSFRRpy2MjXNpwETBx6rtvPjW
	 i5UDhznQSXizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFE5C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620939357.18574.12174112425187176812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adabbde29bf1ce0a0b289ed517a29dec2937955c27a0fea0b5dd7e8574ec5245
Date: Fri, 02 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746209393
