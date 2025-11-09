Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34638BA34
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762661394; cv=none; b=cIzmTvYz/VMkLKXloJ9bDoKlATxg1RY3AY+0IFCBnkmDrOyudiemPyUsJNLrvyxf8rwd3S0K0yxL6xf+JXWqgh48eu+kdhbIw0/tW7udk1pQLbLWVLu3neuq9MYHX5dQUI3jR/w8ueqOoTAp4u5by3GMHYnHUIxclOyUbszQrUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762661394; c=relaxed/simple;
	bh=8EjLawQYrbhSF7WRdpeUxZ1YuagJk7r/3KMvcN50/as=;
	h=To:Subject:From:Message-Id:Date; b=bjDhu8Vt/hr9FF95MWzUqnIoVTlmIdwamiYFUZPzHeSDuKjwkw3/5+qf+B2gPbpKh4wJriQs0AisO0PWe6rqpLvcx5B4q20A0389hmBLPWeygkat4tXAzqKQzqTIWkP6A9sETHt96UloE85/ElF/68Wxot7me8pKnIPRIiAhaO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVqlOy3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVqlOy3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5583C113D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762661393;
	bh=8EjLawQYrbhSF7WRdpeUxZ1YuagJk7r/3KMvcN50/as=;
	h=To:Subject:From:Date:From;
	b=mVqlOy3v55hN9bV8peH6eDyqBQ9ywV0pL26NLUGHmcrlcm9omFBBk/0+8Wg3fOkoC
	 Q97pSCD1gSfWosgkLwe9keSNghLbzLlYttNCbP909cXjURMxmMPss9GQnetbgAX1RZ
	 zX2nktGao1fNMX5H1G+yAgYiSUu/GDBaehjOtv+US2wjRW92BY+aMsevi6E8pp3hsc
	 5Jb7Pf4KqCMHj+nZHJWuZwz3DOq9Cd4gTWeazboe83TYJMMH9+F+17dBlqcTrE8k6/
	 y76W2sfpX4oNnxnMjakyjts+bsUZsmQ4JZ0LgGB7RRZhzDFZuHm7tGwb4F5Skymxhq
	 ln9XBDe6VGbhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A822FCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266139364.7253.12052545697086855791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0b1943733b867e6c9f8f8984910e1fb9680873444054b40c47d80dbede6a79
Date: Sun, 09 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762661393
