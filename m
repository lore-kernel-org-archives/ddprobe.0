Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1658415B971
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759960194; cv=none; b=UXgKvEET2K+eg39i3J+xaXcuEl468EYAYVZmJiZpXKiN7aq4dUwo6q2V1nbE2vqvgNUtNlQmbalTae9/6CfyQtzAScAkTJkW4/qiFn0iq8GyCMIGPsbk2/M9MBMp7fdI+xEGUT+wloIxTDJkVQimI+TUnumkp94fDFxY5/aX9/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759960194; c=relaxed/simple;
	bh=WfO/uctYXgZjTFo8WfyLsmyNnZCPda2uEzS4kFaI5+E=;
	h=To:Subject:From:Message-Id:Date; b=Adkrk5Wq1exy2Q/ER25Hb+n1Jg8UJNC7WBxFcZjfHXOucCIx5kHE8Fto8Ra6ZkVGA0c/Hg0v1hSyHzGsKZB52ivBwq48IzMGB4D+zKrusIgk66Bq9gxEoEwLqU3x8r+me8gq18lW8NUrrkegZ/FSc1NvyxOCOPEqB2NFrlEfAbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8YKROFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8YKROFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A844EC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759960193;
	bh=WfO/uctYXgZjTFo8WfyLsmyNnZCPda2uEzS4kFaI5+E=;
	h=To:Subject:From:Date:From;
	b=H8YKROFIP9zY99hfq38t6xGO3D72NFVno7tKnI/sb0KjRJxUNMTWWLbF7IHR/iRHF
	 pQZkTn5GC+LL6QEGF6hmhom8WNmVIUtszNdAm9yG4/c4T2J3S6Ewh05yCbMJ6BGzgF
	 NS+ucBHlNobsQh709LLrggQCeOcuVk8himoNMXHyL4VhLYLVzwnu+xXe3ftrL18Woz
	 kou3k3eLY0T1k6hUMy09/zaH22HP9AtQ1kawZvvNlU6z5ELGghj/b1uoYIn095wOUv
	 RFQt26oL1OdUvRGrh+DcN1I+6IaUhBA1r2Gd49hoOZFqlUAW0UUaQ0G+PTeyw9BzCG
	 lmI8phuTTpqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91438CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996019358.11180.10886419749070592496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fcf10f1000e5e820207d9a8eaefcbf39931095bc495767ad428c2557c739a0
Date: Wed, 08 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759960193
