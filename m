Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E87813D503
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765375374; cv=none; b=Oj/0NtHcDQ401TZOg0uvwfIEvunGVtCxCCsgRBscPNzuExO9ECTdQcv1Ez+aOrOgLZ+JSLTmaDhOuVqOMY1uuX2Ay5Jn3qZq7joOlKGW6RiXEnt/EnKs6tkyqmu0SpFJJzzz3lZwr+2CdbcF/hwwBYYFk4KleIl2GHQHAecMZUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765375374; c=relaxed/simple;
	bh=cFI/xFeEBGpKHlwjtBczpVOtEHBhGItiOAyNjmhabjQ=;
	h=To:Subject:From:Message-Id:Date; b=WjLhT2ASllKAjGZgNlVQO/gvdKpuFmubN+YavtOjsvmwPNdUtYpaIY2l+e+7tv7UwG/klNALgcF2/LQhtXnMkPylFNFvDhfp1ze7xeUh/EbvZG62IeL7Olor2ccwRAGhnBRR2l2xj88YracNJXVu3lUm9jqN5ECGMMmP42cr2bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA3VIpbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA3VIpbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8158C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765375373;
	bh=cFI/xFeEBGpKHlwjtBczpVOtEHBhGItiOAyNjmhabjQ=;
	h=To:Subject:From:Date:From;
	b=aA3VIpbVqDPcmrHTZUZ5gc/kThQvh5Cg5ndDK8jRrTClm5fZv8MMhy0assV3LqdRL
	 6O8FyMm0Syd50EcXPaIs1wvptaqO99TAQCYwj4/8KSkcEJpaX+yC5FbfYrYjn7pxOT
	 /G49tLc2b1eqgPm1yJWzPEx1pSytlwiqfnU9dlKwvthUVIWdT5s7vGjVukX1ttIDMW
	 3AS7oxa8GHYRtDHZKOD4v6a2qg7S/htwbeHHi58FyLVYnfKJLh0kiBfIUMPEfqu/Bz
	 ZONB+alpvBHz7JZMrD1ZKIION0YQnibCLnhvo7Q1i/7NxkyMc14TdcNgHWTRFjNd+e
	 53L5yHp1/uglQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E3D3C90B
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176537537358.26952.11257445095756556689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a49aa0639794e2edf16736f2eeb1a4cb78f546a763405c06119c88446f2c9fe
Date: Wed, 10 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765375373
