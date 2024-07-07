Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5159523D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720319183; cv=none; b=kun0k9zCfAwDPqEUQA7S6qa/YVWh/ERg1xBwP7JIKEzCULp6jPtwD4islItKdQaMQxdQ9i1Vu4zKtcRbZtblhMJURf7qLBOKCgL1AxGaLBHZJ7hyV9iGb1VeiJMVFI/cxkph6kJJ8KKb/eO1KDrMfD5VlRUN4STRxbfTI9R4Ps4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720319183; c=relaxed/simple;
	bh=MDFW5XlU1LKS8CTFug5jPk/MDN7drUzs1l9gZgzMXj0=;
	h=To:Subject:From:Message-Id:Date; b=Af5X/CPM6TjRbVYzOmzyKzW4myrKegccWR9PpiswDFnzz7E+1+NqHMEtF/GHhkFuLVZjTNc/w7WMml1CGTehi7wOF3XURskyxDOTYChpsAhfgf0FCOz+eVZ+ejrZY427m3la5TkLiXU3zzFyxXIUZoTelGbOpf9E45edZCN/UL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nP0Bf3Y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nP0Bf3Y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4440C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720319182;
	bh=MDFW5XlU1LKS8CTFug5jPk/MDN7drUzs1l9gZgzMXj0=;
	h=To:Subject:From:Date:From;
	b=nP0Bf3Y+kWJOlyaFmHYsZcEwExlusIk6hOxqSOTD3AmrfmSuL/8us3FOclwotKYdl
	 b7fOLFJG20OPpI1JMuKuGr9FTkmQXeg4xowz9CPb90xemm33kTPK18RAz6cU4dJkQl
	 1xGlt/Uul54tmyOmsrAFv4l7BMLBQAX9tAFbIXnsSVRNkrMvznVdReMz/T+v6ZAFYj
	 Pf9xTSUiCakebi4IpcSTkllKfFxLLN6/PaJMdy48O/nZmw6mdPggbbWV8lw7ImE/eb
	 KAovgHSOSkwa/kALcbKtKAn1T5As9Af4eOPupPsq0RaYv1jTblV3dU5aUb+6dsSVZk
	 VmaM4PWaD0X6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE97DC2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 02:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031918277.11717.2973596124752918726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9f174500b092ef545a1ad4c5ef1e245d04e7d042cc860de732034b6e6d0b64
Date: Sun, 07 Jul 2024 02:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720319182
