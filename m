Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E5C2E630
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743439794; cv=none; b=txE/rkfFfbPhG6Dhj+HWsou2bdVQi2Qz+yaBdDIPCtX4eq8FeKvsK+DcET7FrXLTQQjXcH/xn2saPVSLZekdjVint7lU9mlCV31o587L76t0ssDNa1j5Z3z8fMtA1Ej9AqVjg4WsHIRzyOrwluLS6E3GExQ5L8MWC/ZfP5SIWtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743439794; c=relaxed/simple;
	bh=rDU81bKw0QjbHQqCMO0dULvjor6kDEiUMsdZjFPD8lI=;
	h=To:Subject:From:Message-Id:Date; b=nh06zRHqS+4/FWWWSj+UIsYPFhcKhJA0QQtZasmnzZ4WLsZuB+woi7wCPXDQCmK7KrUI1DnBl0aJBq6wOqOJ9arJ0HeYDwpIXRhCc1j+33eHjqlGgAgK8+eCp8KpYz7W4UYKZgFgr5g1/y5+wDL/icGs4H9mRB/mYLnOG3u/bfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am7JdLmn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am7JdLmn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5443C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743439793;
	bh=rDU81bKw0QjbHQqCMO0dULvjor6kDEiUMsdZjFPD8lI=;
	h=To:Subject:From:Date:From;
	b=Am7JdLmn1ZlBeNefLRuh9QKcoCiaJerzSS8FsUU6m+1S+1v90O11fjNqdgDNafu1Q
	 J7kjnJG25cwIOyfhYXNA/jFVYJGsAcDPy3SpepWxMLUF89+0ygU9VCxrTx6F10ZIY0
	 hogi5FX1fbHm5/Rh32DUq87+l2HfNAhT/ZLcRlXctoEpPKpg2CO3wx2cxovcXs/DL/
	 +yfwSboxz9hu+tCrmxpQQqTY9owIrv3+U+dzs3SjO3GiiAvRN4Y8OHopet0puoJcx/
	 mBECaMP6BlHZ6swIiMUGHTEShEtq5ovezb+RPI3oysluwOp3gQL016VXGzNBAkFO85
	 o/6Xpmo/c6Geg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94268C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343979359.19931.4597044190841401672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080efa33b6f074b14fa47039cd6716a015ddea4d33a868a49c47064dc382afa5
Date: Mon, 31 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743439793
