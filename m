Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3AEF3542F2
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769868833; cv=none; b=pqbf5TZfPV0Vur/NEBbNKWVp+OhHIdaOI/B77GOyoAii1sJq3qmbLWOQdVXNZ1DW6/ifNppqlJA07s5x53ZZeEMWPea1fxL5Jt/DhE7pSttTVMk7EI63XZcg6vVowbJyCNy7/Lyh11nt1fEAXGVG+tQ9w6wB65uiMsqN/O9iULs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769868833; c=relaxed/simple;
	bh=h2k3scL/bskURXgtaKRjBnfLwbyhqo1ScdMgb6jp4K0=;
	h=To:Subject:From:Message-Id:Date; b=CCwzevj7BcUiwyFaFVuY5+E01nqtvxd527kZ06FW8RkJAF4K5bf070fAFUkNIY6ux8o7tE2VSfuNazno/qEvg+z/V6DxMhtuWPR83HvvjkJQINHjMmFGx5kseB9P3uhjpYK3XTmBuJatpYv3AuRHRX7l5+w6SR2UO2/jTgUdvnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4gJFrwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4gJFrwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96540C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769868833;
	bh=h2k3scL/bskURXgtaKRjBnfLwbyhqo1ScdMgb6jp4K0=;
	h=To:Subject:From:Date:From;
	b=q4gJFrwlinBRjqJU2W2ODtZBdz9lyeGZvZ1LcJFTK8vTRzsJW1qC1yEVfgUfnBLel
	 rMDUuXBcaL9Mg+p9SJu0fkSsiOBAYbcp2wYESocnrMdhLimErj7AVyKDOAXNClvvZe
	 w5QaWzd7TxclbiG2Wo6rWlEUvOy4+E32yxcEIQcjpFBKJZ/akl1dwkyupLU6GrwI9h
	 SEfiKbq8fxsKX7oGoo3Bg6Skibvl6WA6/2I/SnCWkd2zSwz5ea2oMEUDTTUd2ymiDW
	 c8NYHD6fq17yF+fxXLiBy5lE2yTYI2CWOaTx8Jfvwgd8wNGohVfVBO3rcrwPV0rKrN
	 w4vnpv6ifsLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7C1D79770
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986883357.20687.10511477724495531704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212f9d38d832e41e4a5072c483c4ab4d3db0978ae1a7f092794328827c5e0233
Date: Sat, 31 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769868833
