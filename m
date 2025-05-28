Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB6E18DB35
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748399394; cv=none; b=oTxIPGIX+0fdXNknO5lIrlwqa9XOdQdcfkTFh09eK6/4OmeKFTRvyj4jwJtVUMV59Kjn7xY7Vcioa0haeoDiVKrJD9ma/jf6X0T1xtckmBKJFCNJXkVeXkRBl/I0EXtoZveJWNq3ENgASrjpTzgiNKZzQi5qBaU7a+rGWgug9SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748399394; c=relaxed/simple;
	bh=rHxViQzsjpg0b4jntFLu8+15XyE5jpbW5WsG9eFWMIs=;
	h=To:Subject:From:Message-Id:Date; b=NhmB7felaIiX7dHBbdaGZpfhGDKy4DgWJsViWIASJKtdFC+6+gWgvvKVbij3dv5VNwF1MW/HNtCrrp6MoBLX8g20EnreGHH9vzrNs+GypTtwuKM86UyAh5o3tqNuVqOJ5pNBARuDww1EdIP0cxdNVobdlYrTOLIs7u8/7cdONDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/LImbJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/LImbJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C3BC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748399393;
	bh=rHxViQzsjpg0b4jntFLu8+15XyE5jpbW5WsG9eFWMIs=;
	h=To:Subject:From:Date:From;
	b=j/LImbJmPHZj2EjUQAjhIO482Lh5jXKxZxXv+kE6zd9TZfeO/Y1noBCbo5OFidgN7
	 +x/kGpqUgoKLyI/qMkOsapipPFdzX2a7JpvK5J2y5c9hPGD4kohVuIH0YtRvJfaDQv
	 fXEU9bhDL6uCejZrvhN9qugsux/3udBwJJmylIHuQZY1z1KJ9MVbdwzYlCofXaWzcC
	 qMaHyDlm38rUnkcK63z0hVUMcykxQP+OB5EG4pKMga+Ye4wSl5O01WGb/2ZSETpGZ4
	 G2uMJ8OY+2GBzNvwgbTQ2FzpUuud7Argo8F1c916r+4czKUUTIwDciq3gB+jQh0Diw
	 1/O7VS7pi4m1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90974C5B543
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839939358.15902.11569312115406345250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e98668c462d575697ead3b58c7e7b29d7327f0487ed25e5d96493bd9ef93ca
Date: Wed, 28 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748399393
