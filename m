Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA67310777
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758563394; cv=none; b=moVERqCBeEmd7D/AdMi0Tn3en6bwJlAguMZ1lGzFob0i+wEsrGLbhe/FKCTDo30NYWG2BS99BgBHeGQMlu+7qRn2xzmfG6m79UPKyhlcW/DPuyXLwkfvlhA8JcP5gsrkkmDwiJD9wbqZpg/V5I5RZnT5oRkdZu9yU8DtTXGs6Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758563394; c=relaxed/simple;
	bh=Kd9vYOjxru/8tSTYLLVlY/uYr75FDyDcEcGDOJgSPyw=;
	h=To:Subject:From:Message-Id:Date; b=d0Cc4kzYr1VWh9V5Uh22IhHbgps7WAs0gSHTu+JJ9qYxpO0sBCPLGB8a565xJ3AnCw1dKNwu1CLprEY2DAxLxF48rsOiBKZdwggrjgDsRh9TaeHKB7UTt10aKw58wUsejKKssbvP6E6p5NpOMmZ6JR6Ge0xts1QoqQsJ22yNxBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxcIKg+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxcIKg+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D9AC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758563393;
	bh=Kd9vYOjxru/8tSTYLLVlY/uYr75FDyDcEcGDOJgSPyw=;
	h=To:Subject:From:Date:From;
	b=RxcIKg+F94Hwj0l5VzJIxXHFAJrt7LXYI21b9OrufUSqfSU3qvP+kPUtBOBxgx0x+
	 wMeVvxrQZPCmO3RUyq+CbMoDNiciLGM5tNCMNafgRzdCw0AwT4C3So2qcek5uVAWHt
	 yhh8UX09kkLY0A15mmChSXINe41JY1vDq49keTuiSpTBOT+3U6ViBmcaTgbT2HesSS
	 SXITtnae3IPC89phZQS4LhdajLG+5N8fwwNLvQNaE2S5z9HurQtJAOVqp6JXlVKP1D
	 xfYpvRmO+SsPrr5bF6RHo1NnzAxcsydQZ8GiEbTL1V3hT+vcjnrZNDFUcxk6Y3S4zQ
	 OadYYF9uUfOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C10CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856339358.26149.9447830380008421208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c9f7d8fa5b4ef91b536acdcb5fe8450dfb1c7ed451077f3db52d22c8044ca7
Date: Mon, 22 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758563393
