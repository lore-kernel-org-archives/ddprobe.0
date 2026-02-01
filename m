Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1361B35898
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769909634; cv=none; b=phu0izdJYvYQoy6986AT1ussnFYs+I7uVMe7Au87V5tlullfKJXvqQwGCMFKaBljrC9BiBq2pjKj3Cazb0p31d7HZgPNaepBENUctGm6M1MbwzwJkvCQhBk9AHuWMld9CbrAdsErJd41+MTIiu7qQnL98k3Nsh6cA3MN1mpx2i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769909634; c=relaxed/simple;
	bh=X3KUsOeaCVobsbLm4/xL4UV43ok4NKivYBtXzPSGhpk=;
	h=To:Subject:From:Message-Id:Date; b=T5mMb8ucpVFp69dn6t3/M7pMBlaR+sxqQ/6F6Lp3sAl+bcrKqOzT26R0Kptjqk3EWhFrM9XCM3WC224nI9FWjEwQe1futqAQGw2zwyknT+h0wM3jZQ5jot2OAKGzzS0rc0EoNQ8m+2mOxVr39lk32g3FwmSYqbOy7QjR3HoO0e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEC1I2nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEC1I2nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5992C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769909633;
	bh=X3KUsOeaCVobsbLm4/xL4UV43ok4NKivYBtXzPSGhpk=;
	h=To:Subject:From:Date:From;
	b=pEC1I2nLirkGaulhulYlz0+Rojc/b0IIxTNmalwtKhe3lYpvUEpJYErtmeh47PlGW
	 dsXCyu7P+z6dSGPvZyVG+FOxmMPbVWSenhy+FS7jUuPucpOt3QotePJjR2fgAbscLf
	 DEk//Wgz96AX9G/FwF33T58QMhW36eQAFl53lkcyGNFt8K8tMwwzkCjsahkcLVti4v
	 ETB4QQz45RBOYvHntH1DOfb8ookjgZStvbJ3CbBUlThbJLxN3ToQEsirlQs4TDt+Ta
	 jvbj/zl/lUORQ2GLnLzM2S9Q1L7IjrV7c1oelbCIk2nY++xSl3nf+jc9WulJuky1S8
	 vSqdQdiYyLWWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91642E7C6F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990963357.11408.16062205328828471159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd33d7f051c22cae74966e155db5d642a69ccac0e81d5594d209c6a6fc767f62
Date: Sun, 01 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769909633
