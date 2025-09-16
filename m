Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EADD306B22
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758032396; cv=none; b=P7XOq4AqUglzzFaT3toya99MPhVcG0JYOuSeqyDzaRN8BZi3ghyFvVyr1d5BohfQvFK3UpLRKW20Iy4MtpV98th42vvskaG4X/bO7sthe5KUEYmBMt/UgFxIHYI90FTSzPySZn3IHSdT6HY0ZITfP5TDitRHCD+1M7+O9WSqtuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758032396; c=relaxed/simple;
	bh=yI1mBj6Aa8D9xCV3gYbsE2q+iQjtazRUbv/Ryh5cH9E=;
	h=To:Subject:From:Message-Id:Date; b=BlsDitDVn7dbm+QXovzaGaAEkLUNTIqvLbPih0jWQaARVSRFIO+dTxYF8eXMlrYKDXrVIkeqGFENYayUFl747X1nFspNpkj+FSE/Jp7RUm+z0WamjoHRYck7rC37ECYzqnAqYclgbUTbrR1+a+h53G8i37282PP4g9XVJmxl3bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuhwXzJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuhwXzJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9CAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758032393;
	bh=yI1mBj6Aa8D9xCV3gYbsE2q+iQjtazRUbv/Ryh5cH9E=;
	h=To:Subject:From:Date:From;
	b=CuhwXzJ7eZOyI3Ati9QvtOn+IogHBKl+yji+zMhJWSH3yodhqOoFbF8YxLHkzNFuT
	 zFEmCCnksgICcN6yVOkJEKRwEjkjQkMdA5hkUdFmSmQoc4MG7tFec5bsu+iZMrqkpL
	 Y4LkZbuOOd+asAHVJukmdfqVAqRCykxccWdsX8os2fWfM4QOgbX6rPKUlsgP2fWwEt
	 y93ByVWkOG43lAuzmNaFMyz5wC2tX9Su2md7JGhQ/e3hzPOJ50DB7oUVMxZVNBITAH
	 II5oLvf2KXRaVsxW3TOCrZYKPh1DR3BgajQGugBnkKYlFaTOf05f+95tYgOOrtjtPr
	 Xc9aKPVjfb5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004DCAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803239357.29549.2526698720694210497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682e4502b1359acd58cdb4ef2f8cce4e93e071254772c68c3faf50ff54afd957
Date: Tue, 16 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758032393
