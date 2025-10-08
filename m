Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D93C1A267
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759922994; cv=none; b=tByYDZJ+n5dMQ/N136BSyfADqIB/hLUXk7SmQQlimJiupYnq2/qiboSoEtBzDK2seBUVANNLYxYfo+QKDEs6aZMdZsuKjJe7EnAFfVvmou6aY7WMFAD1hvaWyLkP/4+7d2rWK3kYV62p2BHHs+twoN7tCugWojkRqyLGmqv+jG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759922994; c=relaxed/simple;
	bh=kmb0Xb78u30BqOqP0SeJnJM/EYbrfUV9QLEqOpFByTk=;
	h=To:Subject:From:Message-Id:Date; b=gTHjAh+96gVoZv4HqoMNsjQhNjrgbUxL9T4i/GVeyJ3vAaL8k9ampKXgMP1H+AK9s6UFPKeROcs4B1PlQwfkxpmHADsgcpO5WMQON3wNL7BplqMKDv/Kp5a3I3lm3s1+nizp52lwDAePJm5dHngdlBNmcV9lFfOxN17IyfftZG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyuQXeKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyuQXeKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99A1C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759922993;
	bh=kmb0Xb78u30BqOqP0SeJnJM/EYbrfUV9QLEqOpFByTk=;
	h=To:Subject:From:Date:From;
	b=gyuQXeKR/WLmT5Wsb25+RFvUjb/WNjwswcgby3pbFcX579VLI7GHj9/XdWIusObOn
	 iZNAeCaynH6JePnmCcJgRZ25rpmxjT6Va8bDfzNC/I4smz2iQrL+37RwtoadmXzl5f
	 fsY+ZYdo7GGAPVhU6+2ymL/n3hyLbnVNA5K1co5bbgKvAfmmQ0IdHL265B9PjT59FA
	 nEbWPTKs7yiJJLoTDkwmRGfCLqcGTLC2E8p+ps8t1/BSm0SXaXHGYyJb+pCUHa+ZAA
	 FhJ0RI0w0cdZmEXWVhRIfVAtVCymjsdN3hC8dT4nW1N7zFlZq6eG4DEnzSbtqatODX
	 1wq3NXQ8AUh7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9507FCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992299358.22079.2938853305846189738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc68e5063509479325c286d008e977772278a3188f0c2ea5b20328b59a5c7d0
Date: Wed, 08 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759922993
