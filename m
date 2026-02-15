Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F0A2ED848
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771173294; cv=none; b=Ij1wYA9tZymH4TD9o8qYMRNOi5yEup2tkgORSXuGqbMwTfifxjefu/BCHw4tfBwOO3bAmXVbUkyEGfa6JmItSdTelZsUCHVvWX95lB2yOGCL3uDjbryLAOKKMMwRZSW/OfIViJurpDQ+FE0SISeBr4kMvYIoksseG+L3s5X5ZlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771173294; c=relaxed/simple;
	bh=e0WOXkB5sMuJ/oAF/TRUR7ChQU6mG+khFluFezQx3E4=;
	h=To:Subject:From:Message-Id:Date; b=uFgXM27wB3BAoJjv1jwWStXEPsngqRrjDvYQlmsmm2ZSAKo0fb0VVDc+QOpQPnsHEB4o2Qn9CDBKkJPaDW6CHItZG3BCCG6SK0rbXlWjhtJT4VtxR0yR3CdY9msaZ4+lzUzxZvU84o91jOpcZ5Rt2rODa2xahdzfDFtozwJ3b7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qR07ZVN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qR07ZVN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D14C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771173293;
	bh=e0WOXkB5sMuJ/oAF/TRUR7ChQU6mG+khFluFezQx3E4=;
	h=To:Subject:From:Date:From;
	b=qR07ZVN9wYGrdsukT+AFiwT31LUqWLluWqUOnQ9pWollL+Rm66PvTxtS/2Wbl9AhU
	 eAe2iNjEdhaeZQx7bwaJ7I1lboJrTAOuPz2n5AxD+O6lPGViwtOCzNUdBIBLTTiYOg
	 QFkss6G9lil8twn9HiAq/zH/egoRZvVYPkDxMCsxZdBy4KY9q6CB67OIEXSAoC3m+q
	 ijWmJB1LN0J9dJe2wdVRsOOD7LbstmwHNMhlgrkVjQ21T+1I8Bm2p/6vsl3DTY9hVo
	 jbmW1eevTj6rq2QYSXRJSglir9faSF0P0WArnmMSh1DUhLTxFyNEJ9TnLVwla04hU/
	 xN9fXOsicA0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D93EF587E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117329359.16238.17718093337499551160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5c5d5a6fcd630e7575b004f96fc7b9ec6a9edc23cc746110ec00760880da6c
Date: Sun, 15 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771173293
