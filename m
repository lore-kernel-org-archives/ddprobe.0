Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368F52D9EFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782128794; cv=none; b=Eq1EvniP6602OhbmX23f0e1IFIDJVdlfFxK2LUG2Qmk8E2+oPvj+eF5Fy80KBknik4lrZwHWRxWqfdO6+nXg07qQ6Tq+WGUoyg2uzb4b9U19fz1ZRBnpJWMNfIKRxCz2zDx8ZAzxQF5g0zluC1frfW7KL5Uo52ZMEBoZ13ZfnrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782128794; c=relaxed/simple;
	bh=elf/FYNVaNIzqmciTuTx+8J4+xwKhzGYBabiELfg8c8=;
	h=To:Subject:From:Message-Id:Date; b=q7Uvvs/8GEdGAnViHSRI5m2lQNVQqvYDdgbORvc8G4SGUhB/tp5t0NxDTiuA7fcvTPazU690Wi8L4iiTfDZmL3z6zbTFIFNNLXJxNqLerCVtzHJiyFWXstLuAtlTZiQLMQVN6lsVuUVbWmnfqVIHjFhf1YwMt2+zVtuzv15NtIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUWRz5d/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUWRz5d/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4FEC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782128793;
	bh=elf/FYNVaNIzqmciTuTx+8J4+xwKhzGYBabiELfg8c8=;
	h=To:Subject:From:Date:From;
	b=SUWRz5d/HAWTM6DB74B7wvulcVrg6ZJXQvgn0sFC5RVIZQsb8QE0yiRiV+lWb5qTl
	 ammf6GdNrGGA5iWAcgAiheNEt7tyBtAa7Zvf8APluTLjRO/Rt5iNkr2WTfVh3tmz5f
	 oSxrpRYXGinM+cb0/+jrg5/S0e9httlJMIO8eYXuL58vOnBPvm2bUXy48IfyaM+xLL
	 NzVlmxBCBqTUimSk/60/ZtnPDduUutUa2eA6UngCrSABsDD/F5tgR+VqtBKykfsBF0
	 j7fUwNYFYzJJeTVlOV6rXc4qoceLTcqK+ShjBND8U2sB5qZZ10VJDgzjRlV/Lgs4CQ
	 AQTI1UtlQrqug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B05CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212879374.11883.9831135154655804086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103368f758adf4188ffbeab6fe71eda65935f9b3cfe5cd93e4e321876e70726d
Date: Mon, 22 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782128793
