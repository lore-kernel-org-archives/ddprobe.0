Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC733859DE
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791493834; cv=none; b=bojTGD9XvcE8WDqsa2rBYjTpCD8oT0o93BbchifEg7FB+ij/98HLp3WQgArWvSMfQ+ExGep17ltfu5xWTZr+GEqT6xMN6FpK115WaOIhNbB5vutpOGM0OmRLvkNHHp84EPR8lWYqS6IKmCAqxQtLMP/jrKWhjmsLLTv2kiNv3Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791493834; c=relaxed/simple;
	bh=FwFBnzNro/jjL7nM6MxmE00ewqz88by98K6oCwjwH2g=;
	h=To:Subject:From:Message-Id:Date; b=mnFCwlldL9P5jbLLrsY5KD6wWhNrDvNL/i0KQ1+nQkc7IEcp53BTf0SM713Qcg6hg0V0oN3V5OyMwnF4TQe1dR1osiqxgb8uf3YufgXw8T++wv/xJc+WSlVCbynqjkUfwGDDnfSLK9Wk1XsiHaLWb1bUCMoKwDy0bivciUiGbuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnLzJaxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnLzJaxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB3FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791493833;
	bh=FwFBnzNro/jjL7nM6MxmE00ewqz88by98K6oCwjwH2g=;
	h=To:Subject:From:Date:From;
	b=HnLzJaxHy8YQIRLTIkg/P5yxUwa3KJphELSlTByd0Mb92N9af9dBtEulb1YSrgiiV
	 mDptZskHGTQy40iiDLPXvIiw1lteIBznZqK4d7oSCw8WyAaFSyL47CYRZ30cbUD/TL
	 M1Hn2wC5Rr3h7X1CGq7OcPaG4OCqT9FIWg0B3lCnOpZA9k79NCyGDfbwZ/HEbXvlRt
	 fYdna3LMhe1q0uC3tU2TXV5v6fScla45xI73qp0loIE+AaIyzgHE4kMleXCiuTssVI
	 hOyntlyf19GoRmt2HM9X5VS7okZ1k+o7EKGON7JKEEqIyf49b8alXoyoscSJ9wGyqq
	 s8bmmsX1BB2Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E71CA6016
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149383371.30070.14940138047508281592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e23c8eaa527d38c5e1f2cc402299145e8ac085aaf5e4b9f29ed94ccc26f3de
Date: Thu, 08 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791493833
