Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CD830D41A
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781668594; cv=none; b=brJBsFd2RVeWSs8YaodrU8h8IqAjy6enSccn9g7qITjl28M2PpCPcZgC04AZvovuhk0twWSU37TqWHwWLNNO2iUagrdlegA9WR6Kquru7tPxLNBtesJ2gzCEb6BZc74WSin4EnVy+grtmu7vNjE8bYCSbbzxoIWLXMM1hf1eJhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781668594; c=relaxed/simple;
	bh=CKEr7MJab3cKAPDGuLBLvoxZeCml3SaJ1JU3TprGW3A=;
	h=To:Subject:From:Message-Id:Date; b=t+vHAKFeTKfQ/N+dG9NGy6PJ8qPfRjphBYkaJGTT0zucYq9E2vPLpZtW27T3/5UVbYTchL6LqbR45ZSZiZbyYALzh82fOv2XiR+SH/m12TreHMD2Hz97EbQUuLXXoTipJnIZ7bxslPET5iFsu5LLjMKNCCPMlGmCN5RDkX4A8zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACgnw+hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACgnw+hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D8CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781668593;
	bh=CKEr7MJab3cKAPDGuLBLvoxZeCml3SaJ1JU3TprGW3A=;
	h=To:Subject:From:Date:From;
	b=ACgnw+hSJkc+pCMaKCU4hR+WigEExectTHFlQu/sfoL1enVtV3EU3lLP00zWOKZWJ
	 wvFevxnb/lLqGTYranV/hZSJtyStM4Smb7BFRzA2ZRHrXLNzgnt9euI1Ny8RdSmJSI
	 mbRAD+DnO7Chg4yF3Nw8eaUbCQi+5cigYG2EPnkRxTiqZb6JVDwSPkOuPmf+XdDDmh
	 Yg025wb07D6MTOns9aCCr3hEhA8biIDQkhYRRTVa+ONcBR5IdWONtwykeOkUWTEpcI
	 RXiaGDoEMf/r87dTOnI66Xl+C+vznt5hioFiV3uWK6lRiP2Ya07hcJAhmGRnxxiZp9
	 T4og+ukmnvXxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE391CD98E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166859373.4392.11084826067746125805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa43299fb4aede64489c677d271d2f40352742f85b191d1737be84d07678e5d
Date: Wed, 17 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781668593
