Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2457E2629F
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721579754; cv=none; b=NC0ARoHQ5oKn27N4x9Re4RMnVGOBzVAxXfEbAR9H7Bb7KfAV1rhg3FNWt62zHL1ASGKoUZUy/jr2FaSP0yxnT+2xNJeCCpJQGXmfA/iuK3OJuwklsF/MzbHDgpoOVEZDiwgKHJsBTqMJs72Xx6Alz0ZTmgwVuhF2FvguQ63hHfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721579754; c=relaxed/simple;
	bh=AnE+reylzVg8H7+95nDDtJgMFLzxsu4Y/qjM7qkrTKo=;
	h=To:Subject:From:Message-Id:Date; b=GRAU6ctdgPElKCfemMQnkNbRJynOX98m3oqHoVf0iTvgm9TAe3/5GeI1nYbw1/OzGZjBetk76Q3/8cVF1QAhk75+Zx2AjUoUtjTQULZr+3a+UA8MbPuZw7+zofLmS/3MnVXvk0sMzM3cfkvNr9aNl+wmVHqIyvjgo9IdI0H9x/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kTqNWmCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kTqNWmCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF22C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721579753;
	bh=AnE+reylzVg8H7+95nDDtJgMFLzxsu4Y/qjM7qkrTKo=;
	h=To:Subject:From:Date:From;
	b=kTqNWmCDsUCkf/BraBLUdMAQvJEhQUEmra6yeuiNHVBQH+3zzym8a50g22lcju5b9
	 RPiL3Jf3b40de93BlC6BDzVObVdlDQvqN8v/IBYoufQEkYVgj8nPN0R6nepgVQ0bNu
	 a0isypKWxQQ2xZ6s6UOpTo5o7waVqv+BoxOoclloA1grulBRCg+VWda+EK7H8r97xL
	 69k58WO3l18176Wq3VOXILTKeIEmSQgdH/NY/wX3y4TGOIUKI2xDIf10pU/pV00lv3
	 ytLeMvJV86BxHhQTDNkgcFfo8ry3PB0N6EIeqGw8vPblZ3P/4Vs66vbmgnRWQf4h4m
	 7ToonBOOG/eWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9393BC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157975359.18091.16256302415607786558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa25e25465583fb010250c13c1c3329e12a9cfb66c3a4f61ee37786100dfa7f
Date: Sun, 21 Jul 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721579753
