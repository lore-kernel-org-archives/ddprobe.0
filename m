Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5049A2904
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719052343; cv=none; b=VhcOTqpZxjMkMQUf419udkg1ZQtr9tAS4VKMJYI6XObdNlDWRAAHST9yS6DhtCj8DPNPT3IpZHkMIPeZC/RqNpV12/YxlYpTp3ybxurswnsJiQazsFSHEA6Uuf+5wprYyTOT+wxUPK1Lp8Md3TMhiK1N/8KQIsafVb+9PQF4NmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719052343; c=relaxed/simple;
	bh=kb6YXUZJJI9j/GkcrfDFdoGaU6sPJniCcin/msAFx/s=;
	h=To:Subject:From:Message-Id:Date; b=eQeOFDeWuj2iZv/vaTNzwg5FYI645xkwLiG0U5cB8SqaXw1QwBNUIeVLH5ZZZSa2hcP4uoXGb39ilIBaUn9vHSiEsUyZEqfHtC3N6dlIC7hkNGZ2qYaFa+ueadIaO01TyQFx8VTpGstnGu2nu/oH97g/JWmgDJDE3NyKdAFuTO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dfb/7we6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dfb/7we6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D1AC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719052342;
	bh=kb6YXUZJJI9j/GkcrfDFdoGaU6sPJniCcin/msAFx/s=;
	h=To:Subject:From:Date:From;
	b=Dfb/7we6Sj0LH0a1K2nzTZifTDM/JNmEQONyFPVPz32BDvS3v5Uxrc8H2iGKsG7kE
	 ksh1KWz17z5HeQ9YLZDb+dpOpFwXUJSC7nnRnVDsfY5XJTWPtf8k6Cx+3mf5iEFrKw
	 LYWia4gAH+A2XaY77lLGNSpbIlMIaMBtu/fDwAUl8A/pmysHpNZC6EVIVJIueTFjVf
	 Isebrv72QX8p9nEaTqNdkAOU+tq4FaN2A61s40SuKyeoY/ltQFStUlrUQ63RCD+cRA
	 s8wPq6xhJxZk+s30e7c0YC/MFGE9WnOuOqP4xCDwsENZ/s0zkz7uqKNkNasc9qmKuc
	 w9OWRoLbJsZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCA6C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905234277.31924.11615118053469217222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf4c866138cc0afe188a297c5d19268d39317bc55bcbc2434750ed473598b2a
Date: Sat, 22 Jun 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719052342
