Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F05322C6D4
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733546754; cv=none; b=Ars/8HG8TP8lfO2CHWASeCbUBXwbq38PhNIthhHoeXjeq6ygKVyYEP7i7AYQlAfHXAKNAoum0TUrA7Yq7TWr4gReOp+3WSN26lCMGba5lPjNUm/9fztU8odUV0hvxs/NngKpzTjW+eKrXPyrVmY87m5m761lW31UtxMrEjJ23ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733546754; c=relaxed/simple;
	bh=k+UCsBVHzHdnHknkPnJs6wxTw6LbNpF2y4ssvH9qLOI=;
	h=To:Subject:From:Message-Id:Date; b=ZHDXIDokhoSBCBcm9z0tuES0IO1xcfpjhNQbeMk8+b6JGeR6J/IoaDFmnO4IaZDwRoS9/LsnsLnEt8UCSZi4XVm9mbKoZBW50ACle/ZVnyqPDfxNvXh+NHaNtriWlLB83ncXYweE6PLaeitOgLJdsoIrRUwoYuqGppi4y+U3Pag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMdAGkSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMdAGkSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1133C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733546753;
	bh=k+UCsBVHzHdnHknkPnJs6wxTw6LbNpF2y4ssvH9qLOI=;
	h=To:Subject:From:Date:From;
	b=kMdAGkSj2BIVzVrY8PYSCILCwSyBUIu5fa5d2OTikizXenMVUsWuh4oOLdoDPW0nW
	 3+nwbo0cWsmEt7g18y4pOkE4HFNjA7lChWfsq5DWKndmBQnDVDkRUL8QMdp+XY19vC
	 kzuWxVxq1k8w1yvxR4CNEL65EI7CPPv1K2jSvJbxur3QnYAtr5QnkY4EIF9OhNzVbz
	 vmOhFwBs9/JgsROjo6iF98wYbg8o/dUwpc6cHZBn036cgl0I+6/NpUN4FqNvy2MPd5
	 gBsyN/dIoJG6DxEEX/wpW9avM43WrMJqfW1SHnTwSqAC3SR8jcRQ7oqJ/+hCsbkFqj
	 HPtwwrHxUHZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B66E7716E
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173354675362.28752.2995824984328197225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80ec09e7d7109f8dee3736505c79197624b4547f670876d3e333e9e27065ee77
Date: Sat, 07 Dec 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733546753
