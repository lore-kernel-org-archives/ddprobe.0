Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B842261F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706302697; cv=none; b=jrLpho5UA97pujtM9Ycta0yCLjByZ38ZeQQdKxFnJOFM3EmH+iMPfenDtmuDC8sH4LHj49S/fj+hdLf0sI3I++c/QrXnIfN9BsxNZAa3ZiLfCxORBNuE0aW3qRc2aYoYHRK+SStfZaIGnAbIdLgTjwXsALrSWQ063t5aRLLVpjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706302697; c=relaxed/simple;
	bh=uebfbNfNTIsWdD6svY5zBepE9t+Ibdxds4K2K4H1bCc=;
	h=To:Subject:From:Message-Id:Date; b=UhU2xcB1+A7yI1aaV98//9j8QDTBoys0l5khYdn0R5j3DcGOt616jw3uIDP3snAho34qonagwrf5joIghPC0aVESuAEkTjpaQlZcPn478WB/FU1Vx6AHofFvnUXXeouBMBdxT/Hg/N4nMHj4PR25HSsJnnjoHvEudGEWBA7p/ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyxZIShO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyxZIShO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5DCC433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706302696;
	bh=uebfbNfNTIsWdD6svY5zBepE9t+Ibdxds4K2K4H1bCc=;
	h=To:Subject:From:Date:From;
	b=DyxZIShOy17F+JUzS0N5WIHgnSAxSkFW08jC8yw9fyCvQFk9WDdia4y+EgDl04JN8
	 DtZOuxPYuY4mNh5nKtyFJCj/wzVPa42Aca5wYzyLxuid077Is+nWQwn1PFwQM4s+vB
	 4x8JI0ofH7HzEWi3w2XYgQmxnHj+e3nlYf6sXBdixiYDQg2I8sqnWpfblloDViljvn
	 FLXyOFVkuXsb4WyVbE3SAQNwHLK1uSh2XITPODpbnmoLJ8Ch0y9l32S7+lcHPej4MY
	 p53qIE3e5F7+RZh6Qmu5FEVsG/QN7oNMCXTGLMelrQESy/nhVQCSTNJORpJL1/kh2c
	 d0O7X8o4x6YGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66568C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170630269638.12203.5324857878313829321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb97bd022b709c198c9df45dd83a0af947e0bf99461231e09ecd7ef1aac3ed26
Date: Fri, 26 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706302696
