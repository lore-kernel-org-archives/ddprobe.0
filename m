Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C7B2DE1FC
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756585193; cv=none; b=TotG7AE6N00s2TsiTgpL0Oi3FVlfANXC8pMJBTRQiVCnE9chNpSCUyB64gZXpRp8nD8GxvmQzCJ39CN+v5+YQ/YfjlGgoVld0ruWku6QRANopDH0Z8VML3x0+rc7/7ySF1OqHGiJe/pqFujAtzqn/cUNWON03InSZhm0RQkMcpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756585193; c=relaxed/simple;
	bh=6QYspLWUqsFjJzrkArmK/OL6AigQGGZDgqTOkdrZ5Pg=;
	h=To:Subject:From:Message-Id:Date; b=FtKsqcHU9NR3UzaqO5GBxb0eQylY5FZ603Fh1ASzGoRuDyuuMPHM0Dgtr7hDxKK3BT+vxygxkz83mvFgTrI7wk0gO081NAqf9mWb6YNnS78AnllEMnLYNzNIvxwAVpio+tnwvQh7Rx6MIGn9VlGCNXZ9G5uC8SQAiwhot6b+t/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzOtVZi8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzOtVZi8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A549CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756585193;
	bh=6QYspLWUqsFjJzrkArmK/OL6AigQGGZDgqTOkdrZ5Pg=;
	h=To:Subject:From:Date:From;
	b=MzOtVZi89bhk5IJROPtwa0fBTfJ75MuEYj2A8HGUN5rgryXWuyXHEGcVwMG4atNzU
	 KmOA2rIINCu9ToISYDM+kuXBAiHdyhq1hnr6qHtKE7UgwNXse0jlFke3BE5YvCV81h
	 Ux9W75S65vuEu3v2VKMONsFhwTJ5oPsXW42knTMT70kekstDBYm2j/Yv2cssaxN8fl
	 tAZrnI5TZNCq2udRG3E1hPetAOeiniKBOdP5d7bVeqTyn2HtgPsqMIWgLxskXJCTD7
	 aFlpPXadxgMcURm/20PXxOEGky4ANwPKMZ4h4vGr9LWH7zIUhnUNMOG/+Wz7PysdnL
	 NUy/kR/5C8OvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94240CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658519357.12804.11365810553829733140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f3b89c306a5fd925414c73fa1f786a817dab0f40212957a447967e8118880a
Date: Sat, 30 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756585193
