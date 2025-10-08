Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FDC1FA859
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759883993; cv=none; b=UybeNAZ9dN2K6knESLiun0gyGcBZg+G3Ps078hWE47Ek5z62kxrvi202A35gsgPhyfSiBYVFC00a/ufguQnD0k8plx6ahI4+fm1OeKZkYSv3hgeULxKbdwVwiHyOo+4gfyId2H3TRE+B/8Y/Pi7Sb1nJJqdPPowr9yAaAbV6eSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759883993; c=relaxed/simple;
	bh=pCkbG1CQHeX/9bq6N7m9BuIF6KZ3FBt5RJvwVpi9LkY=;
	h=To:Subject:From:Message-Id:Date; b=pTnI5rcjMFK468FZJWjVV1b3jL8wy5uO09Sf6JwT95p4cHsOoSToODXqR9jAynbVnOr6rtk4j8s5yiA6QOfGa70EiPUwFZbSgLMKH/QgjQAZicyBCsas/jem0iVZ2Kme7dKOEASUlbsJzYTMrgrxJbJtHjvVRJpljq+rb0xB+1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taDipmgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taDipmgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5173C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759883993;
	bh=pCkbG1CQHeX/9bq6N7m9BuIF6KZ3FBt5RJvwVpi9LkY=;
	h=To:Subject:From:Date:From;
	b=taDipmgPkLvmWGP5/i8CBwKAsxieX30EpHsIc0sItMD1j+ffUVt3c/woFxOqD1O09
	 Fo+f9MJFjhKUplF7hs+ZMplNxzxUZ+bA68IhNjIeYQQpzKJ5vdoaukMCgVl4rFvU02
	 pgL2VkLRUkCbQIG+j+krAOrayFL0kmIj7jSKjsJ71Mnq2Vhf/k64rTjkgAfo27Q/uf
	 7MMCpqyFjP0XRzxMuUky52wwz3ODxrGsXDK2fwXG4i7zOeBRGHAU4WtDlv499mbBmz
	 sVO1vcIvx31bZJMMhWq/TlNERT+gKZSndQgUyBXHw6sUIHS5rZx056SInZ0nzDpTQ4
	 HNnhw5ow0PxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CDFCCA476
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988399357.18620.5450049575774794374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa99eb0058fe0679ae09fc32530198f76c9e68049e601d97a70fa039a98af395
Date: Wed, 08 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759883993
