Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212913806BD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783524514; cv=none; b=K8kUwKU6wOZjwN0Eoj072ZaZUeOG3Jra+XpcmVduZuAoTAkYhicoMsYZ479qmZ20fJgoXSXBPkhXX9GkiX4uiB46aVMWg8Eb2UTsBHSe6HeUf+j3tWMqtK2+MrehZhS2HU6rFbRTbqHjkU8qc45m8Tds2PJsadNYEMpPyiWZbjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783524514; c=relaxed/simple;
	bh=bZRvTQ26GOizfLSrJU44PfYnAZGVtQ/dKCp8lV5rg14=;
	h=To:Subject:From:Message-Id:Date; b=PagZVoHV+AArLn0W7o5QHbgsj+/uBGbMQNabipR/yMjcWMhXJlz4hdJ+WdL+ZIe3uV4cJUqH1IXp5ZS+u31iLMSaXmIoAbrLwxn/oF1ZJKKhCCj/iGLlYj5qmxTcyOi1u+D223Gx7koEni3rO0mBRrkauXO7HGUrb0NjEti5qC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOslLFV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOslLFV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D002CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783524513;
	bh=bZRvTQ26GOizfLSrJU44PfYnAZGVtQ/dKCp8lV5rg14=;
	h=To:Subject:From:Date:From;
	b=qOslLFV2dRSHDE8o7sIK22eyssvQbjZbj+oQnkW/Is9ZnFvEnYTKINK9jVbq1dOAL
	 azXAIiHVMRnlFefqaH8Udxz6MUgRCafqu14THZxL4SCouC4t4cWE2NZ9uvXdIbTleP
	 66NMzMbk8MXTBeOYrht1J5Nftujpf59bwQ/t71Z6MJHNrX+Zy2hOcitvUQF9tx3gJx
	 2HDHnHUnsRuQkfM1QctRUvGm3sH8RpMbrX30w4HT0Doy4EcjP1VyIIsZ99hxus8Zyg
	 0lUWOvayza2SJLsOvkod5ADR91G9/ndzTq6ZBumztX5aSFVUwqZDy75p7d9+aUVQk0
	 UM27gyJFkQeIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD247C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352451369.31501.10279537673409176490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3ee799fe45a001b81c8bc042c4fa02260d63b4d7db181e53b82ee348a027cb
Date: Wed, 08 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783524513
