Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC80347FE3
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761763194; cv=none; b=hEHMJ+6jDgq9RELCFmYSa6S6Y4Utv5Q8q6Vz1QoU/H0cdGY4BBSLKvAWndS4TRY+lA4bKr36pCDdQwegY7ZGwORabLzL7ANsgs0jJ1z9qTTqeNi/3wJxRufaNjg7AZyU3iafGvLbgXU9p2hsGb70Apei3LsKdJp64S4BdhPcKR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761763194; c=relaxed/simple;
	bh=x2krKp/yeIC4R78R41Z6IazOMZzfB2hc0trVO8w5n9c=;
	h=To:Subject:From:Message-Id:Date; b=VJneZakGNyXtm8RtkoSwvJtwuV3YHwDJetjszUMqXFCRh/jcydr6w7PAQLA5hgcLl4u5o/WA7iYFSILJf/Im8td9xJ/sMGDNbcgMJMkoBaEAWg8Zm9cbJ+O9xn+6RuF5ZM7HuwgW2S13vIvo9Gg2yp1pdercVbvqHqeH0xP5sXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDVMZTtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDVMZTtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1194C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761763193;
	bh=x2krKp/yeIC4R78R41Z6IazOMZzfB2hc0trVO8w5n9c=;
	h=To:Subject:From:Date:From;
	b=lDVMZTtjVSqJQ6kWZZZcxPALuo2qZn5DoVL9ZIPXL191J8XW6aJtiQV8E1BeUsao3
	 o80JhiQCbJmoucLzgMiiNdjQ5uGoDcyTRCVf0i3Jo9qjYNIfIvpvdi93xsGoxAO22I
	 QuloCiYtRAheh9w6SoF+wdQzM9mgfZCqqPpJyN+RWMy+Eyw4xd/5aEXfLU7jxQfqzZ
	 uyitEP7Z+Mdb9ttjIartqlpL2lRJXs+D7PAWloWFDK0Iqp9Xqez/v1asIIV/3Hx2ga
	 yq9NExrn/Cz8EmRyngUR4KxGKUafEk2wls3/7RJVnprjcFskus/A4M305dPis3h1vv
	 OA4i6p7LFeswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F30FCCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176319357.5068.13898239515459791587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70773c057c3ac4d47ae5ab4831c53aa6de4e442fda971b3750af201710e4ff6
Date: Wed, 29 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761763193
