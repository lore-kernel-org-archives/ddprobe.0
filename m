Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30492270EAB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765233774; cv=none; b=VdOQRbIpyu2R1c8lCd8wwryi4goYMgiKr/BFmWfcicfvxBi+1FtEfSIehVZ4wINVy446a2LrNLAyyscgaE/Zn1LRi/2q8w4yMcx80a41luQe2OzNWiCQARzr3hwFUnQvMl9uRohT9wkeiQ2zQ4InpDfQ2xksc2snmbvXYlhxfB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765233774; c=relaxed/simple;
	bh=sg12ybEWoT+r/O0jGU+EcMsIepNfT8bMTgCMCrk8yxw=;
	h=To:Subject:From:Message-Id:Date; b=m6QwvKk6jltjZP4OSumvLqa4Ot7vLCsFF0Jqg71igzlO0X3J+stDzM69f1PaxPwS8Yzak6V8aHIQDg0JBo8yMHWDzz6pZ0rsXwvgoJjYy5acHeps08LGs1eLMXJpJlR4cZ0UjRaRA1/k+dRPZkohRuxW4/3Ke/GZBnR+6blAmjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX84B/tK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX84B/tK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B238FC113D0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765233773;
	bh=sg12ybEWoT+r/O0jGU+EcMsIepNfT8bMTgCMCrk8yxw=;
	h=To:Subject:From:Date:From;
	b=HX84B/tKvWAL+73qRAN+ioB/fvIO61IJdivuF5ekFXWFw7kt0Qd7CcYS1Y2ueSzm5
	 +cl2oZz6f3CQZqtn2kxF3mpCsWsZ1Yj4N08KPNJOnyRyX5qKjuoH3oYTiKVsc5wipa
	 LYGd+y3K8gixjZWkBcCfsmuJu8cgdP+GhiCEcU1TVF4kffe3VEzFeusk2RzZxFLA98
	 l6hH6NcbplTSQOwCgWLgMvb6tkh4Jcg5O2mBn5wqu6i3P5G+Du+G2Ao8AjqcaITLN6
	 z+tAs2wSb6ohn/9zPFzl9QqCdKmN4gwSjfa7Vr6Ezyv9khrdFuODEZtpPCmW4rc0eQ
	 TRCdrVBei8zIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC99D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523377359.25848.3188819364421351662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbba82f7f7dde2a99a469f7bb352391c3379546fa9247e29d101f35e6afb429
Date: Mon, 08 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765233773
