Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497D285C7B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 08:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713257363; cv=none; b=NSSE8sr01m12pCQluHEVxEApTnA8KtmX2jh3Z18mmsWfoRsNd+tSJpARkJhG+unWbcSr7apknzLqRhUdLA85Rn+0sAQtUzQJF7JbdeMeu3L4c9iFkLR2ojl1i+p/M8q9FZhFPmlunD1iV8zGE33hLuBKoDF7hp3ozXK1ybm7vH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713257363; c=relaxed/simple;
	bh=y4qnXj5KIczGE4O3nf9aUAHU99BDivFJhcxv543XVgo=;
	h=To:Subject:From:Message-Id:Date; b=iDA/DutKCXQtmSXfq/iVCU/XfAdM78oaZC5sgGo4eEyIK+QWXUQ/qLOGQItvl2k9Zu8GBt9oX9Ke+nQbS6uxs/SpehnQwO+Dd6fenkV/0gW0xXPyf5jtHu/j1hv8tLxpcExyGWq8Pf8ovG9ItJG6/mzzFb61ifmucZzEYcwGbvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1kmDliH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1kmDliH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01F1C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713257362;
	bh=y4qnXj5KIczGE4O3nf9aUAHU99BDivFJhcxv543XVgo=;
	h=To:Subject:From:Date:From;
	b=S1kmDliH95ORN/zBWWyK/TYZCgx/dBRKLt7FjtDb5tXr3/wvkLQrmiICpBKjCMRQQ
	 P0oX3ff+jNBjmuJw+gAe6jnPtHU/mzeMvH8BY7GuKCrhHVAquta714UKG0UEPutY+w
	 tqsfm7EpTqQhQ4ywuNbiEyWdMBWIRN+ZyTreoKuTEP0Z/FYavsIvwGSENc07h99fAx
	 dfZyUp6gtcxO9OZplWlJk2iGBzEfpBfeODdA8Sbpks9EuCKdkUipKULOh0xByESPhV
	 Aw1d7lMk4H/Lq8FinE1EJw6IBPCwJlsuh35c76v40sXDcqgLUhLt5Ha8tO2dhqrCjw
	 TBt6vkm8a/rbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0661C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 08:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171325736277.24351.2375312434973788648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c6c16db7171257bc4aa8adae3ef5683f5a7184f426b03b440b3a95164afab9
Date: Tue, 16 Apr 2024 08:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713257362
