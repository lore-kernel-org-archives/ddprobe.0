Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4B923BE
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750559994; cv=none; b=NNtzMh4xZACX0tLmLTBRIgaBMNUUSogF9On6ipBvz8LgCQ2ncVFg809IMjIV7yTJ/GV81iV++l4pdqd4cAQJeNm6ZsTFXNkmJOVpo1CrY8SStTCd7O9U8rTrz3gGob58e8VNLJz/w7FHbdZfTUYpFfF2SEdjwU5q+DU4YNvsvGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750559994; c=relaxed/simple;
	bh=EDhFnpqnuixA0yhSNhwbpUELramLhxSAT/0j4wdkBX0=;
	h=To:Subject:From:Message-Id:Date; b=gvXT95M98qlGq/fcHircglId5Y8ulDtTqKVSJs6FOkVPD9VzSevgqhijmKPCskGmiePvsKSJgR0RNp7aCBag6dLS9GFUYV8hoZfknfSM7RE1aMqgkQStm2UOWYNsoTamsnLuUNtXOywHcjJNKKK78rhaNaaDjILuSxRG2TOPUeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOyQU6pP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOyQU6pP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750559993;
	bh=EDhFnpqnuixA0yhSNhwbpUELramLhxSAT/0j4wdkBX0=;
	h=To:Subject:From:Date:From;
	b=VOyQU6pPQHuMOkbq7CVR8sKmM1OkkSURuF/dUWQoKvy1wimPZX6A2PMlPQTeKtgaP
	 XMFm4ItSf9Hsqz2+ij1T9TaBL3hBKmM7ty8kx8YBcrsbX1BVa4Uef8Ca6ApXrDm4Bg
	 enz+H6bkvw4w4JM1xZ+ezFW9agMgJx/q/ifNJiU3xdCq2kMyw6HjOPK2jxgLdc7Bdw
	 0e/x7IR+ITyQnZZh5gESx8ftv9aUfWwJzFchRAlwghr+M/RyYbdqj94b4CSBkBh/KE
	 /3vHBSrhlIfjB7/vprFXjX8DCTpUYTsg2O+CZgAB1gUjFlJ02wbMhvMBXUPbisP2MV
	 wqvSUeYTBVRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD02C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055999358.1701.17806514058964407111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5ddd3e53645dbfa988157b7eeca355dc2026676d17ff15e1bcb56cef411980
Date: Sun, 22 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750559993
