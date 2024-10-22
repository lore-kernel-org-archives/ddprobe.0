Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394A51A76B7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729613154; cv=none; b=t25KURjHHwKmPtZ+jlqolhZtFiIPAe5r1ur+uGfchKDfgouoRapbJRP77M3cag/Ev5e3Yvs2pAxKe9XaFWZ0qOMOtrhEzjybXc0kXWASHkL1E7JvdVr2VzHDST35GpS6rg4DyA7InraSZ+AMH5OBdKJwGspn6g/HXHQ0mAulLYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729613154; c=relaxed/simple;
	bh=aqqsh8cWVrpOQXQYzescDmiT3axARIpUC8elddTXW/g=;
	h=To:Subject:From:Message-Id:Date; b=nK9pwjxa3WBWhPAlsTNajz1gacy3bIeC3JXGXeGjxBgjSDiIkj/04oaUQ2R9srmDKDzJVzUHk5RBaSUpV0mH2HTE3+hc9kUdwbf5nPsH13lxRRTVVYkoSg+LTaF9tv9hwUfswh9aXmR1O7EET5Y/Vl/+B/ZXXJTQbLPV0qT2Wkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4+5FuIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4+5FuIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC82C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729613153;
	bh=aqqsh8cWVrpOQXQYzescDmiT3axARIpUC8elddTXW/g=;
	h=To:Subject:From:Date:From;
	b=E4+5FuIgMR+AdB/KUNcZUjktweF1EQd03jFxf5VQ7csmu3ISEvhElLifn7GVKFQZ3
	 Gca5gBAKQr9+7Dizl3iSYJEtCRC9T7Qflp4IeTqSdgachMIOqqMYO2vh4HT8Zc/510
	 rBu1eiphPoeTwyB6Pw9Kxv/cuJFaeVAMzcI6bHp3Eb1zp15XY9ptf3sZtvkp+hk660
	 d771uvVrllpnmhDES5ot2esggVt7Z8zBO4jmu0nH0FXm83w60XCwzJ1uui1BoQfS+6
	 1fk/tJCxLTD7DOIfuC95+daIlp7BzVJeRMV3lS4gV0TVwwDowadpJqRzWrvN/a6RYd
	 jNzRF/ye2CUiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B484D2CDF8
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961315362.1732.16393824917631013649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5536fc1a19a2176c32415c5cb320d8cb5492b7754d4f9362d870b321e5bc6fa
Date: Tue, 22 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729613153
