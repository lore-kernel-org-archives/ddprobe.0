Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2915830C616
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771414494; cv=none; b=i1QKJGXj/4Jy5QanQ2XEncIM7jwuXck9WBLgKVqddcLFdh9gnMywrhFnOZX+H6R4DDQ0dmrD7JenkLmZAqgRTmX1z/L3negTxtrU5ZBJPuKYaEWRlqntAlvmcAWZHOt0sBPpI3NAnMayqFctgSp4l+5RnqaZg9LZ03B4SfQwLJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771414494; c=relaxed/simple;
	bh=Nfbsfzo9n3JSCrKhoXpng0kF9WMxMtf6gvm3UpVzgpM=;
	h=To:Subject:From:Message-Id:Date; b=ZCotXbUTsnWS/3/QuX15fd5vcG2aii1DzbbyK0ek6tXKtEPibbUrBsAp8K2H7f0cz8n9bDPLibrhEb75He6x6nlh091IPntzL9tC2YRZRdV0E07JsPSumBLF1lGbNUskg7YWrTV1bgGRgKTuAuFiWzPfmoPpETiTIw0UpkbJ0oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmtfLV0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmtfLV0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAE6C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771414493;
	bh=Nfbsfzo9n3JSCrKhoXpng0kF9WMxMtf6gvm3UpVzgpM=;
	h=To:Subject:From:Date:From;
	b=MmtfLV0TXDRSUGXT/Ebt5cnTNLS4/yo+tN99H+s4auhIdznwks/msgrerfuJRkWpG
	 Vo1VpN+AaeVbi3WxPEc3MrXJDIes092m+qMEGqWcnoMibDEikwJsAddNbWalVJxyXg
	 ER9U4ARQIwUIYRXyIxRKg951uqoZvhQKGlU+zUTTfXWYmfdrm56lh4F/Tt19MycCHO
	 33AdeIaQmvwrATkLpQq0iLb1uuVI+t4fnaKtV2Uj+Bus2vqs4xpllZd1SVq/6R5uAx
	 ZF8IuJwXcmjy5JnGhAch+LPKa6UsRPe/Sml0G6PCw40rgCeGNTx6AUIBKLJrYNt2FN
	 fldd9noE2G/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A912E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141449360.27306.10165479242909132849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13bed4c25274b5d014b97076af5ac23391a611a464b80a39960614e3c55ee21
Date: Wed, 18 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771414493
