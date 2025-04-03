Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF6C2528EF
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743703195; cv=none; b=AWFs8tYsEu1V/om5OxCoYV43x4Pec/emOU+1waf59zN3ldPzV3NLCuJky6kr7dymUROqbNCCviEKNKzpr9h5HumB8lrvnNibdWjT3of08AEF9JlMeVs1cauQfZjz7PvGEhLahh/j3m3f1gUEGd/blV3RD+/IGkTH1fQ+g/WQnE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743703195; c=relaxed/simple;
	bh=0692lUPcpaSxogUToZKTIakCcDPWlbiSDy5EEV+F72E=;
	h=To:Subject:From:Message-Id:Date; b=p3fi26ed2WCFwe5oy3Jv6uIpKkxKDtLSx2Dc7uCmM58bVvv2gCDR5zqv6xftTouASUPlY3RSm28ExgZy/QjunGhTwgNutODZBRepNTgidbWCNEPD29ik/hnn+l5hTge+kOoKdi03QlHOZ7g/w3nQG9ZftZkKrUC8+c1Ytoix5BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWIYqKtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWIYqKtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B205FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743703193;
	bh=0692lUPcpaSxogUToZKTIakCcDPWlbiSDy5EEV+F72E=;
	h=To:Subject:From:Date:From;
	b=HWIYqKtAmbEy0GKmiCNtqtRy2yMxxytWdW+WVEkivAZajUC0xV3r12VnarTGjP8FX
	 7FJkR8suQ4BTL8G7XF/crZIMU4CI8A0UKwIJIjk4Nk3pUKCawZcIukRxLd4IvVJmBZ
	 6IY1UD+tIhUGiXbQuBmVapq5qL/HpR4w/qNtSU/BUqzC7ceB7wL9baDS3dFJHwON9J
	 fGFoFSKjEvNAKcbbkAS0503XPXvvZ7iaNo3tqMD4VrOgBuFAadNI1Jxd98UkNoHLUp
	 MJ0ZBroBCKhyvapTPwaHnHKBvOprXnntoE1suLIkLZfwV4LjwsFvumvv79gkJfi9Uw
	 uLusuDylsbPyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AD0C3601A
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174370319363.3787.9013543456843896933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14bfcd1d674457f0ac57053e6928e03b6e4c9db7f3f6fad9ebfef3f0a73dd90
Date: Thu, 03 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743703193
