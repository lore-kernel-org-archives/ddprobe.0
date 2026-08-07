Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA5B1A6814
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786144234; cv=none; b=J5rT1CpCdLHJCKKYmcDOsC7x6YUlHvmCwJ5aOTTdgzlkIKYeMmWGveLnPIXkUlk553cqok5rxbr6KAAeYflaK8569yrEjLXR6DHIem/dyyi2osZ3NzGTCW4n6Sz0/Bpl45421GAO4qaL9F0t6C6PFXnpFSqNXr0GGzrQP2zR0d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786144234; c=relaxed/simple;
	bh=hjRaWGNHcaSp0/+zxGKnzoneEs1wot2w9AfP+YYZQPw=;
	h=To:Subject:From:Message-Id:Date; b=mOQKZ/x/8Ny1FovpmR5aEBVfnc27crG/+qT0uX2jRPvkl7fVwfSkE5bHPneV6+wxzI8ga1cJifbDzqcWygVahFBj6otNCzgmvLmZNTw25wuXUytw0mdGoJqlFfLq3Klp6f5GKaWxCCVArC2yAbInfbubFE8cCq9uWZ8UM5ySCPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCUfABl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCUfABl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE7EC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786144233;
	bh=hjRaWGNHcaSp0/+zxGKnzoneEs1wot2w9AfP+YYZQPw=;
	h=To:Subject:From:Date:From;
	b=mCUfABl+i9iiUSxBB0LNqED9tWpfsXGn5jJ86PTG6DWB5xw7ksXo6sC5n8vwwqmkt
	 XvG6gl6SjOcqtv+40mSd35/xlDEjwah8LfTrn4DjO07y/08h1Y7enFSCrt1dHSSDSn
	 DXkMINX5Ns/uJU9vPJ+KHgFPwwxZPCr/+Ww65kunXoLuzF0htVBU+ihpqW+uCjNtwH
	 mgmWFXGEMMtiRJA3DNUZRu4KLbhRSA9knv8NrWGp76+y6UB8fyUJWiUNrugMFrxSfW
	 DF6+RcO4sMmxs8aUSK8XIhrILCDnISQ5UGncftZYyvExYHsjvscCLXtTwsnfkdALru
	 tmgyOXO1kQbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB239C5AD05
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614423369.32612.17672670945067006383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0fb94ac3bceb22657ecafdbd3e260018049ee52c10dfea7939b9c8c3ed1bb8
Date: Fri, 07 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786144233
