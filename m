Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A05F1A9F90
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765178574; cv=none; b=tXBB+AGKMYbr0F1avucfoZzr7whOCg+e6DwnZGuOkyxUp21oeDrlXmlsY13CD11Rx14irsR18cWMiZpfAA67PJjZfGaJlMI30nPIRGZLUQgky2WWhP2GW2RjBylEWP6kjCtHWIDenb/Rv1fngCso2qIfS4akG6OWbJ5KPjWCkzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765178574; c=relaxed/simple;
	bh=WGeUM1SlxPdK4pfYOkQUyGkw4iSu4Xc/4SuXeXPtjVU=;
	h=To:Subject:From:Message-Id:Date; b=p3s9SELykqbB7DD/l+7sSdqKPP/UIzd9ZntihAlTev7MSFBv06kgGNQ1Pla5BK4iOz0SbIargbwnLEJ9WKQynXM1Q71ZIwDFvD3BJSiGYJ3zNovfp71uTcpvxRGTWtJBH4MCB8IpXnx9mkZN0wSH+bu/aWFz7vEUnBxbIpXMeRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m36oFQOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m36oFQOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765178573;
	bh=WGeUM1SlxPdK4pfYOkQUyGkw4iSu4Xc/4SuXeXPtjVU=;
	h=To:Subject:From:Date:From;
	b=m36oFQOvYa0liaOqy+g3Qrn/JPu/1lTGfxw8vSsdZuHYXFpIdCed/bNiDV8FhVbsz
	 4/azOAY4syz18HSpsO0kuuzj/G4NEgM+V9grmzZFJwQIjE2cACzGG964zgQBay0ITR
	 aqGKbanujE9EvLo5J+dkirH9wNvO2H7BZ5aiRPc6dVkuU32rd7fpBIezehk2eVhWON
	 1wKEb5wI+iAILY1xelWcURJ36RcNGieNC9Hh6K/m7ge6G6iR4OjjF4TEioACX9sP4U
	 95TgKNaqgwCVFNjdXeOxgb2yKeXGMfX4Cg16iOcChme8yZ5SyjbivgGxaPX3yUGfbi
	 aYiOnVIZzWoNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90019D3B7DD
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517857358.27054.13384233668422333024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8776cc66dc88f502ba66d9dc8dc80396c6c1fbd0423ffa677cb95ccb3c820c1
Date: Mon, 08 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765178573
