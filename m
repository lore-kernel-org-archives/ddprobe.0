Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFAA3C1F4F
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790059234; cv=none; b=F8XiYu2EPtqIR4OpjRfEj/u2OjtOhDlffQiy2Iad5ApLk6kl3nPRDs4Y470sVW+EtVzyhSZ66EDeX296rct4AkOMQWLm+YPT7GvH5j9MzhEvMJb9P4d0ky4z7QTFnA2202KkI8d0/NnDiIdC6gwSTX5q6U8HuTcU4x6MlaRwWZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790059234; c=relaxed/simple;
	bh=Kz2NjsOUfLKEcS/z2z3ZV2XyXxgLnKTdGVjfhp5iI5Y=;
	h=To:Subject:From:Message-Id:Date; b=dJVxwX0DSTi5r0B0deOQpcLNpMitlxOnH2ZuuT46KnDcsNLarLpS1LmcoNsHcTL8MiL3i0k8949fll+z4Op1/TiiVvihlJOAwuq5aRK6b750geY4Ysp52GX+Ib8v4ZMZbAN1MrnIt2UsOzbeBMn4Jz/s9UG+rGKLLimJW6ER1b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwJBUkMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwJBUkMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2452C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790059233;
	bh=Kz2NjsOUfLKEcS/z2z3ZV2XyXxgLnKTdGVjfhp5iI5Y=;
	h=To:Subject:From:Date:From;
	b=nwJBUkMBW/l4Zsj24RVv/taok+Bm+UN9oDox+hZjeLhcRh5YfmBuG8L9CGmGPuwpa
	 U9cxsF52Uo+eGiDN0xkiKzYsylW0lQMjOB/hIRIzqsq9JTX64mt8yMYoOdLo36PSiM
	 n9A3ChLHBlpsSgv/Zhd8Iq9zjAmvQefmMaSPpgJqKe4nNat4XwZnujagwlOIPmRFqn
	 o/AWGbQ5iFiK0ilCUDDX2r+0EWNlqxLT9HSwZr9kqokw+ZYbHxB+ObLdToiA/Z/dhg
	 g5lBn/SzWRG+yKPdufDnYtq0PJmZLHuWJ2mJANORc4jUX9G5auDGQcpfevC1jfOdhn
	 Hu9WvfJCTKKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB86C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005923368.23503.8086705541441758970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36fcd0f4a284dfa876e128b5a9d2306ef834cc4407288d04459e6032b5409ce
Date: Tue, 22 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790059233
