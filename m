Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3324087C
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732961154; cv=none; b=l9dubNTT+pPlyRBSp/PHB1aoiclJt5pvbjm/LVVp/XLWR6g59G8D5PrevVPSqQtQFWvEHinzLI0TVnBkqvnbDYJB9LywgtI9KET5SYRkkmD8qEo8UiNsxIpn4W+fjQbRaOdvzWCLbadTw22uq/3MA2UM+thzKeIYQUbftCEbLfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732961154; c=relaxed/simple;
	bh=lWbnkzF+afz2Gy+HIeJHmdehYnmE5E3khwsxIWI0R9U=;
	h=To:Subject:From:Message-Id:Date; b=CSlOPLuXAwQpS1v/A3a2fq53+DuVkQkRucP3X5u4zhD4ru6a+30yfknJFKEJRnAdqqiPXFwqS4DwOpcSXUoKkozBPF3dNmgzXT1NeH9GdpLpFrko9BeZ3f59ChaCHp6ms1w+a7E4SGG80zG1r0qzSfRaG0R9caUUt7v04ZKoOaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcKmJzSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcKmJzSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A2C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732961153;
	bh=lWbnkzF+afz2Gy+HIeJHmdehYnmE5E3khwsxIWI0R9U=;
	h=To:Subject:From:Date:From;
	b=ZcKmJzSARQ2FSXs07bE+ekOevYGO7toL7pYRxhsWNI2AB9DDN7K5zstfmMx9ZsBGn
	 ToCJjOI+K2728ZsTM3BjnuXV5X/0+8bUObqeOOw4KETml+kJu+t0IMPsxMp9SxvrZS
	 b+PaAPy08aSdf4hGxdg16NC9MLL2igNovOQX1TnFhyww0xFuJeN/yH5DGZXH3ZWrlg
	 ydMkG1KX2+fUdb5qK5Q3eefxE35lLeB52FllkNDG0KuQ1CGEfRV6ZaNSsD+NTSWWwW
	 Tnly92Z9+YfjZw4kc1hAdctaxVsTPd7j0J0Z4aPuChgI5kXq3Ic+oLlVPOoHYwiKrj
	 yNTLkvs2J9w5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97673D735FC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296115358.3324.9398580299081741297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e695f85089c77a382d152d745e48c8312195561986c5e2d75b382f08022cfe7
Date: Sat, 30 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732961153
