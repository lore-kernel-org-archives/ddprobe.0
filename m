Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249CC341AD2
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755534594; cv=none; b=opMOru1rd5pzrZV9fJMRB6IEAQCf4YN9VNvIO9GdzW8JBTEvGZi8rLUD6UIH6jCQgKANC2JIoBLfjFvaxsfFhQ+Iwcib4GUY9aIJsOjyGLZVhYVHhc3gyxVGBz7zleRDuNiJnxelZ0rNI4yC+Evuzzkfg083hVF+HsHpKldGKRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755534594; c=relaxed/simple;
	bh=5hAFGAFMqAP0+DSYrRKw/4uSWN+Kn1Hi2Sxi+vfs+gc=;
	h=To:Subject:From:Message-Id:Date; b=a8eSCCqUilQA0ju5bQw9zenuV0kcNyTnbF6F+07lektfhErUTyOzOqvDtR5rXFv5DdMdeynj1hjWGgY60N58dHWCcaakbSRva6ZovlBTv0+d2CJ7DHjsc+SFV7hAPVNEm4M+ZgEbo2SiBW6/5ZTqAPZkXQeyAR/qQ8aUGJgMrLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcQQ+slb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcQQ+slb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED05C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755534593;
	bh=5hAFGAFMqAP0+DSYrRKw/4uSWN+Kn1Hi2Sxi+vfs+gc=;
	h=To:Subject:From:Date:From;
	b=VcQQ+slb7X6oCKqZje8ehjW2VHyKdOuKB1/XnNETmBZeoKLpUFDrT9NYg+H3hLprC
	 Np2Y0ioet4JHYHc0VAFQIGfNYm4lSerN24KJReGetR6tL6/th51pKBD0vlsltalI2q
	 m0IlV/rAEuo2Y/fvmf6b1TsDavRGFQ3Z77yx57kn9HpceztTKzQ9BvZJeYN11A8qNZ
	 1HgCZlNUX1Kk21hXlM8jeFX5wk50YYQ0mRRLURgASE96Cq+pcNFn5ioWbsOwNmh+g1
	 6yM3NKeqsPbsEsPRwNzJpdwenvgRAgpL8ouvkrQ9oPTxIr+xvuCuqsJm/r9EAGtUVv
	 8bNyfr2NH4lQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC8CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553459358.15725.10999462182504818935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826c9b0dcd9fb48a7c1832884620de1c7f86864530c2a7a054e96424df130839
Date: Mon, 18 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755534593
