Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CC12AF00
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237694; cv=none; b=HDu/jaux4Cr6C9k6lsfywFk6MySGfHvd+5d/zbDiNONujAv0FPI2nMoP9vH+XynEFGRsWd9GW7wkdPyGBvKOe93mzXFW2BQXeOXNuBh2uaf2gVLluJYP+5rIMYSUug3PMSnbWqiSkXBSFnSr2x4fPoDviU7HEZ/ME1xijXBVLKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237694; c=relaxed/simple;
	bh=fvUsDO4R6qCe1OtXYyX5ocK+1XVZHD2+t7ebDlt4yGU=;
	h=To:Subject:From:Message-Id:Date; b=jlEnThbzCr8rLm8HJi9/3jsyvjhXlWDiwaqOEt1ti0JneDQ1XNEBV/wxgD+7uQZINtrTp5/w+zZ+yERFobtoFw7loIw1l71cy0bl0f2SyhBeXXdZ/TGIwFU2FWCFYIA+AkkTWVJ5PLwEYY0mDaVw5iGarEH1uzsgJxE7kTB+qMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKnXQINT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKnXQINT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB593C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237693;
	bh=fvUsDO4R6qCe1OtXYyX5ocK+1XVZHD2+t7ebDlt4yGU=;
	h=To:Subject:From:Date:From;
	b=EKnXQINTKP5kjdGIVlncdMS3/P9aXJ37i0OVmuy3i4XBB7BosTqZ9Z6neRQOkaHAi
	 zWSAwmgGJM/3n+I7kbSmk67ktJxcvjQkdpLMP5WliGeNNCwwusF1WDAJ5Klr7PdlPm
	 gXRbXMeCkyfTA6UFP0AlZ87RbAqK4L8uMyO+9Vg/7+TK5+gcuvd7cE5DDQe3NaIUel
	 6lQUoo0AJep6Voln9Dlu++z1iLM5M6EwPp0047kENcEPdFtZX4bWiXENA7Lub/JX2z
	 3ZaRId0SW49w4CMCc646PTI273zOo8W+0i1gAlCT1y+1c70vdIh54gl+HHgKVJQIqy
	 khNbgkjIO7lgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914111048925
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223769358.19513.104139710039328563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf2ff78a12ac9b27697becc80f338f0eccbad236e3ce92be66cd200e0526d8a
Date: Sat, 28 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772237693
