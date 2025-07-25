Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D49A155C97
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753469995; cv=none; b=Csf+lOkDeoiSRL0Px9jOwPtzHc+ahkISR9so0u6TBDZLYWH0PR+65s/oGzyWbQ/Y/DWdCveFunXPPMfVKHKIqKFlge6XQFCDeS/1Ob43Vf/Bw1DdQ2ru1HzQKssOBWuMPAui+f1m+quQm69xWQRJs9nfYLWNAUpeNlDS6/DvJHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753469995; c=relaxed/simple;
	bh=xNidAmaFDK1Dzt04hCw3hzUqS5Wh0XOHeVDKItfGgrg=;
	h=To:Subject:From:Message-Id:Date; b=CVqFO9yV3OaA3NcjXmSZqKttmDwwERbzoa4oXtXt2DrnWvqFnkP1dQHFeevTBWmBLT15CjLU3scsxG032hu/XfTJ+EiIc8P328YHjjFo4FvCi1YvFrPj0Ja8EYebrpBJ70LCoxlE0vn4ghvr5PemAw5AYVjKQ+XNxjy3XF907Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bD6Qor+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bD6Qor+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB86C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753469993;
	bh=xNidAmaFDK1Dzt04hCw3hzUqS5Wh0XOHeVDKItfGgrg=;
	h=To:Subject:From:Date:From;
	b=bD6Qor+bnLU8pfm4z0WN2++sOEbuI6uPbL/gGYChKT4gw+5Vm8sGE2YzX8uzIrK+t
	 CfsKh0cgJGaD3wUxpcGphvQScC37NDbOMfLxsuIjhpXJjiYmFSaCAb7Fz9YQ30lf06
	 2uNgWJ0CSSBIFmmJkqyp8LU/9tilANbCxgB9Tbwb/usud1YdOwiWWGJS3rcm8QYoUx
	 UcoMnHc/fl5wKlPkxzdxTIw0RiAQ3JiK25OmODoyXb7Bo+wSZey7pAskXuB+5CHRU1
	 37AEn/Cp0Z8lQp2FjBpKUwCs3xFz4r8L8KT7dmcS+/PcgfYa/eL/mzk7UkyMIKN4vE
	 wHfFDwViNt+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC6C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346999359.17701.13779099576841473365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8078fc30b5d58d8a8b2428365e70fd31165f0c9fe300da7bcb4c8932d613ce11
Date: Fri, 25 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753469993
