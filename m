Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B8A2882AB
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791060634; cv=none; b=TWTRI8a1SoLWk6Ew59tnRWTfvlz9BWCY5EFXIir4Ny3NyxXl8noHvTWtaUnMLbANBPnPiIFyx44XH7vGsaNZuYg6Ra4mFz66zothOzK8GxEyuu5fx+4vJv+HoRDMlY7v2gb92A6FUCbBpt9dhCGEQz4oIH5BxW/1Dphc/TnQBOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791060634; c=relaxed/simple;
	bh=LLPu7LhpmZX+bqLZSiPSVZYZs1fnIR2CLzGF9eZGvRU=;
	h=To:Subject:From:Message-Id:Date; b=JmzobmJpc/qcia0hsMBtnM9kz5JqBAjNXauVfreEK4s1LXcGUP8zzwe0sDVbvTugFDH9FtfYkxv5QXU0hQuVxFI5z6Zq+j38fp0+dqZ0gmbDHOTJGHj6keINx4fbFb+wGMBiag4kEG07MJdGjJUp/CByLMraty5PFtObiirY0qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jA5/DrzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jA5/DrzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCD1C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791060633;
	bh=LLPu7LhpmZX+bqLZSiPSVZYZs1fnIR2CLzGF9eZGvRU=;
	h=To:Subject:From:Date:From;
	b=jA5/DrzBOphGoXZZfk0bynMVi8VvWjd4jQ8WPwdAAUBP9cJEVgotRm1AtLq8+DSL+
	 8mt5buReGsrW5p7EnC+lG25FUCEJ/9LbncwHtFTN75zW50Z4EnZhjflcV8YEixLAf3
	 I9DNPrCgmL9BKEGRheoNAukMIQaQOBeTteLmqNCu6nNMuQA7SRopsAb6kKX8mkuLqV
	 53NZDor5ErJ1bYuqCOf6+7hVu+JRg2S5UbqlAA7oJyCqvi1pvRc0h0ZKHgnIHDOdCg
	 qYZzu2/bA4WaP0PN8fl36hZkq1eqNAHlPYGOftRy0a4IXmqzFQjvVxMhwoh2ahTWRA
	 EVJOU1AfNVmkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF2CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106063368.14370.9907866387200253056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359db3074a10cda4b106e340daf0a990febdec26abb3538ddb6661de4568cfc2
Date: Sat, 03 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791060633
