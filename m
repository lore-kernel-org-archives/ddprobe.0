Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5221127702
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742965194; cv=none; b=Uir1JqZTHXHSSwJrvWewh6Xhyo8XzaOurYoQ2QBem/lOAwA+lv6vW5ZKMcEXVTRp+RyfdMEtCKOAaFIFKb1yeVq3rAB9PKgXd8RLmwda858EaPp0kfgDYimqV7vweWWHJYH3f3yry7umPX2jnfV/wfiv8TJpK75cK4sAneaQ8yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742965194; c=relaxed/simple;
	bh=QzNvFsUfxdafhPNAi7j3xY+wcp0HxWIW5lvu/46shRg=;
	h=To:Subject:From:Message-Id:Date; b=tyD1CeeYlTNhsczaiEo+Mhk1egG/Qoc74ysywe+PlXcIoW9wNVpS62f9QmwB+13aJEf1/UJOot1yPzSv2eaAUNjrIKVNJcmC8rgCNhWFSyS+Ou4uA00moheE1FshTOTe+WpFt7k8z1EwHSsTkt6ftsFJtpt1hZ7sR8iN9eLo0bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgK2XZZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgK2XZZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7118C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742965193;
	bh=QzNvFsUfxdafhPNAi7j3xY+wcp0HxWIW5lvu/46shRg=;
	h=To:Subject:From:Date:From;
	b=kgK2XZZmN+mAkHyzgzDA7DbUH9aaLcy07mWkpgYrq5govFVBEgqXp4gFEhW8UDQ2d
	 22Hg4rNDeuI0QZz3RVtrpGirQ9CuF85pKy1tOabtnHuAReUsOzesaHH3EsFsvj6AmS
	 YSiZROtm61SovejtALjL6TMAVJUGTp80+FEFQ23mWQFCtwne8SH35gTCQvTSBxRJux
	 9YH1bNDlFpITlgVPelsiB39aE5rq13F+u7QBr5qEByWQd6D1jSGSghL7siGirI3UG5
	 7ljmlPTZkgN3CKdMMeIYRpzT7xGH3MX2SNti9uxVebZp1RmMeVmq14oAGQYNrzdkZJ
	 HFC5Mgc063QRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5B0C28B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296519360.31190.16905235995061909957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0774bae6075205392a731072206cb02281669ee6f32bce0d91f0bac9178343
Date: Wed, 26 Mar 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742965193
