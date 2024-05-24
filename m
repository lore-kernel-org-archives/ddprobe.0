Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F90012C49B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 14:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716561203; cv=none; b=rntX1wn8wwCkpIk7xQKjUxh+Dc+UCWZRaWjTqAy0c+suDygrku8I8c08i9Hptka3G/P3OUoYd/Y/AL8sxt3vTegwZYtYzyywHnaMi5k+w+MyPIzv3wwXnFbzjaC+AF2HOhN+EdExaRAAtCGYp0Db1bGyKaMoHkOAZkqCiywjp/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716561203; c=relaxed/simple;
	bh=l6TyuoGvJlJZ0u95KciZgkOoUaTWqAwbCQtK2ht+DRI=;
	h=To:Subject:From:Message-Id:Date; b=BAHPpR/+dQr1PvhN5p0/GLmOHXdbw7fWo511XDDRYKgOeIL/qyhWMRUk8VgrtHO0ReYXammfsvSnR0ik1BsOjjzruLW5TP+/UjfTV38DOLog3Vu5mGMmEdTjtGGLChAZT01qHkvGh9Af6gHC0N5DYb1hzlmiIzw+b7ZGDrPOr4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU3ZR8AF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU3ZR8AF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13F0C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 14:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716561202;
	bh=l6TyuoGvJlJZ0u95KciZgkOoUaTWqAwbCQtK2ht+DRI=;
	h=To:Subject:From:Date:From;
	b=jU3ZR8AFcyr7Ute+vbBxcAHkyAm+uw57WsGYrxmeRkqrY1Yfa6J6RRgs7WF/bKKsg
	 Tgt6yLiQy8ilCEdv7jagSeDmZXTh1LZRszrlqZnT/O3Eke8QqVS/WR0keFKQ6FeTps
	 SZUFULfw/zTu/SjVSkTJ2iHE5Eb19sXedad0x/KgxyGZMk9jEhPEtapXsEDPFw+lYR
	 xX21dMTxAa6LqxUGjF/IRuwH24+SAO26YVikqaGENl4bG23aSrD5fHeg+6pK0eHtm9
	 eP2hkVHBkLlDbNaO7A2tOdpICf+iUW2x+ridX9aRbGSAKquYaMiu/k6ohLJIEONBcV
	 0Ynn+vsyS4P/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14F9C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 14:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656120278.21605.9212945267646294208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39b30523c40a7de9ec503fbaea8384f7528bbe205e6f4130ba6ec63c01a60d8
Date: Fri, 24 May 2024 14:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716561202
