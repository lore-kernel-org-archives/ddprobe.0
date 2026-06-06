Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571191A285
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780765474; cv=none; b=TcHXTTPx/jW27AReqgX5lKE9UfZcVfDFy0NIumYJ3fcVxX3tijqJhAIv8OiDb8VnOiLNfg6+mWmhTOiNJFPoqMuOhohx5oPc47GSzH1xn9icj164AqJcbXvVUdqW9n4SdyM7frHeN43g/XOPfIFSn1d4qu7zFlQM+wn8b1OUwAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780765474; c=relaxed/simple;
	bh=VQKcVFmXaf8zjv9Zls4PMDdPR9iQsavo+4e5ptiRQiQ=;
	h=To:Subject:From:Message-Id:Date; b=bDPV1L7/aLHbvcMd5PF3+fg0XbJxM4DuT6tSy8sKVHfgTzC4ZLUKvkb6vRu33VSrL6gcOqEP2emQgDzkumLGyc0re8/PRCMyqR6LhhXXyDLkBVqncwVsgC+bqg72iNtYhPCux6TISUgGvq28Coz0yUCcL3oA/SEHlURqd6mhF4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mN22SDMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mN22SDMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8572C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780765473;
	bh=VQKcVFmXaf8zjv9Zls4PMDdPR9iQsavo+4e5ptiRQiQ=;
	h=To:Subject:From:Date:From;
	b=mN22SDMsfXzmKIxqbIP0O9dqmCuthXKJKo2pQrX9dNqoEgbkQ/NqYghsS7p4kzL2C
	 7vV1WJRmKun00Es60tf4Y7jtj7kKsYCjmRxUWOpzmXhrRi4+T5YXta7/KPtzmdvFPH
	 aQcXc6dHl2Ws3w764mf+6EOD+3ExdOkAs/NxukES7I7s+Gb5uwyL/PSsghqXmPVFIK
	 kjGvZ07bz3ZEh+6tDo2rBX2zNcbVfp8KIpEtWZcI1DpT0yUeSoEtohpH3jkUpzxUpv
	 phGMg8RSL7N6HAhL+W66CSycLiaXiaEjgCv7uGq+FBS5O52tH/CqMeoPdZm6qOontH
	 jCsqey31sQqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC72ECD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076547373.18941.9594438986281226259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a28ed8fa5e90f419017bb76328d84dd3f1e227292c5797be6933bbcdb6d74d
Date: Sat, 06 Jun 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780765473
