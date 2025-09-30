Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1E020C038
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759264194; cv=none; b=SK99rByOFSx7CPgcjP8pW2reWfTPn5Ec7XPZF0Q8cTbuY9a9wQYXmPSKOOX9DaHS4sIlvWRvId48qHj3mXxJ5gdvr9ORSvH0hBZggx5Qc5z47sSWH3cOENMsR89j+3LviiG0k6XGH5uZxOtDxaBRWJMDso39zMfxXH9/WOcOkXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759264194; c=relaxed/simple;
	bh=iGe1ekDM6IxXy8Wkfz9VQFhenDlchNE62KPppXqpJuo=;
	h=To:Subject:From:Message-Id:Date; b=qurGSqWqYk3wACXQ5s2xK1E5BvEKm089R3mNUDSV2Tsio86r4MhaabqetjaiD0N/E6xOXXtzQ33hsO6Sz79ezsxLAXDxGokC4bWU9/jgY5iFCge2ckwiRnhjSTWOsSzAy7mz6whwvV/EvrE3vVG/NLMOpu4H8+cBrJnoOjooRMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiZ0pCv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiZ0pCv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2A0C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759264193;
	bh=iGe1ekDM6IxXy8Wkfz9VQFhenDlchNE62KPppXqpJuo=;
	h=To:Subject:From:Date:From;
	b=qiZ0pCv9o8w5ebnQ6g8OTCzproJqxuLlu+x98oNml4z+Z7SW85NT2Ddq8a5vvppVN
	 T46bLR9B1K4bJYvbzvlSDf1NKN48zJ5VpSRxw9sZuNP1ciD+yf5tf4T3gW2ylx2yEQ
	 q1eSyCrya/cvrj+gpzqaElnQPYczqM2F2SJMKSi7wDnqULCWqG142LIK1yGYio0zbA
	 9NC1MzQB/aX3DLF8pMkTWNLfzVYvKFFQh1KFXXo9D7LXFqQS1rUhcNyQzAT1Ts5Upt
	 sPa/L9HBfC85l+OcC7rW6NwzKi93kOv09wcp/wOc052KLy3JhNVNANXKlxDWBzXucV
	 sqolBKEugOg0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F5FCCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926419361.21447.977805123178301903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f7f6826700a42acb80722aaaad291d875f807c8db8b4b90b6c60e91e5258e5
Date: Tue, 30 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759264193
