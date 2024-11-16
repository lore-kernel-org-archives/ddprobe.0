Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332154C8F
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731725754; cv=none; b=W/XuGoB01SGxyfOVnNAJX42ipbgeblV0l59CRPaTrMR12TpENAQB84oXoltWGCrvYWZUB6thNPkjSggjA828+D1mbsmjTK3n3mggsoBN+vd0yREXdDB1G+unDJXw31FYD5vn5A/Hsp4f8UACyq5a+cf9gKXGFwxmjjb2ue/lYWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731725754; c=relaxed/simple;
	bh=9nB+e/wCN6iMBuQvR9lMcdsAyPaEUenX1knD/rHnM4k=;
	h=To:Subject:From:Message-Id:Date; b=UUp7/lYnXffrsEaMWO5ZbJWtz9/mu6rqn+t6fJqxTwp9PCJjdbumoW5euf1i2jAQciLfEiNa2tD9eJtse4EZN6UGiB+TPyroAF5yR2rCfpuwzElc84lM86XlI4YhJRSGjteed9lGSWb5orXkkW2/TMIsvL6XoH2wnMSSjCpTVCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqy8KLi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqy8KLi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9C4C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731725753;
	bh=9nB+e/wCN6iMBuQvR9lMcdsAyPaEUenX1knD/rHnM4k=;
	h=To:Subject:From:Date:From;
	b=eqy8KLi969xVMFEn6lsfdnzwU/G3Mn5pu1r+00KeeKxDLVmsbL2lEIS8YVYogjS8O
	 TDlDdGq/r83TdmfXhq/qA5uKuVhVai+TXV5vUlR0dEhgf+v9JUQQTrJbFBqBkN6dvX
	 M0d7FlNzhB4qTPjcEUVh+Jc1HCGtA+WPp6FRHLC+bN93duUq2mdaaaWNJs+ThHwn9/
	 MZvLNZrS3dpY4qxethY0a3fpl/Dz6jimy3PiV1B9uGJOU63PHX1k26F3CoQN5cQr12
	 ch0k4xJN2Bw+nIfKZePD/XpAiTh/uAwY6JbivTUdNLej2JRH81K2IyAD8oPK9BZ/kw
	 SxuCfNsF9v9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBCD68BD0
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173172575359.5085.14190808356626241348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd26987164b1ab73c05309a9cd00f31b8f3a42f721d25629a5ece8e0713201df
Date: Sat, 16 Nov 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731725753
