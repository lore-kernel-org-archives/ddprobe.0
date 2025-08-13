Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368B630E83E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755119994; cv=none; b=R2NLGz8OvcDTahZfur4ymza1BM/kktbKODG2BwOEbZiStir0cekBqJpYZyuyNBFC88/ZdwDey0Jsq6sD0LdKQX8LU17/oH5G9AyQlp64tzLD31Pz+rFKtKST5LTMupQPaoKw8N+hWW2cZ7SQ7DC6EsbFx9qWGg2Ah3MGPiUVSGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755119994; c=relaxed/simple;
	bh=HJDrx0Sn2A3NbHzgObb+ACjVP5T1sCMpkZEwbEjBPcA=;
	h=To:Subject:From:Message-Id:Date; b=p8/wi/o5MIQjaZ+bGzLhh83qwNJtUH89jwyASFZuR+cbP+JckQOWz1ffZ2lGOP0WYsd8EI0+52l7iTHmqQt1KV2Q/0Q6dLgQ/FNLvGWdpYo4u5rK2yRCTLvlZXmJXXW9dy3//z7d9PSMkudZ8NIuJcZg/fqilg+t9wZAaPISaQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M24CXBVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M24CXBVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C782C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755119993;
	bh=HJDrx0Sn2A3NbHzgObb+ACjVP5T1sCMpkZEwbEjBPcA=;
	h=To:Subject:From:Date:From;
	b=M24CXBVSGNVE8r0p1wwWc3K6+CbJiUygahrzXsp2FK8D6zgNT2H/ET8pF1uuSYT6E
	 6c3MpRkgz7I5GmZsAezqqyoP0uCOIILMR/5lhUV/2XC+tD6PtenthGZ5VmsoeOz2MK
	 gbHZ4lnhIYdtnENbiH8gBGjo2qGryizMpFldWgHuZvPNhEzFws7yb/Poxqjj1hP++8
	 FA1gRD5jBVr8jrLhV7ZNekVh51S+358k+nf3L9sgoAruhCz5x7ymprhjtQLeFtbul/
	 h5rnhWHOU4ZVuG14WntmRoeusZRzNtZcsfDBn1ny4CmUGyQFC4Wuryq7CDpp55IOq9
	 1Mqsa6Mv7qRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A9C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511999357.13234.4667122743108735409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57c7e51cc3a66355ff3b7450f4460cb1174e4c186e73ed27cacd29e7a2bbefa
Date: Wed, 13 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755119993
