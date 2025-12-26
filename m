Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BA2287518
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766748234; cv=none; b=hLt8JC5gzc6z6GoNehZXP81ndBFP+iRMYYQn0H/cz/JtXYlgchR+B67cUd6KK2u0uukZmIwul8i9qy4ut+IZnbKguXhiAiBKUDngo2gw8toE98gGdUnhRTEp04LujNxvp8WY25YW6ijVu0e9CSQB8MXtdd/gJ+XK7EqldplqJWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766748234; c=relaxed/simple;
	bh=2s0O12tZl/BbFdAq0m5qhyAyWea23huB3SYpG9KMeeE=;
	h=To:Subject:From:Message-Id:Date; b=Zy0zmNQrv2EAYM8VmN5zvKcJGbGJ5giQ7w/bINIFKjsVSVtV8fXTYE1kvs2/dltj3T2hUviWIcJegxptnU1hzPF3XptyGfFIs8tcQVehVhSA96igm6Ha7J2LOIUsRhG1DYBzd3oB6UeIlSIOCOB5BQmHh3fIUphkXXYFqVUycQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKmf/YPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKmf/YPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0615C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766748233;
	bh=2s0O12tZl/BbFdAq0m5qhyAyWea23huB3SYpG9KMeeE=;
	h=To:Subject:From:Date:From;
	b=gKmf/YPsrStMwqOQDWXljRluSFpjLrJcZUDsUhWvG43quOlG5kYTxirBk64mtmYm3
	 D45OBh7MzvSlu8k1C2htd6jlZ25HfBmWSPQkQRiSqgLjKehFfXi1m/X5yPOJvpuPbH
	 Qvfwtspb2U8KyizqMGTnvF3kAAOpJQeFoBCga0UWWU778tyoiX2FZcH3JmsiJtJ+cG
	 5+OsbDmawOvVTZ7lOT5Fi8NeykUMBd1X8/cS5rnyNnaZcyMUPILukAsqvvapTQdQU0
	 hHY09SdWNOFX7nszjeckJywGwRyD0bfOT6oNv8WVop7PscDml7wUyDDB7rUrfNrbB3
	 +k3RdgfIUBzVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E054E8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674823360.14062.2326685950238382086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268fda80db027c8d5a0d4a32736d0e1dabb99793b0340cd0d99c9a73017cb220
Date: Fri, 26 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766748233
