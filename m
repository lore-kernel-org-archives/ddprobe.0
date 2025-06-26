Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CCF194AD5
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750953594; cv=none; b=VoXpXcWlyxLs8hRnmn8m9EIYQSdUoIm7M26y/MtMD9LySFB2p5f0QDZPC7bFCGdR5xXgOHxiPTYNnfdTGPoraTaafkqKxEmKXOQghnkfyCkED1p2gVUw9mIqQWy9kfP+to6v460uouiPU9xa5woxdlqskmRaxn4DgbeV+1yS++0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750953594; c=relaxed/simple;
	bh=fe8y8ru2KvgBdGZs9n3ROlHeYyrhRDKkaDRYvv+YzRo=;
	h=To:Subject:From:Message-Id:Date; b=eHa5amJKP09WbxOIW2E4llCzs4XO2Z6nLlxYN0DOVAy401FSIM6vi6GOOhcONAS+4gMMlPmIqlZQGYDij0ZmnhafzIDPS+HGuNgP4TQbYAPFVUnCQ3vcxeYfcuzWApPFRZZGhB2kCQddePYhfBalXHs86Pa6B90tvZN5uesf58Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlbjnI7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlbjnI7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750953593;
	bh=fe8y8ru2KvgBdGZs9n3ROlHeYyrhRDKkaDRYvv+YzRo=;
	h=To:Subject:From:Date:From;
	b=UlbjnI7Qr6QPH4uMkYIzRb2whvBUP0JpIRSueHfjolugQj0XkmrWtvhNI+/KOZS4h
	 mf44Vb3ge6YSRxTbQ4a4kKrhpNC3rwP6Ufy10SjGnwd+ouUvvy8CnVIZqlTgWTkcRn
	 C8BPjH7MTmbPbArZWOXA2oZhiaQWxMIrvT1FoshayPL1om5o0uAKRxJe6pzpMVHFGc
	 ueacCyHockq8imGvX1n/baBTNULJ59FSjdGWoANNWPeLD69UYBTabicKxqerEFUzhB
	 wb1dY4zum8lAG9qA/SWA+km3YG8+ryjNoAptKqF0MB/c82sRO3CrA0RYV0dDbb1CtT
	 GJ1MXBIkhTcfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93180C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095359359.28211.8281598264480733623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a923948c0ec8a4e61222c9a0328e6cfa2d1284056953ad8f63a334b34d305b86
Date: Thu, 26 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750953593
