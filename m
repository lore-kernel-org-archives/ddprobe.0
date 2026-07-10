Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C35153BE9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783657714; cv=none; b=BcIS9f4mW5a7wM/+ErSG7McM8biuQR0R9nWr89ofOs0t09VUN+9c6TRuvLeIXIKuw5xi/v9t2ZEgBSAPOKrpW40PbbiziYRdUWSgLLovOHVuV4owNixWNB9E1dYAXyCs5Ys7VyGe3kIh0sZa4tSJhbK8bmOgyPt+GXJkl+4Ni8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783657714; c=relaxed/simple;
	bh=Eul2Gv5dk+ac9WRVXIsMXvPiSAUZXKFzWPCASWLCUs0=;
	h=To:Subject:From:Message-Id:Date; b=OZFYLzsheJqlt7VNz9zyfxg8yUx/xVpV+Msnti4r8MOL/lMwt/8pI4Oc5ypfCP/SfoUEcPKA5x8Bo916sksKtEa1U+Irt7UGedQr1CCwIWd9VKObXJ85IkTYLPg6e/ZxzLtcNvvhxgS9gpg1GX0CqmqT+8atdcIKiKGkA3oJMso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOeoQNYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOeoQNYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5B3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783657713;
	bh=Eul2Gv5dk+ac9WRVXIsMXvPiSAUZXKFzWPCASWLCUs0=;
	h=To:Subject:From:Date:From;
	b=sOeoQNYvgozysy+6n4/uxIDjaCRler9As2E6X+XXPyqUdRjF3B5Ic3BxuGkdG5EGc
	 m1A8d8XrheEI/O9jHu2SnZXOR933dEHVAFRRvZMRGPTfVILBNHJaAY2hccjw3mCq7W
	 ZnBHBmhypBVV9vZ0BYk2kBxyZVwDqGuUm39WAatuGgUg4amUMvpJz2Wi3rDz/qo0KT
	 hlFr2pQAGH9KVpb/8EiZRVmPt9tL77ORjqVopXCHLDBVk6+y9zTitq169EFzsb4OD/
	 Mu9vDhuqgpLI24jE8O+wWX7acLVy379mNIA1P8wUHB8ZadjuTXROy0OoUVvXSQHuFT
	 k/IVxSsP7L0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9983C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365771368.18619.9357226686479840651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7efa90ea6eba1f7d63f45cbcf96733ad45fb050e014b4b1253bd83f6202d42
Date: Fri, 10 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783657713
