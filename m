Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7B52D879B
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765839174; cv=none; b=QRYURsTfEgGhx04tAyfLTcpqmRibIwJy4QlU+4vu0r3sJBbxoSiKrzb5f+Vo5EBkHtJQOmInAQcAnXgap3MRqw7TSVfkrbHLIJYVxxTL7w62tNiW/lSn+PctNnBOQ5tLlnzy6jJL9PIC35JIFseMuL6+snhrw+O5kjSkFaUlzj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765839174; c=relaxed/simple;
	bh=Ckh49wS74z5mJahcCg3B/dV8qXFX/Qv5cozHFxiJZoI=;
	h=To:Subject:From:Message-Id:Date; b=fWABb81usTcEWRbbelPePUHymnFfb7wX4rUG52flE02OCPBlwjS1k1II+Nsgu9BHTQEPNJ6eMQrkQcWwdaz62+62fyLCxvFcwfS8ZSRXaHXnMOhCoKOhJXkH8EvzZK5BNgVxFS0BoebC/tO8vvx/hBtRK7XIV6pkH7XpbxR85Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdhBSFDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdhBSFDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3045C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765839173;
	bh=Ckh49wS74z5mJahcCg3B/dV8qXFX/Qv5cozHFxiJZoI=;
	h=To:Subject:From:Date:From;
	b=PdhBSFDzvqduFC3IiXJ0lA0B6HOKSoNguFUo//wOGGcrS9U50UxmeCb9T5/ycNeDe
	 uNckIp2BcdZtdo87MQfGaa6UpYHZFHueg3XhAklzel5dDUil9AsolioxKJmpnG8l8M
	 oSvpfE5mgps7NlZE9kWdCRep9pH1eL6c2MTbq3f583MtD4rAFpwCwb5BALGYkUAHYw
	 G/Km4e8SfpI4nkM9FFsNbK6VCXvLhTFrfAa0p6kji0GjeWumCHA5ljCLw8qa/q/2P4
	 QV0keiTQVL1X5aYTYi7BG+hhN09cuzXwYW1RJAAsIMfU7YpIRMVntShvxh8R0D4f3S
	 HQ1ZTx8Ie7DKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A41D5B874
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583917358.15646.16135629163465881256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 102e98c8c7132e069a62c2b315b0645aba6f5b87cefbe4c1552ceba95e08fa3a
Date: Mon, 15 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765839173
