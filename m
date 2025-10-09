Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2394F25D1E9
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759990794; cv=none; b=Hhc6xPMvf11SQhvYN7V9DkBhaTMU/Nauq95Zoi2ruw6zw+4CHZD+JHP+rjQm5apQp8e6Qhv+PvrN0tPXGyb6CVkJMsGqn+DmIL9QI9EWRq93cD9wbgaqiY9xLcjYC+NR+fXLbo5xjAb5DHTY0RCY8Ve+p9sjBBpY4j/lm25VfQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759990794; c=relaxed/simple;
	bh=yzJNiJm/blPWbYACf+gs9kFV6mBlk1jSEJAVDljLEGw=;
	h=To:Subject:From:Message-Id:Date; b=lAtuATPbvwiqozYGoGbVMsYgR5TKD1Ij03BpNHx98kMVfMIKsy9w1x1PwtpQmD5CiYNJbFqGNXt/HrpkKAD4Ayhb2wGjOiZXTsm73Xqnn/rxKsQ8yGcC0KIp4ODxDW2IriNIxbCFAm9SWnqQh3Xe4UpKrsC1Qc+qFU5tZF7X4/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgaDLx0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgaDLx0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2391C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759990793;
	bh=yzJNiJm/blPWbYACf+gs9kFV6mBlk1jSEJAVDljLEGw=;
	h=To:Subject:From:Date:From;
	b=TgaDLx0DKZcihB6CE2IS6ncsUsJEJDY8aLIsPDbwNICrWqJSprq5k889+gu+hC9bE
	 0N3Kb3J8NXCWDS2fVlc9jjxiDE4tN8w8ZZD2vr1ZVQ2sOnBbHNmSybXso48in/Nwjj
	 ayadZH+1KKzN3FoFyUlhJfF7Vfxatqk+szUNFjNdvFIFX+WZMmUv2iJroaW7Jb9/fN
	 OA0zJVL7AWgSsjMoiwNgH/TTtvhJy/LrQfW3rzWt+WyrTmSw6ILcZfeez5L3P3U0aE
	 VphPBxnK4Np8YPBuYiYolk42Ro3Vt/r4qd5RrkkZhHm2CQWpM6IwfNKf+AmF5WghmI
	 Cx72RUrFkrdCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BFCCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999079358.10553.12133404689611169329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5617255b94220fb4c3e1b44f50aa8cc469f0a6767def8c7e133c31491091b4e7
Date: Thu, 09 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759990793
