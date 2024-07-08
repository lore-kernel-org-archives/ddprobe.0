Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CF447F7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720439183; cv=none; b=FU+jAuq55eZe6bUaQ1zCZpuJcapHeiYxO/8sswbV6G43ln7mc0fVb1dAMfljs/Ri3farPL0pwLYhJMBInekl4loKRDSR6B+Wf/YgCYljPdRGzvR0SPrKWBV20PNxgJn7gLI/abdmLjNtKw0s0kIfVLX3HmjqZ0wzVV2yGlS5rQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720439183; c=relaxed/simple;
	bh=zjaRWmJIDEKa1lkW+ngmt4QffXAsT2h51VtLokZWxn8=;
	h=To:Subject:From:Message-Id:Date; b=YOGkAPq3V4g1XJO8AOx4SwYnzuVmT76oFFJeC5+DqlQ1TOgboPgVFNcM3H1ZGTmysfCWduU9ITHYRFzbWEmi5Xl2FUX1/YFr0aFZNNmu6jrdfrRxlVgaocWd3MBEMf6UXBYZRZs1fbz2xxb0x2UqixLfTGGb47X08dMrROzr3v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEywmNV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEywmNV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1AB0C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720439182;
	bh=zjaRWmJIDEKa1lkW+ngmt4QffXAsT2h51VtLokZWxn8=;
	h=To:Subject:From:Date:From;
	b=bEywmNV82N26OZwdke/eaosmazWuHpjGsd931Q28+A2eGplSf1EqfmF5kb0oHBcVj
	 K8Q45QazKUMWPM5qGtHVTSH6IOhgZXO6BWSRrI/3MG7YZo1vBkp8RdwvV70AvhjPnL
	 Ho6svS2nV+IKvbzlgyzZmgtvsFlXRhjtwFr2InxaVeazI+u3FKhNQjQ84I5K76oMDa
	 u6ufLfAYtt9sRea6dFMVd19oTabjpZ4wF4RcrFOpvKr/UzqZrVQGaOqoQ6NpHWMiIs
	 7K3kc5NcVN6LwLaa1foaDh4gEfM9dWxtDYMFh+WKzSJAKWTT6O/qCNpvirVggZ8FqQ
	 axevXFqlwXlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11ADC3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 11:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172043918277.671.4434866693418763043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee0da124791ec5eb74e067d72ee399911a28f125fb50132b65c98551b0c11b2
Date: Mon, 08 Jul 2024 11:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720439182
