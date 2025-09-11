Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5648C2E2DDD
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757627994; cv=none; b=YzpzoIxZiW/sDR3OYgYmxMMRauP1QM4wiaofkmpOw9of19s9Cp+oONuYWF1mwrwPU9g8O5leaq5lPABteG4kmIbIEYiGu3aujMct5/0RMdCjSgoPjXItTIG0UdLetXxmlCFyizv4nEDwhKcROg/pI1irlsuRoSOTNg84vY11/o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757627994; c=relaxed/simple;
	bh=bLXy5cKZdBhW8PvC1EVjKTm7nZvKbuiiFiUrcr8NjHs=;
	h=To:Subject:From:Message-Id:Date; b=XP+HOIE4ISCSG7rZULsHEt1y4LBHXGkhA+4F5QhIEWRnxsOuNtaLDQ5pn2jUSRqu+NE5l4WEXD8gd2YFK5802F/1fkEL6VM8dVUx03ukvWDd3WIEU4sqfz3gFueVdYx5jvHmnATORX0mWsctpVanieMeAdleR+rWT2TuSY8jjbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTX+EsDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTX+EsDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF62BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757627993;
	bh=bLXy5cKZdBhW8PvC1EVjKTm7nZvKbuiiFiUrcr8NjHs=;
	h=To:Subject:From:Date:From;
	b=QTX+EsDoUhuIXlCfyQjBR/YjhkVzQcn5woHHu3H9IPBgE5bVswfae8qBJR3LH6eCH
	 PwElXASH86UMy4AU8fXnwUmXc7RvngXLMc/FqyzhvczeMDp0WMI77FfFfatIfwpzYW
	 bsiMEnb7uHhyp+js0G25R6J2vA7u6L1sjzfKY78UTufnLV0zs47VDmcGjZoQJdkRC+
	 R5I7wF+m44qtgrwBwHo19R1mMeBmSXhMfD0X5RaXJjwCEAj/omjOBv6fm+4Z5D3S2V
	 2EwVh8zgyKLx7u0VMWJkV3M+3djzjm7qVtFNIdx6B849FPX/M33Ey0mH85ETmhZjqE
	 LxtbXf3oNhA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7E8CAC593
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762799363.27746.10857613703765861994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8e12d77994fc26a692277ad497889b5eefa887ba986a1454a1393901fce745
Date: Thu, 11 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757627993
