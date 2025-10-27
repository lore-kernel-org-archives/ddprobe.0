Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1432E258EF3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761544194; cv=none; b=iwGWfJ909MeguSwIwxAd3fJjcuBa1WD04aog5wWPb5P8EXu3joXHOpJiA8KgUh8Q2JrlVRNK7cTpoJXkrPPNHzW1H5kQkkdTTK6cYzU0gEa0CmAAVhrRmzE2y+BCDQBnsqTxxXSdETeY+XRbaoi0Lm7hjsQYurgThYWY6/zoUVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761544194; c=relaxed/simple;
	bh=k98/xbMrhoINtIJSdtzKRFqd13nNPrxrFKF4EgDkfIc=;
	h=To:Subject:From:Message-Id:Date; b=onac+5HQCqRnyUcg5JSuUSOx4E18WUlSSz6tybSg3LnJnw/XFbcjTUWuME/M8L9XddUtv1gmyDfxKze/1/xptOmGtmHKVWX+L3IBcERzw11UjvKaFac30BdOmMQNq/kjUiZxnMSXCxnNkk3ZjF29D7gt8nmWbleHmDXq0o5hDSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1UYeuu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1UYeuu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B1C4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761544193;
	bh=k98/xbMrhoINtIJSdtzKRFqd13nNPrxrFKF4EgDkfIc=;
	h=To:Subject:From:Date:From;
	b=M1UYeuu711Yqe1GGjBxyQWB1bg/IXAWYHiyVK8iQlrKPlHZao0r8mLz58+Pw9db9q
	 NJhqjRhC3j6U+CqDEctHIcyuTPwHX5U1319PiXGrnjI6/6kE1O3OBj22rBixV9dF0L
	 O6vIAljzFvU1pKvO1XMkL2d2gSXZTkS0iKleeOhn05lBemPRCIZkbQT7+dfqOg/T1z
	 ZP+u5U1maE9lKicnL9JgJhjodrvX1s4uZH1Xc72HpzGJnuKyMmWm+6V7rfS5pYeSOs
	 x4Z2+adRAWVlDQQNHmEMSYPJKZH09kKx4KY6ZYSIW1hsOzLr/MzvmAEZyae7+CjeS7
	 TKpDGjSduTLkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8FCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154419358.22762.10870744162407537290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6309a35e9c67750c7e108070ad38b166654533f5a7a47330a92baf20ef4bfbde
Date: Mon, 27 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761544193
