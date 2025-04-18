Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECC815442A
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745008795; cv=none; b=pf//QFlDB8khbpS4CECldeVlA7Yi4GHkcHcKzOOv0hSD3Me1NfURJqh+MEtiTUB6aen20sb+92j4KXpAoOZFcewIM6691h8+FP5Yjl3YujrWNtg0D+ETZrWQ4PL8WXekkHvB3z9G/WSKFgYqllBw6OWQ8XJLuDb0/v8mo4Z69L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745008795; c=relaxed/simple;
	bh=NSD5ximiEQJoI4CBEtmqBvLj+ebXUV59vZ8SVUP/G0I=;
	h=To:Subject:From:Message-Id:Date; b=AL+h24Bi7kVJxCmDbo6V8dHrRKrsNETkaToM6ml8FAATuXszX57fsTiEoPLf1UtaOUyrsK0aT5FadOkidE9XYxVPwU/I43xy8I1EJG9avyzQY4tTnPmniWaDdibespi4hyym6SvgQafCgccT4/jvZ93P87eG9hm8F37w8k54KEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vO2sUYsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vO2sUYsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A845EC4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745008793;
	bh=NSD5ximiEQJoI4CBEtmqBvLj+ebXUV59vZ8SVUP/G0I=;
	h=To:Subject:From:Date:From;
	b=vO2sUYsdTmeHF/47eYjfQEConPUyhJFG2vErRp/axGPzwUu4ZEGBsckBRqzbGoTei
	 HlQGvq6q8lQdtqzc2RMeY6T/s1acGlHsbuDYx57muanmrtrun3wP4aMabda+36HQh5
	 LQxAoGfg7TMPCvA+OvCvQ4+op7/ws+D8odHaUBBRnuPwIUQgKj/74h6k9duW4SVamo
	 GH1Gkba1W1Xz+R2Je1HbED1JqfVMpEyttCB0xRfWM6z7D5L8JSbycvdWSKMc7r2OUs
	 LUyBVvOpCgmjcDOFZwv8CJvjBoWC1Pux0Tt7t6l1YsZSxkdXyYQGHGT/EXD5Xfgw9x
	 jB0GBkxOGRauw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9427AC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500879358.25400.8944463306711429766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1fa0f0deca3cfc26446be86c2a490ef82ce268ca36003ae50c7b0a08642688
Date: Fri, 18 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745008793
