Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7FD1C4A2D
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746871194; cv=none; b=etMhFesE1UGrutUlJrUvr83lL+ZfdrX3D2b0ndVAIKhfHgVYpkvQqYgTSkj0C0NWlnHA9gfYXCf8WApGDw6cPvbrCYGPQa7k0G1XUvhq8vtxiIxelOiFBarjMc1z4UmFM/9tDxtPyjJEdUZzr6l63aSVGrZdzJrTzz9ijdmuS+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746871194; c=relaxed/simple;
	bh=VE1vxyXfXMbHjfeyXoy65e7//bfnCfP6DtmoRp/KWeg=;
	h=To:Subject:From:Message-Id:Date; b=GfikSzNK0gRshjV8+oQ1/45cXQ5VkUqXwd/f/RiSkFooY+qy0i4qEgILJSWlz3jemiYlnkxvVVZuPz7f+2VlEMxTL2ngl7ROGb+m5ofRN+Rs48TaywmtFkjeLazRzQ1Dd9eU9+1TnL/w+li+kqPy0GNDnwwSb1Ad4KuQL/NkbHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKSiB4pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKSiB4pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA52C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746871193;
	bh=VE1vxyXfXMbHjfeyXoy65e7//bfnCfP6DtmoRp/KWeg=;
	h=To:Subject:From:Date:From;
	b=KKSiB4pmVcluuaoK9IrUI0iiIDHptATLz7IrjnJpvEgUQKxKCsGqE49cKqpDg9ioT
	 vtLnXwHT7oTPC9D2x8ntensW4zkMMVKYUPICOfzimklaTdDBlyYRJ2OvigEkUdpFzO
	 8RtBRzGsI1WvXrwF7oEC/CM5wbTdjTs/x6oz7tnOMioIDul83cdnWnUHyA9Cs5MJR/
	 +yo2L0pASVe7gobP32AeJvbT2HbcPQI1+RcUTqGA5kfjF9trDoa0tJIrOnA5wUCqU8
	 2f7/CzHO7KqdEMQlPcSmq+nOcuORpPweAs7fAEpZGIcFoE/VEtqWR6GjCrnfVw1OWP
	 CtcuHv+Z3ZZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1DDC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687119357.27052.762560506283366999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916cbe5d2e8a8e67ca83cf45617aac7709bc1284248a2a8de0e0e37093066d08
Date: Sat, 10 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746871193
