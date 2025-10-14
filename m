Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F21426FA6E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760481594; cv=none; b=MTADLj2VbXdEcdacWPQi1t00Znrhn+xuLnlaH5PD9eV3oItg3iQ1Tz8kjc0syF1KR7ZWOU7c0r8qtdJz7t2azxIM6jRreEIUBHPhR/9LTQ5cGzIrdspckc+1WN1/RdKlxeoK1u73BVcOTGV1DNT+JW+HiT326jXXHo08bnnewiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760481594; c=relaxed/simple;
	bh=j3AUgISDhD16KWl82gxuW9H+fcwv44uad4QgJDZastY=;
	h=To:Subject:From:Message-Id:Date; b=YXSvN1w21wdB9UgD3DoeA3bvrTXUdgH4m2cN8ww1saAJ8eAZU/IGEkX2QRJaLxL1mu8DGmuoHzWut0KQQfhXGQQl20CDGupQa/oRy8UrIfrDfQBtQA399lHevJg5h7MMTaacfQcnXtafBROUurRbG8VTcK+oDQl8vJE9tCVtwEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxC6B0dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxC6B0dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED0DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760481593;
	bh=j3AUgISDhD16KWl82gxuW9H+fcwv44uad4QgJDZastY=;
	h=To:Subject:From:Date:From;
	b=kxC6B0dp69uakwC1MtdKqxxIuERF/x7AjyzceX8Oqgh8ZKnJiwVKikuMe3LT8/EK+
	 v2+beUJO+OUPQ6a3lskrB9d6mQL5Eymmkw/HueNRdS8mtrqGFzHQp4LvV/rTAo7hAY
	 r3UfYwpP74c7kNV8KXpX6yUbePNQo0EcjQLNvryegIvk/jrw9NTsH5IM335zBPaEto
	 xJ7gC2VjhsxSVqmY+RKm5Z03dT7b1cvsAslHq1l+IV9pojcfeRII/OA3HZy7a9S1Uv
	 zE1S8zmfGjcJMmmH0LLu6Izi1S2CtI6CJmsBTr77DtQZBpRyzpfBmpa6H/Ug2ZGe4+
	 45dNZVQzkFLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECC7CCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048159357.8697.6427264346386985821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025bef36ffab97b4fe98a137f6f83c69fdcbcd88adc4402cc243300c4b7b47fc
Date: Tue, 14 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760481593
