Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332C74690
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758166795; cv=none; b=E57NQ6cIIydTLHAlAKlOdUxj5KdesvDMamyAX7uM+/zaFPciQjK8rnmqmZnocnh5OzrNz7fiqm5Zo8fx4VYAfLTF9NOcDiW1yafLp7G1RBEdLjPy6ATWlVpygTtbcrxg3/JodOVas2UmFXOipwoFlFhdEl32+GFBO3rJOPMFQwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758166795; c=relaxed/simple;
	bh=I2HNMJ26FiE5l2kM1h+oG/Rcp+k3NBHKbEGqxVQCT9I=;
	h=To:Subject:From:Message-Id:Date; b=eNrmTlCamx4Q2zvbaa+SfvQMEl2derNTxIgF9h39614BMCpSQnWUdJLsTHMPQYdeE5tT/KHL8NOSDPX9VcQJ4vLspokuduNNljZVq+lE8g4guktNauKOUX7a0+1UwN0y8nlxK697IDE95NCWZYbOH8xz25AhHip2CDmS2xEAo/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXorgHU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXorgHU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1594C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758166793;
	bh=I2HNMJ26FiE5l2kM1h+oG/Rcp+k3NBHKbEGqxVQCT9I=;
	h=To:Subject:From:Date:From;
	b=QXorgHU1vmKdZpumUlM2mOyxLpvgWv+ulGlJW1B5fJsJdxIThDbEVg2eTXmlT/clN
	 NKdjGHalDjiP7Fj3SrdW2FZz0rFgkplNjV7+kA15WtHSrCsshXDq0itiIYBB4HIyuA
	 1M9viuy1VMzqBUlaYX/p7dUBlGGZkHQNYelj6bEQb7Uk6pRITX/BcXo3HT/Ju2ucwR
	 22gM8MoUQi3F/YjCYkyjfZSPNgElXudOGceH2nb3S5P0wST7s0vePWWr/YrKdOjEZQ
	 8fVVifOJkT4su4+JUcP3VmK44asK+Ku6DPS/os4JNnlC7fbQjiiJaRK87i8Q0JX8F4
	 lV1OPgClyfVdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D4CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816679357.2280.10969355769211411020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303ae3a3ee2a018cf9e61d5ec4afe74efe3489db72a11b177f1e6691a4b64311
Date: Thu, 18 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758166793
