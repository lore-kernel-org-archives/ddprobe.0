Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ED9137750
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745416194; cv=none; b=e3JKc6i2H+VL8xPHZcP6wgBw8jX2RCQTAvuEV+wrpCdEmAFC3iUz+Y73Jf4kMo2dnXubNm14lK1sGul3S1U0xyaq5b2rE+Vw5cGdpwRyn1vk2HnfAWb6j0sQvgwYrCugGhzYg7/C6UrQdRWVGlkwYGJ+O9DqVWz0MharSGA7Krc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745416194; c=relaxed/simple;
	bh=urhO94crQMw+NxBzo8AwEsVS/FQl0ReF0NYPtius5lI=;
	h=To:Subject:From:Message-Id:Date; b=AMGc2usoQauLApsZnJOLm3UIv9iDIbjsdHIOcmrvbe1c9QdS+zGOcE3f99my/lqUwuGkI5BtCFrAYty9AhLVFejO5cqRz/ru3y8zu305fofiwKqpLci3bcPH3Y+URAUQJ5AVlqzs3EncIGWbJ+XZnynXSJcsVNh0LcuMuZ8DHsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVPhKCt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVPhKCt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE1AC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745416193;
	bh=urhO94crQMw+NxBzo8AwEsVS/FQl0ReF0NYPtius5lI=;
	h=To:Subject:From:Date:From;
	b=nVPhKCt7kTjjRoujwdWY8HpvLiYzy94GLT7+ssvb44JhlgWD6Ss6ZabuMiiHrH7HL
	 oTDDsK0IvOY8h+biiy+EkpWwIxkxkb9rnJc9FZjMLf7msfl1Ke7BeljD6nFTGljrR4
	 5dEH7g5t+JhNZkEatBOPvi+cYg9ShjNf1FbG2C2W9V+kFVC5pyAglmifFbyx/VDmNK
	 l1txAYnQj+uH3rGRvmf/FlVr3vn6enFxwjQmV4G1p9KQ5kl0xTVx+ZQ/CZQlRv+drk
	 dz0ab0vWZW0yPa4ifwaMgBDLMLvP24BQq/mcTBerQteopYxAnkUObeFcmfrueItpnT
	 hYxk/il3973+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC3C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541619357.2668.2001140129763139022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d299522d4598049713f20ba2188904659107446cff8c89e9679a1d2e289c4d
Date: Wed, 23 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745416193
