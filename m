Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AF26E17F
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754744394; cv=none; b=QOsRl33265cPAIHSTdb7a/qFB9tmFr9mjweMWZ9U/EqwAEqpkr6QDEwZfTb931rdOmgSgewSIkguGi324+ux/Ajl9vb5e1c2yLN9M1/wTECfD12AzdMB+ImYg30RlMV7MkCNj/wP546WyUfBCj7rPpsHntwrhe94NAlSRkH5dvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754744394; c=relaxed/simple;
	bh=wMKrfobgJVcS4awQe+/yj6G8nsONL20MDNFguYAzBxQ=;
	h=To:Subject:From:Message-Id:Date; b=h1KAUjNLgEWTqJpRvWW3Rn9nsBcvd0W2JPgF3gv5ncCCOzrdVoHV4oHLUimnQ8AV2r4+bJ8EyyRVUnQXU1qo1LOjHv8SGmr/ze9kgYFaHN9NLuPmy+sbLaEwKBh4PS8bZ09/VtPAkgvDNud2Ff10PtzAqeGwAttqHjXHTH78+eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDiov1ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDiov1ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3119C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754744393;
	bh=wMKrfobgJVcS4awQe+/yj6G8nsONL20MDNFguYAzBxQ=;
	h=To:Subject:From:Date:From;
	b=iDiov1ub+7/xYhsQ77JjKZfpRg1Xu2+m9EL8zF4Ra76hHVj5xx4cBBJZJEmfsRxGl
	 03ZqDHIBmmy78CNPHpOS/vB+eLZa3llMa4JR76AWokeRZcrXRpI8//Wrru4jeArqKm
	 8uZkR0evBom+4OZ4jWAzFOfsgJMJOCVITkN7mM31ZRUwjYrBdXkHynztTs6CtCczTz
	 tWBjkbyGLLtgyDGgm0s5fKbR7risWBqTHwOEtCjkS27z8r0QhmDCDDU/Arr+8yfZeS
	 JxNpaFia0VfIFlL+SBp5WOnTJAOILQjVPkREu6uwWLkTspsbHrjvHTSjoEP0dlnPYB
	 3OAocHPP9GeOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9467BC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474439357.30380.16942424189170544918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ad6feb0f8e4f16c7323e8f9ebee4c4282d4733bda83a7ecffaf110ce0060b3
Date: Sat, 09 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754744393
