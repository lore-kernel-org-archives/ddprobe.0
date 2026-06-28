Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402CA23BD1B
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782668314; cv=none; b=MiCmQPhRFgZFLGicAdYRSHVV8bY7uEcp+agamynozK66ZDBir7vqPiF5nV9pLlW7IPl/hFhkz14vqVwhM6TXsPpersLqbvuwNQ2T0unLLIcsiVllVBmu3hkULJN1ZQ4+yEdeDYRo5qlMHkF6BUnB4CtTRsxrFhV32OT0a0W0f44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782668314; c=relaxed/simple;
	bh=eCDJ/CBK9WHREBM8Bn5F9ITdaa83oobUPUbzL4foPkM=;
	h=To:Subject:From:Message-Id:Date; b=m26veLHViNkP1lYn2Dfn/zf2xM73InxIe/hhI5BdYN2/wWOg5h2lsnW2tjcWbTCAkjMn55GOflwnWDpVhIAQk0MQgTDZGrfIj7v+ZaJ8Bk/PtxeHRmhjeBBQ2MX8ph4DOx1iZdeMwPza47DajflpjGgNbHCo3k28zl9ALA2k7mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYAF48Uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYAF48Uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DFAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782668313;
	bh=eCDJ/CBK9WHREBM8Bn5F9ITdaa83oobUPUbzL4foPkM=;
	h=To:Subject:From:Date:From;
	b=YYAF48UvjjxM9Qo4nQrBnozSzpWzU8hk3yMYly4SlCnUT3Y8fAEa5bXBoPmbXuASG
	 A6UcX2GBmj8zPfm7Jfxw7ZAxmZITY8eAzuZuSHzntQ+x6UJXvEi/6LnLT6uzTSudtW
	 SKt+nkUCfh0yovZhxfOIGiiCEDSwBek6fl8ahDYy1Saqjzx1TwC2FcljPuErhXuVHc
	 AcU4YTJrh/HLmjoz8jor0vDgci6rpgovSaWJnt0u8Vqgps5Pvavu0GgxjemUhGXeho
	 Cne6noWfD7WVit2Yq57mpb5QFHKPAuHijoXj/FysxF6BD3WlioPSSQyK1dmilzY5/S
	 dSHUd9Dez8NVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DA3C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266831370.27367.5924013236544296134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d869ab8e4509c680b7eb5b3f2415cd799999eae0bf43e97753a50de5bb3bc864
Date: Sun, 28 Jun 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782668313
