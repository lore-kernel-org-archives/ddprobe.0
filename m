Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575BA2E62B7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792345834; cv=none; b=tIWc/kq82WNe5hKOiNY0Y5JprXJ28veVGLUpeY4dyTtRlDjMHvdh4+ipyVV9+s/3ouDKBcPB/o7ELn7vyQ9WacbDBa48U/sEu/RB6Nq0HPMb/ZIT/JCjrSVoTp30nLEhkgkuiT51uGv2WeJar1nxm6HfRz/Wa2HwDifytZ/ghaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792345834; c=relaxed/simple;
	bh=kHIhWiI2U0q95RsjGYLMT1N1RmLa0sSzj9qURXdiekM=;
	h=To:Subject:From:Message-Id:Date; b=k37I+XLyrTx26q/BufPjg/kyVITbTn1RBcivbVxBr6a14l4C9kmWMG1w8YGxBexicAkVd0eVknbOht6ljjCpdu+cxptl8w7G951Vea5L4usdtC+/HP9xVpn64BzLE9uOz/mvdNXqLocM5Tq6mi1tllUaVza377kkhUVFQ2ISzyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itXKKKty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itXKKKty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4C1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792345833;
	bh=kHIhWiI2U0q95RsjGYLMT1N1RmLa0sSzj9qURXdiekM=;
	h=To:Subject:From:Date:From;
	b=itXKKKtyN4tsBgMnEgfLQP6K6ayEEtOelHvPaF0npYsNIn862Q0mc/v2xtZV4JjEh
	 2TlAgw4aTEniaykjt9bLvU2XR96b1DmsS3uTGv0iXMVG708rmZyNb+lj+Nvy7HDZm/
	 Pj5RfweIVdZNTK14GhbXz8ExeLNbfQoUEXGdJmnpfgkpXZGWC5gtXlNV5uqgsmG9W1
	 M/jBiWXP8UeEXQ1oI9qaLGZz3onHpreajDqh8gNbKYeQiHHTt76uoqjj+UYfDOMVb6
	 L29w2QAlqIcFwNYBIt78qjgS6CVttJO8Ujdk+mJzPp8jOFCFRrDpf3qWMQS1lDgbMa
	 ckCahuZMFoe4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C1CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234583368.10899.16283378204901178678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b39118b5890e9a3ea9cd8f793257126a864f294508fe3e341d613484aa767e9
Date: Sun, 18 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792345833
