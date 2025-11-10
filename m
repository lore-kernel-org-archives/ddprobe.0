Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097E014F70
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762814394; cv=none; b=R1XcfTGt3keFuR7qaEbK7DltX5nq8qv246949P76j8s+nAqHZwYKitns/lX1zP0fsssrsxn2d5dZmV2vPQ+m581yfVfFlXprb/mwQ+/WofcavMvtd5klTasfEN9r84VEGQiDiFXbdrl558emdoZwupmFmAvo8JdBspUEMiKwb40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762814394; c=relaxed/simple;
	bh=rF+AkYV+NjdEptGRTelbIgcU4x+dAA/2ER+fAwEgscg=;
	h=To:Subject:From:Message-Id:Date; b=EOmqAMPsFPxtS+YqoWY0c0SbbIU4seYsfSylfXtNRZFHJ9jtWJ/cvU0j1T1DAcEoIt7VX04hyw7OCPjWtCtb7I+RornX4UE2eZ37jF1iuNPAsqiPplySuN5JaRI/1DpWJU/5MjIjRHvmShYjDrZ9V3ZbAh/4RaGWYNjRBP/EtxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvftMeuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvftMeuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C24FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762814393;
	bh=rF+AkYV+NjdEptGRTelbIgcU4x+dAA/2ER+fAwEgscg=;
	h=To:Subject:From:Date:From;
	b=VvftMeuokmDlF6L+mPaEyV7vttwFyM5DtEY9AfTMXXCVVKS8ba2qjNy/uwZg3N/6i
	 ioEuXopPnAf7dvl2bltmWI4Z4ZMkoF1kHz4NHJqSdTuGR1dtbIJONtNH2mJPTPoTTN
	 Thk/yZVVLVEQlUsEEsJ4SM6+585ad9V0h0ICSVYcP1Zy5EUtyqm9xXz3wiJwMyCtdM
	 aJxXDJW5+froRJtYNUHl0e4yIYemL/zotKAl3cH9H4f1clNk1yGuCzIYQPb7K7V/eb
	 7egXbaHBGSIpRPl4NZ0T6hbNcEnN/jgFUBJa+zy5Na3mEgsvfA07fv+P0Bji1g5rgd
	 HodMb9ljh0dxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC13CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281439357.30293.8517482876080132634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f07f8c43962cee4421497442a4d8abd6e693dd5ed2b2458af691df7bbbccae
Date: Mon, 10 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762814393
