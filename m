Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED4444C63
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747106394; cv=none; b=HQ/F6psttU2turR0kk8WYkHq8IIPFGiYN2+aZNHqmY4aL1MXHYP2Zwr5j0tuSQcv5Ze9BiYXPMvE7/LHsDtVQPGrB5ptttoucXoNxIHCKASdcJOlt7k0bPLY0PtZoCEorjjdHv1CXpTbBblBQQC6Du3eZ2t8cPH6rN0lxP1z090=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747106394; c=relaxed/simple;
	bh=ZPqtwpscU0jdxYpVHYlByDuB5TxePXeRIx910R4ilqU=;
	h=To:Subject:From:Message-Id:Date; b=M+1fS3Lm3jx1WqMHfvibfIbSBwaE6wIF+E/FiVVWWycjj+LsRxvq706x0pFtc3l9yfo4ReLnlKiv1M/y20TCGqUX/oMqE5C8rD5oiFQRy6xqyobj52Voviur6r4KcmsM0DL2wLYXFUFdXs387nYkt71tDvbMk8HlKk8eMXiESlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwOsffAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwOsffAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0957C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747106393;
	bh=ZPqtwpscU0jdxYpVHYlByDuB5TxePXeRIx910R4ilqU=;
	h=To:Subject:From:Date:From;
	b=QwOsffAMdffSDsJTTXmVDsESUgHFhXPddqXRbUKuPUdYfqJ3ELdVihrFdV3cmdaNi
	 v05Jg+S6spxLHIyIRR+xwnL9ACgtjH+kg8tvUtereaMN5gUoqm0KTEsF+3K5Li+T8E
	 AJ86BZMluEPiVwEsr6oj81TNkOwYx3SgLiECuUgHmszoPghnTPLQ0EpvylFkuSico7
	 IALIXY4InOhpYuufOD1ujCQEwkng92Jp8hRdOERVokYJcQWF8KnNn+/R79AEPI79qC
	 RRXeNLCwrTkdHaVgcUOLJSIylLZVOR9x5WdenNgERqFHEPahhLJp6NpQmCBTNQzEGG
	 fhwAQmEd1Uv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91752C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710639358.26179.10037135691851059557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d221eb55f6db877a34b8bc07a6cbc91fee527309248373e99de7ecd4b0a553a7
Date: Tue, 13 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747106393
