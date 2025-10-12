Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FDD20F08E
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760234394; cv=none; b=FymmOlAqW14YGaTt0o2ibqbg1ICIRrgUcHINQOKUi0iVfAwhdufj4wHLsIHsJRGVQCsPFsICbn6DTCoOqmSVXf/o3bWzmDaKY+QPOwZPKAp1h7aTeuE6Yjiqxb+FestCnyOlZ3lzmj3kj2Eb53NAnwMSvneORIGZMrXOseR9ocU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760234394; c=relaxed/simple;
	bh=bzVBTHZts3sFWr/IKqPE3NdPlFKPog4J234LvoAhv4U=;
	h=To:Subject:From:Message-Id:Date; b=q8pPfYpg8PVaRLvUaf+yn3My+KWsJCjxvTP1Bfc0CjIH4m/pRqTI0ly98X0eu19w2sPcxnOddMThBjsU3L6I80CWlL+4XD+fumKlqPAoNATPvD69lAymRmRvCvaQPXRKpGROkO685tz/Nr9n/9fOjAK4XmF1VdUjUGUFgh9QQkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqPYJZLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqPYJZLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F9C113D0
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760234393;
	bh=bzVBTHZts3sFWr/IKqPE3NdPlFKPog4J234LvoAhv4U=;
	h=To:Subject:From:Date:From;
	b=hqPYJZLn+2Qnmx6+tqNx7XEbk9CBKI6u3N0auSbZIlX/fzN8fjn4wmbXnyuV2OFJJ
	 NdK47svLARhnVGFJWcroA1rdGvgaF/Vu+GBQ7zrLVio4X3h5t9z3ANzmZ/X8LSjbeE
	 AIDnvtaV0LhEl/prkfF8Wk4ZOmegNoUN39GDxJK/kccCUQhj0XkxgTWLYz3Eslp3aL
	 PMqymPj1bS9F5VLdR15YLgrC+jYtlfJXF3aHk55v5+1/Lk1QY0gwiDtT50h1BiVX1r
	 n356X6lXkIQW8q6HQtsIdRQ5R9k582fMjWkkuRR+u5cFHxMsIGFIvQ/4TWqqsuastG
	 k0L50dTiw0kvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9475ECCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023439357.8055.3299194153389326896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a9d76d1820abb0be63f5e553160167ce4b561c729e073ff2647048dbd94647
Date: Sun, 12 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760234393
