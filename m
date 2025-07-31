Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2981D799D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753987794; cv=none; b=NgiNkNSc9gFU/Z4BFmMjbMU4oZy6zwUIX8F8GkoBsud4xAFBAmhsgop0jrKibAA6EM/LxLxUY9UZgol58jrYoNjSenvegFzZvwNhlX1Vc+A4k8rz07oBqOIgf0+/unflZkK/RykNPKP+K94CV9bmtCcw98u/CCLdIYWAsp4UimM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753987794; c=relaxed/simple;
	bh=z6a98MP9ZkFWzhidMRFf90TPGKfvE4aI6jp0gEEAHl8=;
	h=To:Subject:From:Message-Id:Date; b=UOixtLyxKVQkTC97WuWoWCq2lmo2ivipmhfNIS5bF3ckXmlBL4dNVv51iF4K6WJytL4phfrZRZ3kLf4GC2qor+CxGooTY1k5qdFNMIJ50zF71Yoto4PK49VljDuYFU3GE3j5HPswWs8gawWAV6FREXDy6mIVq2bc/8T32b9sXak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp1nCCve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp1nCCve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CBAC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753987793;
	bh=z6a98MP9ZkFWzhidMRFf90TPGKfvE4aI6jp0gEEAHl8=;
	h=To:Subject:From:Date:From;
	b=Qp1nCCveRmfyb+03+j2Uouy3W8p79b9gVe266O0D26FlNKW/tjkDLzFixoknI9fEq
	 fmfRhMr6Z/yU7qrcinhRVBOuTwO8e9T9qqHSTGDLqvYNL7jSz97Ga1G6bAIJtZAjGd
	 Z5jFZgodRq+yZW3ftaHLUD91hweac0svHeIzYiW9ZkpK1qyBiiDBIqBmSLFOeNwi/x
	 jRJ2nH2rRtJoH5THdZHd77Cm/HClI4+p1A1GFpEg9KDcDq7/cQEqeo9piu7FVNXDDN
	 PqqvPWV0uDCSU1BAK9KSutJ0UUTnP+ij5fQMaLq83fU0UqajGV0DVDfzjXuJS5fD2e
	 93g/il/vVSYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D72C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398779358.26126.11845751039745006680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229654464b2ced32d7a7244bfc84aeb7da88cbab074bec334a61974c794f9444
Date: Thu, 31 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753987793
