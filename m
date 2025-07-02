Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BFB1C6B4
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751428794; cv=none; b=HMCvmTfO+XkV50ADnGY1JDIO2EeEqtswFgklsnxH14qAXZQTbKgQQMH2qqzQo211hjteq+K23YTBqrFD0UsNW+LDVsIxTurmmqSebhwcFTYoYhRueEVoyg3QajI0o9xIJYPeIMQCa2a1FEOQ5UndbSg4VlXv7rUIIqZYkR2XRqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751428794; c=relaxed/simple;
	bh=HXI463ggozcYBjBwF/tPFDDCqx+waWZBJkAY2nUpuog=;
	h=To:Subject:From:Message-Id:Date; b=d8eiWxyWX36Df14UxXIb/8tfxeY+PwGJBsQvp1ut/5EMRYUI9IH8vjybmQJdo9U76ZU7kP6zNnjMG72FBsG3KEQr2E2uNh2krSymCMfZdZ4qTlfzOLrvdJhNejzyLruU9uxX4sagMUnchuYQJPn64tFe6iLSk6KG7xASdn3Wjaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poy+A3+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poy+A3+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E2CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751428793;
	bh=HXI463ggozcYBjBwF/tPFDDCqx+waWZBJkAY2nUpuog=;
	h=To:Subject:From:Date:From;
	b=poy+A3+uhi7c3qY7jP5KsYioFq1ISJCqEqpUdklKDC/PJokioPyiqqAQ/dZ7XFjAn
	 c2HVEL3olj/gGYyFPvXf9Ih/kqBCcN63v0zt3UX90Ou8FPmpZ0E7UCf8XQ9U5CttzA
	 DYF1fWs7YXCB6uV8sTgNyFyFqeT2NAp0Na0OsUdPcMr3JrCYAEdEEsj6IsJaZZlQdM
	 hHrXpOwswvhM3Q9bI3uD4g8FC0bnu10CpkWdXi1oqeQ/GAb8auITAklk4wEfNClk4N
	 k4xJ5KS2eoPCBd03ykvXWlocGpJpUVcyXagP5YYFDgmrS6J+8EVx3bancHhXAwBK6b
	 C2JXHc5s4xcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933A9C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142879358.7724.2259033785957723266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca0aaf77add6fc58cc19a783fa8b083f103acd4d8dfb49ff9c9b7f81a7feabe
Date: Wed, 02 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751428793
