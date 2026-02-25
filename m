Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E798238E11B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772011494; cv=none; b=BVCemj9DoG+uvs30jkOezuZxnCjpDDmmWDli2I+yEjsvPz+OfSuaFelIGwN6Rh0iFHAvXlAqAGuEoAPXoghmzGSDnRkU847yDVXkGvHZj2oCm76pxko6t8Gm7Cgs1OgdB+PhCxE2kMFemXRQL3lIDV7XK5IZlt78pP3amQW2tuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772011494; c=relaxed/simple;
	bh=AkO0oYV/Gcyz/2S0oq4eTU+pU4s+jEWP0qjT7JKw8lQ=;
	h=To:Subject:From:Message-Id:Date; b=PKCUV3s8CfqfqPC7dcRmg09m6to3GsdG85ZSRyGWn9aIfaV1PAHc9TJ07D2XZnbrjK+9SB8Jw1IHZBbVj1l2OwXSGoXDGphi1I4Y3GZTOt3clmdI3wQUYoE7S7Dh+FWjTvEME2JiA9GNb6yxxcxH6Yed6YdK6l95HgTu9pX6cHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xnj1hYkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xnj1hYkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7E0C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772011493;
	bh=AkO0oYV/Gcyz/2S0oq4eTU+pU4s+jEWP0qjT7JKw8lQ=;
	h=To:Subject:From:Date:From;
	b=Xnj1hYkJiuNKj9/sb2CcmtaTKiVCcMI0rpF0Iq/QwMWBwDHukw7KerZGc5GSQ31iC
	 8PIpt3MzVTHGk5xyiRhueaC2ben40bbzR4Q6/5jXpjPKOBNRX7Ku4So5UiTCJsY6MC
	 9m3HA99a6Wn/42FIM6s2W6r41IdpC8H0Zi0/W76bSZ1pxancPm+qEpIcpDPWafr2Ci
	 Dd+BRIVFWnsROV374JCLwz2cMRtVmt9HYmrUrTTD+JCW1INm57cDzLu8R9CwN2xjUo
	 UnMZ0t1zvAjczOj3e5i/s9LsEOSaFyYuekvyXmBKHB0dU54+wQSzEp3Y+jpo3Ym4I8
	 BtORvrx1e5+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51BEFD214
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201149357.15822.12924862637866409770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8587f29d01011b4204aaeacbba4ddcaf4f9979c09421c8e0bf63c688f3706b4d
Date: Wed, 25 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772011493
