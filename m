Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322CA30B53A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781563594; cv=none; b=phuLF2ldk3nARWuEhw0qZnMUHQMCJ9WvNqcy+6/GVt0DMYdKl5ytBhj79d69S8v8A/pl/WISHmnfettS9HRGiRcwWRSH9ackF+ujAN1rvDrxmTrsURHKdlVxAVa2bf+X4GrKUEoW+iZKfwUfB6NlejpSylqP6NrvUF2ZJu4nM+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781563594; c=relaxed/simple;
	bh=43UsnLoslIwfxQnLbrery8NAEOuyikyV0k6OSyMKXyU=;
	h=To:Subject:From:Message-Id:Date; b=rh5WvzhB5v6VK97EcL8jBGcguEF3Ghw7AMJfgJzaXqhWLWRE7SlSg6+Fh/K6sffqJXY79XAlHZI95ZpyyjPmVLzwcgxGqeTzM04fMal7vVxaoE8vgM62nzV+F9AU1/1JinP7cKNjiUGpPn+9inCfrMhmT+9PmKMHb2Wt54KNGFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffkqWNTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffkqWNTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB70BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781563593;
	bh=43UsnLoslIwfxQnLbrery8NAEOuyikyV0k6OSyMKXyU=;
	h=To:Subject:From:Date:From;
	b=ffkqWNTEauid6luwThPLa1BBYm/7N116x3bglNR6Dk6OEiO2BFYizeWVR8J/xUkLv
	 dGxgqx0j5fQVXDkn99QDYABqq2x4r/bPZpfezrnhsifWBuoHY1kkp3PQVoLENH+T9a
	 df5Y3PJpOhJR3UKRraHdem1i8cWZ5UO1wUZ5tyh9BH6xxvxbowYohPZ04Q4vxOH+Bo
	 2vY+SnZxCvxSD48l3xhvsllNQW9qpGYEJQuA+nY9ivh/FI81bBVTkMpiFG3mnIzRVC
	 Fd18azZuE+Al58TcYQ0hz9xmvHbmGjyySNnlggtv2LXwD5KIntzoDRfjvvN/SoHms5
	 x6gGRkRizX64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0164CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156359368.2760.15981437941287443166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ae2514e0556d0edf22f803cec2baff2acd0fd7cb53ff7b254957d029d28567
Date: Mon, 15 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781563593
