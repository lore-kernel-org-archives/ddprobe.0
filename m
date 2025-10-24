Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F972BDC04
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761289794; cv=none; b=WGsG8e4cWUq2Oy833QVaBVAOAF7Ki1He4oMymlGBlrhLU/IrC3grXSZD9T9lplh5Jc4qDgxvOmUFaMDCj9za/Y5vfssPsOi6zgZlOelQ40/BWgyY63X9e9/e+NTrQcap3q7mnErjeY9sukOQvLQa3nKIPGLsBa5gn1LkxhlwBQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761289794; c=relaxed/simple;
	bh=/cPOiLegwVDsHB/dMJ3tFUAs15avBbTQ90ivW4olPis=;
	h=To:Subject:From:Message-Id:Date; b=bGcmVFOYibXQuc6XQ110gQfZqsI0qj/rEgzWMJl+QQ4dNGIOjEQ6Da4/MTaBabwCdBwiM+k1gbWZnjROf7GJMGLPS/2kbulA2ZMA2D8cbGiJRdvjggmIZp6MVyObJu1nzIc2UfY0YSioGGkrOaEILjx+X9EeVHcCLLc4fkjVdzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSBV0ej6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSBV0ej6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDFDC4CEFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761289793;
	bh=/cPOiLegwVDsHB/dMJ3tFUAs15avBbTQ90ivW4olPis=;
	h=To:Subject:From:Date:From;
	b=eSBV0ej6QpkyKkv9wOp8feLHVUeXIuHXGcvrjdu8+K/2bp48tZzb1bRCIAYymyCTV
	 eurZUD58GgIaPtb6G7JM/NMZeQRomIW4x3hRY09AVatqT+QKPhV6e2leDKn2dV6FJ9
	 8bGl4oNMaiph4hm5vxy5WvaPfsRGDjz3i/8KUDt3aKbHpl5p42yQlgBoDCEM3U1FoO
	 MZCjZnGztQuFCX9BydI/SX4Tmq0X2CwDC3+a9Y5R+Nfyu5FDeLk+tY18fRH9TvKsmv
	 3CJdoiLKRIsexMN61jTmSDgYfJUtwQPUIkz8KrOgiGYtkIC6KbM8nQYLdA04jQJjpE
	 hjvEgEMQqak9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B8CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128979357.9810.14951321700759332405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de513ded9c5ff45c6a6a49786d8228b863431e4a16130f0165a5a2119fc54daf
Date: Fri, 24 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761289793
