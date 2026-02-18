Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8E33E346
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771408494; cv=none; b=ImyK+CQ+Ggv15VkDf0ldcFz57nSVQ1DgchSo8WyvmonXHr+QiC4nTo/WyiYZ0NLzp0vkuWaqOtiX0JHBSVF6Pn1LUwm1s/X9aeo9YfbrAlVtOAiV6g09nR7/BLgoakq14T2VblQ4gQkXyjEJN1cQVOwXdaVtI+Qoo2nvnEnLxpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771408494; c=relaxed/simple;
	bh=rtL8KDRpNgfCCAIdnegSUxMUojdC9+qcec4XTBRh594=;
	h=To:Subject:From:Message-Id:Date; b=LnyY1MpZnE2ohAMumGjv8r8WggQHChiY774fQafwj4kjo7Jl4k1iHTMmqTplPyQseyxs3wrcnRASPHJaHNJef4E97WW58BxJmJCSf/iHEF6SKOKbhwi99fnRJxqEyRhHf3cb82ecWBDByBh0fD69BRzMoI1IMjgTleQUliGArzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzRadYno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzRadYno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8160C19423
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771408493;
	bh=rtL8KDRpNgfCCAIdnegSUxMUojdC9+qcec4XTBRh594=;
	h=To:Subject:From:Date:From;
	b=MzRadYnoClknOSPewYcyBheYIsdr4WuODTjUno/txTyOFxeCO5NolkTIepa2GfjrV
	 8nehxVUtY5+OQd2VB6QFS62zpS6SefHKyFu+TsIIsXYWJCCKRCRYJi1oT9+H+ZhWAE
	 qiz4BWpgFvvJqCIbJD213xWZX7SHjFjf7DQ9nOMdEevxv+bgx/HEIUwULwo4Iffnlg
	 NQk50FHa2tUbJbGPjILXfvOPHO2NEs73bJ4AIysdsKJo4DVm9so8D0+oALVpEwjMtT
	 v90UwxxE+jHeWnMOOKWu2Zo6Ycq7w4B/1avZKqfzOZtxspYDxMMsAXkoFzSWK1hPGa
	 YpwmVK0pexWqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422AE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177140849359.4201.10728241892843972976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217c3368348d59682006b55690261c27e4be711c79cae84a1037f14e7d2ecf6b
Date: Wed, 18 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771408493
