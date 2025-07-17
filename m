Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BBB29E100
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752749394; cv=none; b=UD4SNp+7l4BsUchZXF9dHirV5feGIBxXJ+7vMbxXHh3AtOcqRZwy9v8DsQLliVamKTPHJK2nJMQx+7ubc5E5KIPoBvcntTKRrC4PEACjGtTILnD3wPj+0LzkXfs4XnjlDql0TZh2RvwWQB9NEd/7aOhRUfc6qLQorXz15p6oEiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752749394; c=relaxed/simple;
	bh=jU7NYddbdzCcqwj6A4tgCfVebcngRyYIKDnqBtvKihI=;
	h=To:Subject:From:Message-Id:Date; b=lw04gha/yUU3v+gkrn/04KYjF9lAxRrQxxq5Qy2Cysxx1+Pqy4zwg7VRXGN0qmiEn2BSexZOQdGLfFU3X28cV/uiAj69deuWCEQGPcaL9nU//+Il7TD2tLwDLyZgJDZmSAXjYASdyU8Iy9P9vDyGywXnufXMJalL6UP21Ygam3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVJFlXfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVJFlXfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5535C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752749393;
	bh=jU7NYddbdzCcqwj6A4tgCfVebcngRyYIKDnqBtvKihI=;
	h=To:Subject:From:Date:From;
	b=IVJFlXfxZNhvhDFFTEVYo0jfFxfp4GPiBGQE+GcxyCXq4950zL0Wg6yNtqGakipa2
	 aTsmLJH0HAzJTr94H3RTtKcFstbkQvMidSF10uwVk3YV+NDq16CgFim3vTNUmlSdIG
	 /qVvp2QIR4cDuTR5fghx9PntcICdd0yLMelDH5D6aDzTURv/M9vMBDJO9SSZjnNvCa
	 TAcc67sjPKWuO5DpnbgjWpsGs7rSmHs3BidUKKfPJpSCY40zY6XTM6LEdyEkqjVHXi
	 XEKYD+g+7C05BjTZMfsA59qL7/AchStMTkkPaJQY6URBnbcsBwVVxV2U4Cv+XI+j8F
	 WzCStPk9hlj6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F12C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274939358.1869.17440772276314311182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e96c2dfc1a8480d6b64105a9f3f95befdf2499efe3cf913fb29078314333104
Date: Thu, 17 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752749393
