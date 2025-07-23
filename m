Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DB727147B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753307994; cv=none; b=XNb/5rUqBJs9akJgtIMVdXlq+Qya3vFreOGqxrs8iSjjTNhwIgEL/l0RnbjGbIq4DghREEHNjDAe3tilWdAn7bXYblWyvBWEaYZsM1H1TynnDigwJGhS3Zo1ZI/5NOJBzrK21OUvk157rf9KsjDcrKdhoIuzkB5ZJoFlIWo7yEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753307994; c=relaxed/simple;
	bh=NFLwjfF/PlTycuCLkkOzGpuEnkRlIv6RLIX8qWYPkvQ=;
	h=To:Subject:From:Message-Id:Date; b=pf7v6fY64L12KcnzW0FvnfSarLeT8bYdkt5RcRP/ARt2XnXU6SLqmpbGE9t9QIQH6mae6kK70FKnfTw/5aeuqhw82LyXYRrtPHA4eSlLJqIDpmGBTu3dH3IYHPUubx/YLWwEa5qX6zGOq5lSr8FmX3v/bqq6xIfyCsZA0M81CPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2MlsRx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2MlsRx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0424C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753307993;
	bh=NFLwjfF/PlTycuCLkkOzGpuEnkRlIv6RLIX8qWYPkvQ=;
	h=To:Subject:From:Date:From;
	b=F2MlsRx9a9OvNj0ClkuyEMqmaQ3cUlfJnDfjW0e7yvq9RWSixxx5pSFncrrnumttk
	 /U4G+DOijq5I06L2xe+EkcmanenlOqSQC9D/V1M2q3Y18V+zbUDh3a5ocPYZUCng3p
	 meUPHRIILx2I2QY2mX0dhzu90RV3/2bVHLwuSzG2hrDw5QarzgYKMVweyuzRob4LQd
	 og+cZOsm9g4xs8g7Bdj3vK3wATVsrjdcDuItYjY2PEBypBM8pmQ5/LG1uMWbCYlJe+
	 Il5/Wy0/tfQzlllCh1iY/f9/2K8JvB8KQ4Viy9wsZa4sPFFN5DiOnR55UTMh72U+p1
	 in2nBiVjvQUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA0CC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330799357.26790.2210050133463132602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1985e1eec393cd265836419f44da1a53a90b81a155015b7940ccc1f56854a708
Date: Wed, 23 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753307993
