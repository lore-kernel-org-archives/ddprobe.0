Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ACF31354C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777246054; cv=none; b=N1hzc8mb5JkrTMtSTBwI/R9OsvAhoHpWq8k5fPccv7Df7WGx/GBuVkCckGQF7+qDsBIa6218vDwvXAL2iOYCIPfIM+Q80KCVadPi9SwhVHQEa+Zxa/iZqMPqt28oBYnEn+b5Vk089nvLhcdkAbBrE8ZDgP+VBZ53eXtGlqK4gwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777246054; c=relaxed/simple;
	bh=yxoEG3P2i3I0vG7f4MlIVaW4O2yzcPz9vPSX+8YTChk=;
	h=To:Subject:From:Message-Id:Date; b=BbLxdFWOrvnD0Lu/v1Rhm1djWJet3PIbJu+8wiJOmCmGX6orWMbeZX132NBTiquenq3iJzS1dGV6WHCqkncCtkC7SbTMlw93TdSH0duzFQtMKPr5+nfm091diDYMUSlV/zyU3eygL7MJkwaLysA/+HuCAQd6WxkpmTNi9JhGWSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIhDW12n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIhDW12n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA699C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777246053;
	bh=yxoEG3P2i3I0vG7f4MlIVaW4O2yzcPz9vPSX+8YTChk=;
	h=To:Subject:From:Date:From;
	b=ZIhDW12n1F7438ILaiomd7xFJk3PXPrGEkn6B/R5jzsIzXZ6r9oG/IY9Rn04OMjnE
	 kt3mOnP03W4bVrJ0pV+OenEuLk1VNJl8c/uOyBImw5KdWOA8OEcykuJUAtqJsi0xlv
	 2hm7mm3zW3U1ke1dT5lb+JCpOa2nwGtQ9h5Bnkc3xGD16D53nlFbyN12yEjVOnSmsM
	 1aQVZ6aS0FXF8nyY42YnyHbciuiVMAPWgDg9nGqmiRM7X/Hxr83+frKVaYNQuYEQo+
	 g8IunNgcHLhhtu3tYB702sR+rWEcTbWARM2nz1PIjeoplL5ekYS0CCDNAZ8HT1hFN3
	 SYa1pnrqHsEGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A972DFF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724605368.22966.9143771744849064506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b2d3cc8e0e3b0725502f6aef3d4c5d6397234bd1388a58227d67fd52311bc7
Date: Sun, 26 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777246053
