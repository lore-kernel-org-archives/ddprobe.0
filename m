Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5127233939D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789507834; cv=none; b=TKzRKyPuPRUMRP/jUivLTMUQBTy5KmOHckKmpKtPqC1PujJ+6popiETllSEnV8HtdyNK8Jr7VmHO5ykpDverIGuIugvXzMlQ3UUwPrmAXD9L1TJDX6FLZm7cPyLJ7QKcYznFPtUShHyHpicf3RJJfQVK/e2dbq/E25UmjH45zwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789507834; c=relaxed/simple;
	bh=BCGfeCOGbj4/afG58B9bqoVzqgNH6E5jfOs4eO9GM5U=;
	h=To:Subject:From:Message-Id:Date; b=eBAyFkzd2FGwUv0X0Utdjf15wQB03i/6yaVYh4hGbZaeEF08QDoaXF2xRM5dFqX4IwwTdWfJAddo+9vdAsCk03Qt6eDvT3WVpjpTMUg08S2eW3tTtnjCiShiCKLjpIkD5TbJKzQQPe1rFNVOCbRHxhOjduXIUpzmnGsAUrLR7uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cie63t52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cie63t52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59F1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789507833;
	bh=BCGfeCOGbj4/afG58B9bqoVzqgNH6E5jfOs4eO9GM5U=;
	h=To:Subject:From:Date:From;
	b=cie63t52B2tVr+oo5KhBYBzg+I21A4NqAvaaBwKS9EHRFiOiABLUhH8ZcP10DdsJR
	 sq7wZAljIlF1MQIuyB5yPTL0x5GhrfNJh410IwFwQUJD4P0l3l0qCBzqCg559PblKx
	 xfV8mB3dpt3nas4eA5hBpXXlU0kK/e90c/sYZBT0Xn1R0n5NzksYbLIbxMDEkI3n2m
	 o1BTiDqQjK1xCGfkdPVh5TGfyMmgP4q1YiyC8of0r20R6Ovf91lOOFLOKwCevlAe0B
	 cB1rJ4N2LMt9hDKI5umrNIWS44CSy5R9ec9izVrxnh9AwejdvqBtulW6SQucBbFQNp
	 G20FXhZz8X00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFE0C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950783368.29001.6108730214912137598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932827235a0af3bfb38092484968f02f0114ba9dc74e8d59b458a21b7d28c073
Date: Tue, 15 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789507833
