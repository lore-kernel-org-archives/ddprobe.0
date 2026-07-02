Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CE530675F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783026514; cv=none; b=eIG30RthzZaFb4ADaAzkv7Xng2aF7WZfHXRNXSJUGVw4PNeTbZIkXjWEZ2d3NuyXwJ6g9LD9iSK2IqGCWEbNi1AqY767I+N9nT+jYb6EDXCPodxpDQq0hDUn9oSt7ysBwgvdxHxPeQrFOcMWx14t2xJSPQUhIj5pM9fWaPsAixA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783026514; c=relaxed/simple;
	bh=1sZcZSQs9TbQG0MCH/X7oqykub4ebUrL6uy9tlfn3Ys=;
	h=To:Subject:From:Message-Id:Date; b=dJU1GIj23mxt7B3gKKK3SuPLptZE9IzX5fbofiwcmazt1LM6pQkP9XxoR5fucTPYWvRTPYGRswxEoT6Z3YSd0B/rOkUmoDthziMR2trFlsc5WQLeUdZu+y8Zi5ASvfLOe4VtRlcsiZTMpu3O8oaGLhhc6l7Wh4jdx6Wo2xtzDN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3tpGMrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3tpGMrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C17C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783026513;
	bh=1sZcZSQs9TbQG0MCH/X7oqykub4ebUrL6uy9tlfn3Ys=;
	h=To:Subject:From:Date:From;
	b=N3tpGMrU/ppK9BIAy0WemYX00CCyV4I5mgHNDBsYo2Q7pD6RloW+sQoIrBi/5p4fp
	 Y21YqxDH52U/Xr0gMQCUD1iXTAOT1dEdP02wdSD3DUyWNvg+akVQ0rrkOEuJgrQByd
	 PadqfPE0aTr1I0gkHQdCQVklsehlDxSSaOV1EFmOlx3VQj5SUPL1jzZ6Y6QrpyRlA/
	 anAwW7Qurn+r1QLIZLcpBPYgGPDqcukmH9ukrJW6SuvcebU2aSPEU/x5q5ssRGwi4B
	 5P+oTjWh44TjLCBC7449oabXeQSOKFmvu+vPh7ojQdb+g5F1UcyMSKuC61Up3l4Kdu
	 N5/9xirC4GPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBDBC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302651370.22502.5810509281576356488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78c02d9abc55712a891d2a3fb2a3fe5cc7eb72fb00ccd425ef84260934a0481
Date: Thu, 02 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783026513
