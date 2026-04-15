Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E168625
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776212854; cv=none; b=GjM17AMjn6KLRVOulDdJi8gPSfukC361wZZKpAsvB+fnX1I7d544hgPFdWTQE/oaQf/nKOHQAV6FwyuaMSn7B3TFobkZa03Xa9Q7tf6BcQCCG7U+ZMDNnatIE9vkdXvJKJmlG9EtDBrUzuAysqlRmpYZnBkVgvPtt0HHdpY9U8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776212854; c=relaxed/simple;
	bh=6834M5Fm/BGbf+P03IUedNi4DQ/JYHX3xsIs+Wd74jo=;
	h=To:Subject:From:Message-Id:Date; b=T7L2zaS6nINQeNgzSgw+Ksh3q9rHsy279gglP9Xipt2ne21RH0eHO5XoQOUWc/AXfIPNyZgl5wgWO+vA19gtjlfuuInRiYAoG1yv9Dvs3Z7HqBwD3GFGcuRr7oqiPVcLnoynKKJfl8b6JQwUlasyJDQZfipGkqXhwgdhKjuJLyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmDJa2RQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmDJa2RQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC40C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776212853;
	bh=6834M5Fm/BGbf+P03IUedNi4DQ/JYHX3xsIs+Wd74jo=;
	h=To:Subject:From:Date:From;
	b=lmDJa2RQAs5chVAr8B/BgCuz2IoVpgLfQwRoGY/IDmyn+JKsCokR04MsW2g6lYxyY
	 DKp/o6x80hCZOtRi3yGw9F97u5mNomH56y5tjpVfjiGw63/hIRM9hfGG7fyIGu30Ct
	 EDm3veidtjsKMuTQhUFb88RWuTgL74LDrwmE/QF5DayCh8/TFJY2Upk6xnaYUG8weU
	 72SXAeL5u2JqPGyrMFXW+CCqt8e3phSX01H0H4uM4ApEx3ixELVV7pYOAgXiVFDIvf
	 MoGtfXOV/8pkChE9FsCcc0P+4xtVOAtLYs8DVf8tYeAEwBC9WBH0EaeOCfsWYnBJQF
	 Vcgb/PsQ2aX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95EAF9D0FB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621285368.14175.4716190753625048335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5a7c27efde86eeb57f35eddc282dab0236a13776c20d53e74bfc1de79bf006
Date: Wed, 15 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776212853
