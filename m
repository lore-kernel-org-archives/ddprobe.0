Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221791CB9FF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729004154; cv=none; b=o5ZBt6OVEpl7OycNQj7yK3xx8imS9h6CToVVOuzLO8JXsIRWL+KO4bziJw59jfnaSU+kPE7Jt4+OT0XpY2LII2DHDTdVDl7eXWtDyaXGPGZLMM1yy9Uyl8o0dfvsWd0v+Gi1FR1cLacD+bVIMqg553X3ozRaRIBKbGjuGHMi850=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729004154; c=relaxed/simple;
	bh=+NC1cxyGNyJUhNb4l5cEnF12UoUrBHJQBwXzHdNwyx4=;
	h=To:Subject:From:Message-Id:Date; b=D3L+VLsY91+vFcYLoB0hKvY1XMLc46Ac0HRyxPAldB/R0hwo4arj4sw32kOSVjW2ERqFQUKUkpWdvk/7IDz54dFVpGzG+hW3tDlnlv70xzF8eVcWQOsjZvXSAKrl595ev/+L4oDqsROyxl4k9wkO3RkXKDHUFzWc6TOwS4DqNy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDr19mIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDr19mIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2471C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729004153;
	bh=+NC1cxyGNyJUhNb4l5cEnF12UoUrBHJQBwXzHdNwyx4=;
	h=To:Subject:From:Date:From;
	b=mDr19mIvpdXfdN47tfvk2NPPIEdeBFYo1b3BSnBVyCKZmaXJuBGjcq+7/JSjShl+b
	 Qa5OpAwgE2V22TiKSYyiKrv6PbfKgUmsrGBenfjM3w5KdUNpmu2RhYKNxPmnuQ4cgV
	 AU99iJtDUJuNnhmFcqrVisXvT7LuhffbfyxakhBX07Dk4t7hrzAyRSwhG4pmdo++r7
	 1qdbbGdzcvQfRN38112UqIWpu+uWQuHdopYzCnmBAoa1ywPtdfSNa2I74Q+RxUKGrX
	 DBRbILdOMuM7c06/XUDu2gnMvvhuyZmmBHj0Ju0gjYgbBPu48zNFIVE/k3ClwXeZJP
	 EWTcpDNojNFBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9282AD216BF
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172900415359.2357.7214850116622949020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef441944fcf3107509f32b0fb55d45560115344eaa4ab71a184f39320b14d7c0
Date: Tue, 15 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729004153
