Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9B9339361
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787368234; cv=none; b=g+OFFKMVkaAkWwxrIlmXkALF5kUBZGEd0AQa5tmdmRDiMca/c76U2KU03GkzHNVvvMQurWDbrqZASh1RMiEiY/p1asQsNHrVh6vvvUbgRsr4z4ByaDR7LtZP9x3wCyJdnmTMP17kV6kcn7/rApVva0vDiiVqsRxvEFZuC+ardGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787368234; c=relaxed/simple;
	bh=4oucvOrGXYIhFVo27jjS4/Eparf3CmSCo13eyn7ZH2s=;
	h=To:Subject:From:Message-Id:Date; b=SgQ6dCKpv2BPad0fH3z/mzyfpxx9/Y7WmxQZsGlphKJcGVfPRiKJbGv6c41Z7k/A3+IWloLtySJ6bSnZSyFeoKn0vnIUgXnN3NN/nR8dr5hDJLXYzK+SLR4vGB9J1WM38RWz+oKAYx1kx1yVEj8vV8UiHPVcb/25+/8d26ruxMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEMhzvZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEMhzvZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB854C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787368233;
	bh=4oucvOrGXYIhFVo27jjS4/Eparf3CmSCo13eyn7ZH2s=;
	h=To:Subject:From:Date:From;
	b=rEMhzvZSYPVxB/b2ltSDBjRFkIZReNNKl+6nn5SasGpfuzl9m8SP7XmVSVA/N2qsw
	 QTaS9LrlO/EucDovviXGYP/7nO6t+g3oPSruPkn1fI6DtGjUG8ZqvIn+Gl+lYoL2so
	 3WoJ1Z8bdXyU2CLa3sxFwERt18RndIMsVfQVGZxa1pe/t7veuiAShzDxnMaIggkRXe
	 2eIBk4rBC087i2ILEGmowHZFO7nzndb0OW5CtcwjmSpEUphDvp0PAC+l2mqz0WRmBa
	 z7P4ZuFrDEBWGsCPFISMAr3VNu8kszNlgz7R6KfGKAd9aKSx57tNjL0RFMM2PGZHJ/
	 Glv1a9+IA9B9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEE0C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736823369.18413.7075319114814918881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aefa063f207968543a9511385ccf313a1a9c3b990f2efb32187dc79df7e3563
Date: Sat, 22 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787368233
