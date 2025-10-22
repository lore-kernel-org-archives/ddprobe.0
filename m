Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ACF21FF5B
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761173994; cv=none; b=H7YbtLpYz1VMXoyShmUnE1SqcGEb9q8qKDeaQqXGZgNpMtSanBIPQdpwFgJKXB9qO9wsJ0JwvI7Nte87KVRGCo7gBNggF5hL7rKFtoUK3w6ujCG2gSBPV+DBo0c0BtjDUUkQZn6/p5eG2dOxNYp/Jwqbl1VXFrywrpP00hNF/N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761173994; c=relaxed/simple;
	bh=56ZzShS9YwpBVcSSwB3Jl2NJ+56KVvMY6EcFyUTx6J0=;
	h=To:Subject:From:Message-Id:Date; b=WouKTivbA5U+3EMoaGxPCvNExVP68rjBz37AgYzc9dJ1msFeRubMWTkFebVP9Vrp7GwLCuDSapBZBuqazbq937BNNEl/W9M9pFmaOumeeQXcKlkMFBZbMV0aknVv6wMfP1lwEIIDIlp0i+J6M83X2OX1zFq6F0slyg+Bpn/t694=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YL4X8zDg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YL4X8zDg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A20C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761173993;
	bh=56ZzShS9YwpBVcSSwB3Jl2NJ+56KVvMY6EcFyUTx6J0=;
	h=To:Subject:From:Date:From;
	b=YL4X8zDg23tuG8diH8NgUHyjCYO3kNuOqeh2r+1a8sXDj9OrtdCLBfnbXlAS7BO0q
	 +ZPi4tVeUS5YaDpQbJwZHlwdbhXSzqLrKJS8O1qTj4+lIJR3k9jiW9nWg/z1NhXIdI
	 TuhC8dVbc3GofiO+js7fiw4iLeRVJ9ILZgd/PkYtNXA+Noe8srLIc7hp2qpFhBQCY9
	 FOpKPFuC/xjD0/qlex0teAJ/3OPHsGYZYSlVnJkFLHjNNobFj/XWGCoG6838DNW0BF
	 rzEnJyX2HlU77Mik228+KZaGMDKsDqlnqDgZ+8x/twfv87XEWVynxXoCpScV4Pe0lN
	 uFhDE5vEPVMBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFACCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117399358.1776.13225583980800364464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7afd5d47794f29e827ebb05b5b74c1d14a26e36587757cae52c6bf63b9b24b
Date: Wed, 22 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761173993
