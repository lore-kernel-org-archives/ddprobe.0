Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494A839EB73
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780136014; cv=none; b=t4LdK9eh3hUcFjN73aTLkeS0S07IzeeFcgVeQg8jJhL7KkD0BenvnmrZRkVF/tau8Xliq+K+aSPkiiJPtEI7rCGWkS1Fo1+AtFG4Q2lUnDO6tPB3ISeqDZdA4w9KOpIoMVLt0EW1zr8qZIIh4T1ue6DxAegEl9hDHR/JWbr0+bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780136014; c=relaxed/simple;
	bh=yq3BdcMWjUJ7qc/QVsVrDxvm9DO6O7DXn9AZG6YxZMs=;
	h=To:Subject:From:Message-Id:Date; b=oQWeIkmfVr7Nte1iFJTUW/wBtF7EcWgAjNRJjaigQ1buECf3tJnPkXdtUPzZ0dYzOxmFK+wxYuiDmDdeuxSioJpJizyJld48yRDyqTxqPQ8nzWYxLlU0LGzFYHH9bStVAAv+KhWBXtOdUzLpTClkX14qLYihtPhhJfp5BBu3So0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m++huOAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m++huOAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4307C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780136013;
	bh=yq3BdcMWjUJ7qc/QVsVrDxvm9DO6O7DXn9AZG6YxZMs=;
	h=To:Subject:From:Date:From;
	b=m++huOARZjBjujVJf7u2u6+7Da3VcgycdJqAriNuCLVN+EKAFvz4J05WLXpfWSkmm
	 b5Vc5ChS8XWf8jydrrWqTRA4ClfMFN0qC8+h/WHCQjSd2CR3WH3RiNI/x7iknmAMaK
	 Esr9d7SC6Racznvjm4kpRbONvRoW5iAPbRBHBxSc75jTZy+yiSvqVcmuvHmyZcHP2R
	 EwJpjiDkv93yvMFQb8fVJLqS788WF9uFImyy4gckPddVNOM15zordQDifcA4lg2z7C
	 K08JXy/WQegLHEROUe6FRZiH571vwLru7Sja+GuUoPqCIOBlWqfvPKci30COPGrcTm
	 g96AjThA960Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97AFCD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013601368.4921.12296158990573011802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aece860a6b0decbf8e66ac04b2b1d22f66fe8f15d702e10c18ee372d15fbb44
Date: Sat, 30 May 2026 10:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780136013
