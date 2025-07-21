Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DAB1A3154
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753114794; cv=none; b=rfJTVR6JSrTuBSppwVtuskRSssbDdvItqLQCmU4r/GwABkQa4kckskEYGlftCMuVTaZNMqjxHg7c389iXRg3Shfxgu4HkXUq9SpY+4u+3759depV94uNqz/2LAD04M5dLF4oGxY3rrr2HiNKnQAEtIBeXS14JqoLkvk+2j5SDoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753114794; c=relaxed/simple;
	bh=qRpfjMHhoJD6xIS6bES+vbzPZoF2w29iVBj9h/diGz0=;
	h=To:Subject:From:Message-Id:Date; b=f4x0e3ku45JadU0Yw541H7sk27BuCkm4dDokyHpQ90DZqV074tsOfFWP7QzVvEq8sNrpiqPbj09s5aGN7d75aVg1/z6s0ZTkP46eoTsHoQQpNOxoLoSZd6k3mj+ipiXeFME/FCxfjChjF7nSwzu/plutsHUmF12L80pd5HV/rC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImSLvpny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImSLvpny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F99C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753114793;
	bh=qRpfjMHhoJD6xIS6bES+vbzPZoF2w29iVBj9h/diGz0=;
	h=To:Subject:From:Date:From;
	b=ImSLvpnypjVzdy6CxCWVIvOhK7m4etVZ4p1AU+3HRc1cB1flPYuAdyEqDPLVZuCyM
	 1IsQjQ6igAs5WM6RZLfXDuAkfW1tpchpdukmsLiuTsx/v1uqNN+Me3COdSPXxwafKf
	 XL2HqInOh+d6xN1Af1nQnRzCDxwdPg8oKOJVTNYz1bAusrEsx/p/0/OfCYdImm8F2H
	 z1Kj0oOZeFmZo27G+wSdVy4u0hYYbacW1uzsGvf8tV4kEh8Q6n4+yXdpBsZBWmKCXn
	 R4X587eJVhfnvmJzx4te8vKCIBmsKGs5ez9zaj17OWNTPEGPkUeinCognr1WzlbG46
	 4ifLQYvUoZaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92932C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175311479357.8185.14858924609752372474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f895bc93896697f972616753c8d5e2c639194af7029441e140c1303dbd3250c
Date: Mon, 21 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753114793
