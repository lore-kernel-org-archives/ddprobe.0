Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A8F3FBEBC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781003134; cv=none; b=PIoIooOvqB/E/mOYeKH8K8KmRq9JRG3tjqX0G5caY/12sZWp86E49mhpIXXGoGK8HhjIxLzXx4kl+tNVFu8aYmSolBhPQbV7aBDYEpNPLdd0f96C4LmtIXnGHw+Kib7U8ZznawIdUNXxq1f5KxaeUYFKeycDXHM+WWAh1Ki9xAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781003134; c=relaxed/simple;
	bh=u1Ysem2voFoZiPfIkQRuWQ80L1B+D42cotn6vvY37sA=;
	h=To:Subject:From:Message-Id:Date; b=kjm6HxoFupWNbXzqiDhwqqohCQaZo8kaacSxhoRjWzHx51adSEtPnwXmBvvuM7jgHnlZxgU/8Msi0fk6ZReNk7viKkKtY10IxSdomUX8Ay7A0q3F8d2p6L332BW/Pudip3MK93qAUz8w2gyV21yg1maiT9KIkepfheFc7Ui6uRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUR5Y6tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUR5Y6tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781003133;
	bh=u1Ysem2voFoZiPfIkQRuWQ80L1B+D42cotn6vvY37sA=;
	h=To:Subject:From:Date:From;
	b=SUR5Y6tp5yh693+vNp3FP0MHPUgQSJIRtSKGob6BF383JJhW82NERqbmpHJCma8dD
	 lUK7qGdJkKpBC1MXkowm7i2uTX91857r9R5J5HQ57v2P0Hxcd9MWx7aD9foFZmVTHZ
	 iaS3d+lfpQl4R2UOQj8ePrpIOsA2fT1yAt/mC0ynfw3g6vypiZCUiIa+ZEjXpyOFNQ
	 eZXONQdvSIrKNEexzkhGxcT4e5N8w/WmseJLmPBHQxMls4cF+WgTPN5lYwG24u5M5w
	 kqQFQ9sgStw5V+5L5jF9dVzLQr9pxRBOAT4UtQwuBzOkyUTLo2BVk+JATUjVBs6I4q
	 g35SIL9tRtLhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC28CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100313370.1589.3837198886888953821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fdd89d0d78fa4ed81f9ba1b69bd1a17925b06afc4e96e3f12f39145e3dc570
Date: Tue, 09 Jun 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781003133
