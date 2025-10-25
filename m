Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212ED29B224
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761436194; cv=none; b=MP9TzWvJA63Wh4zxCNj2q1QF0YwRuS7xSzlAhkj08XwKwF3q+puHgua+hwOyXM2Yaq3wENanVE59+anuk1Y0S/9hlECYRCIrYKphJ60c5EQEh8Ncic56NlNodzPiItRQnt0S4fzJxuxNNI+c9knQse6X1XWfucxXmGXOI3si0Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761436194; c=relaxed/simple;
	bh=JgfITGTa+gm3Tlw4Mxny3+k6DU3ZcKEG/kPQD1ZM1rg=;
	h=To:Subject:From:Message-Id:Date; b=MZBhOSI1CuM9Yq1DZzvb85UhMOF2695KnlgKCGId6SS8ZgEqtdkVtlOuwBT/VuzRGzu+0/0FEOhLDe3iKtOuV/hYQOrl4521oKZ6o0+Qr2+70pn/KA054Pkracy1f/w9Sun151Xj6FZ7hw+lolv4vkfcsc3KFxpGs6hD0vxmE4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAeEFKHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAeEFKHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761436193;
	bh=JgfITGTa+gm3Tlw4Mxny3+k6DU3ZcKEG/kPQD1ZM1rg=;
	h=To:Subject:From:Date:From;
	b=kAeEFKHOAhBJzoDRKp6ZKxVyvNQs65q/RdqmB+tccvywECl94zU+EMBN7km7Hx48R
	 P5w4pBLdR+X4SAjmoMxl6tyy6b976yjiiqFwiubL6zO8aUDima0LFXSy0/AQxfw50P
	 l85p7+u0hreMjbLz9Gaw/wNmKeqVCBao//BUPDwSaePkP0IAHSRjejhhpfJlPuNT6k
	 efpmBIczV9olWsMSRcwZrsJZKdvg9G5oEEC/yoNU7AobN/yEFdCTMev3D+FcONBxOw
	 aLwRHgWidegRxWcHG5E8y0UvF/s5phRNOumdndCQNq8Nhn3SiTgjIFPZsmmO0Euc1k
	 GbmUTqixIHX/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91561CCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143619358.5473.14714111333173817297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f16e639b82b2b85d72863aae70442501430b1d4be994863ef6ffe00aaf936f7
Date: Sat, 25 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761436193
