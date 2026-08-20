Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502C4385D94
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787197234; cv=none; b=BmOHK8Czkme3vUuenT4cv2Tl0OfckHHZZF8dtf1MWO1F2kjiYKZgyluR+UyThb2ABm7DJ08ECtuf4nE1KjvCuL4FALqSjp8MX/6CAV6CLUi0DbBBzvOjLIjx9ZGcZ8wxmfIFHofcDN7q+DiYbkXylPcl4nXrAmLeo+CClp8vFn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787197234; c=relaxed/simple;
	bh=DeHPu0OrB6t0JFcd0Vw08b7U3eheUFmyl2Rc2FsEQa8=;
	h=To:Subject:From:Message-Id:Date; b=EQd8JgCVXzMK2IhUcWp6XBsh8GC1W5cq7x0Gu39lquupXG4a7TfCv8sFGbzRQ+iuzhPKEz1vP01EXom3iYq2Pd2PTC0+2GX58Gxj0ILAqMDIt3+MLpzWpj4mJf8z1ns+Dw0B6NVJH5GgB1G0zEb/et8z3FbP0R63+R8QC6vWdrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jee9tR64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jee9tR64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF11C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787197233;
	bh=DeHPu0OrB6t0JFcd0Vw08b7U3eheUFmyl2Rc2FsEQa8=;
	h=To:Subject:From:Date:From;
	b=Jee9tR64kahWaisalX1qCkM79BJBU5JlcmZEd9OJ5zzKTcVLbtBFzuK0iZBso4ZXo
	 ycpv96X1gavSESXKIDTCQEWfGAOAaGAAqsUVdTX5Pnasj+MFqHEeGiFJLbhI9flXJ1
	 DeB34VsvkWwBCS2Ji6CQoq/B9bzLT6nk3YNfOS9E0HQOp4Y7JbBSCCxWR92wTUSJ7E
	 d9sIIJMG50umBGVCLhtNCcL5n0jnVKvpOw9JGOLaxBds/z10xu17nH5n15LXmAN2lM
	 iA4EkAbc7Og9J0g3xgdT++DdyeXYSmyxo+y+e0FQeguKwKaaxJe2DTXI9sTrfXz52C
	 Wvjt0bJrODGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5FC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719723368.16373.12454965227032562677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68586820c696b78908966447db46647863687f3325ab74bf26ff6b922080a9c7
Date: Thu, 20 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787197233
