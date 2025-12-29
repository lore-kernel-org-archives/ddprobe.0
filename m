Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D343A1E7E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766972634; cv=none; b=GWjWxRCyugD717eeOTQXGfmO+qdtwt7btO8tBYhTcPk0ZQVCTr6gV/Kdg1IA/ShE5a0TqSrhNT+U6/N1mcyhycs34QgO5VaYvDvLcvY9Sdqotu+6RSezyyXM2dxEzIHrhjJsLWW5mLC0Wdda3EiRGNRDBX6PmAs/nkgzHXTEcWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766972634; c=relaxed/simple;
	bh=OAPxKOBC9CZab1jMOmv1cACV9xXrpuENjWEOVgdIFxs=;
	h=To:Subject:From:Message-Id:Date; b=U5b7bnLNLL31GGc1ULiNlaimYCtmYd8dXiAQwnz+rpFePsZKyz1KZ1Iiq5VqI9a2nOFWbHBSoJrRQev7puW++CxhrZ/sL3TtSedI+35HjsaMiAVFe94jCmQmXdFqlASxzYnXyb2x10rlARQTbqw8xr76jQKvw2g/t6uE5mSDM2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cj8EjAas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cj8EjAas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62A3C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766972633;
	bh=OAPxKOBC9CZab1jMOmv1cACV9xXrpuENjWEOVgdIFxs=;
	h=To:Subject:From:Date:From;
	b=cj8EjAasPL6zsmetdLT5p9UF91TTrEKD5UATxWxTBcS9rRXLMZJEYUllxcZwZnzzk
	 U6tpZWf1OkiIKvF4hP7A2gb+/yEt1XBKoZuc962/2945aSC87j3OU7ENRAcyGWQC2y
	 QDpW//tuEoXCgW+Y/bDeJnC2iYYhDc6r9SS85vPxIrP/uhxTbEueOdegpWHqlmzTD+
	 ZcH/iwsehQ7h4NkEEWO+repVPuiV/RZ63Yu0CSeqdubIMJyPMzsvw7be4V9tzqY7DJ
	 KNZ2sH71bbQIuyAhtaeIlMJcOAcFZtt+wBaJtuAgqQmhKKWu1L3TyIr0pAIXuE5uFV
	 q4xOyYsBKUlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1760E784BE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697263364.14696.5718108023865218061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effec8eb3d6448bb7d3a849f6e2d38c64aaf4f4220a7f39d076ac3f8232c6456
Date: Mon, 29 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766972633
