Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192D023BCF3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764913374; cv=none; b=u7QwSW2SAbvwtA9YY0YJINBBgN1iYGYqthJE1UsWyqCBJBzKFULIm/frklfRxg2nQ59muzdfg7DQczayK6CvSLadYKV/Mee0WU3LysI5pLNL8JMK7y/GxAdTmt/40IcEe6uaVcNKJanmbpspl11eS/PbcsPY0cDNjcG0+6o3a98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764913374; c=relaxed/simple;
	bh=wLik03k1q5PROAt/Xcy37JmyoXJ+k6Dqf8Z7YNzaJrQ=;
	h=To:Subject:From:Message-Id:Date; b=dcxeD4duC3Dz1ya9hOYnXJrOfFsb2jkTwYvCF2+MvnnnRM699tXbzwFCsCDRfSFEBxYd6GkApvN5mFVSogdzfHMOZh350tp6cn2pp7Qe7qL6o5QwJsTCc8w0JMdvCqBHNE/F60aXkkf90AbUBuznV0IMc1gV2jkvaPFG4dq4MGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4J+oVBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4J+oVBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A544BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764913373;
	bh=wLik03k1q5PROAt/Xcy37JmyoXJ+k6Dqf8Z7YNzaJrQ=;
	h=To:Subject:From:Date:From;
	b=b4J+oVBd1v13onkKn84B5mQWMUYEuCkoQkBkySS0bqJtXe8a5z1/bEVvbO5XEST6d
	 wRGkY8+EFwdCxo3BLf3n7F1F28YYg1hQaifXDv0wwroaX+i5oMezZbeYMl21W3JeX2
	 9VUiQj/XCV9TGPU6V3HzfOXrM9/R7aIDCSvt7wKWSEt27lYRd7gVrTZPduOC5YA7R/
	 nn1pZP/Z3mOQUuVd1a6pGj4YxqUOWeT9ncLQB7et8bdg60ORkk4w3YdTjA+VJDuZxp
	 /sbFiHD1uQw52/YrAwcZFDEZSM9GT2/JQvh6cN7lzL9Zx30NyvX+2aXTLoZNDX4U2o
	 FZg84Fk97xP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A90D2CE1C
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491337359.22684.8622943889515567832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29fb3981efdb082edd3ea4cef96b0a71c23ecf2eab0a3227fdc0fc0137186c78
Date: Fri, 05 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764913373
