Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D670A55
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721877354; cv=none; b=h8LfcwB0YsPZFq7P7ndGp8DkbmPUt+kWG9VQmvbZ5KsbEcfHNCUzYOkhPsncXLo0UNRhrN/6HUj9O2wtSJGezBDvH/b9lCb0uy4uy9BQO8U3shX75CtLbmMiN65DtQwjtfGbpp8zOP8LBpP6wqK3dMOKwtFb/hFQJfUCNX5G8WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721877354; c=relaxed/simple;
	bh=INKF1w8DFkuKuA5AamJW2Yay3NLfkuAsYj36DWB1a2A=;
	h=To:Subject:From:Message-Id:Date; b=rQCdR5AXHynvny3jCH3KJrLZqic3UrawGkq8/NkrkjndhtarQdR9z7cSONOtUGF8aUZP8DX6+utfvCw28/DEpaCsfeLibN8sIqXoHOdlV2S3lfpGmX6Vx1QXDgmR8Sx0km4idgC8pNc+aunx3qFaGMMxptkKhEvHSAu2j5VEykE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjAsWfim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjAsWfim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC7CC32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721877353;
	bh=INKF1w8DFkuKuA5AamJW2Yay3NLfkuAsYj36DWB1a2A=;
	h=To:Subject:From:Date:From;
	b=BjAsWfimN3ZHmkJtTfTOa7VrFLCBX/7by1HZfUh47pB5SHgGna7rtvi3m0B5hHI0A
	 E2vqDW5jP12FrwhSQqLkdFw5kL0RuHlXi5SuywTbzEHPHew9J/KiDuHtMzyqUi8giS
	 Ih0ktINajY2EMz1rDjvQlvq8v8NJVy+L1uBRHs1cGnSUK6b6ZM1AERcr1OwZz0HpIe
	 MsAxecRNhILFqEPLsBFIifwOcHEkN6Z+WtTuhXAJIjxeC6Tc+qTl0y52+Plr0ukpf3
	 0w+frv8TPZERgIjQ53WIqIBdqWLZiC5kNZ7WFschZD7NS93ZRzbRPrp/t9BfEdtCfI
	 ZzM0H/QM/y+9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93506C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172187735358.3448.8815960996926074075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70580c29bb010baf23d3e2e130e978b9881bdf8755c372aae983e29cb073a8e9
Date: Thu, 25 Jul 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721877353
