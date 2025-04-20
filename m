Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7391E1A16
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745159394; cv=none; b=A6GcckGKUyG0r7r4enPKgit+Kf/meFphFBkHGqs7uvE5OXKbkrff6DRmdtKJqEIoPXDCShQdCxPvqpDytlJatap7d7QPDsOLa4Dz/GuNclld6pyFsOcOlBhViI0gF5rqPW8V2/qXSJyGZVFJY59zmDWIAHidVqSu8zaHh1sWhPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745159394; c=relaxed/simple;
	bh=yeh1lkEEIDZltWK2hFX5uwUy8MvmT7FcyaF5VCsHnxs=;
	h=To:Subject:From:Message-Id:Date; b=Ax41v/9ucR/utawH+fpTrsGvEaG+uIe+Q1SfHwvWUwEDGAt2Fi0efx/TxJzknTbg4tsAVQh0CkSMgN1Dl4j+vcG8vDWVFyeZXakQM+bg08NMEYnGaLiNlLELUS72tmnTQWdLQrNIM8RIsimFyhBUhCJ/2Pjb6Cf10reU2MQPJGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGBzl7UA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGBzl7UA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF51CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745159393;
	bh=yeh1lkEEIDZltWK2hFX5uwUy8MvmT7FcyaF5VCsHnxs=;
	h=To:Subject:From:Date:From;
	b=MGBzl7UA129M5dSDJJn2FC/CMIgGgLU2FZ6ey06HlVxQQ5h/36aIXRX9MZWYyNoO1
	 8+KSlcKsplWhe0XV6QGlDOZPNkRvlNuGcPAwMlKll7FAjBwLtnyz7YxGThm+8nkB3e
	 GRCNSxrhd+20rstiSMkHAmQnQdzsHSdHejJxm/zIIxyW0SE4JgUKRga4FEXL8vOfg1
	 V+WtkmP+5vYm/cxn84WMGOI11unmIfLqIKVMN5Ktv4jo0UZib9ZCQg/FGXBObEsagz
	 qgtv3nYrhu3G4d8lwZMaJykvlBTWTlvhvzIXxpDYPdqeLqWad3MAZ2UtCReQvTZxpq
	 78XqjES4uRSKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96670C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174515939357.22003.15753936545441103193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5beeb774fa428269ee6f4edd34bef9031edf7e49ed08d0169771cab7a74a31
Date: Sun, 20 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745159393
