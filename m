Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4F72FB6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727534754; cv=none; b=NhbEsP4XRl40WSxsufuBwsVCoRmwzSr1E/yev1xfz2gxVZI8fwVq+L3pyr8bHoGHgHLApong/uvBTCAn2U4d7ajwgvmavOUmEGUdFdeuF/sER1s3wSOQ9TC4xbmONCkpPQAESbHXH5CyOrHloorPNunRipNBSQNidkj3puY8MlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727534754; c=relaxed/simple;
	bh=gqCF5aUWz3nmpfcu1KUHsGpceYd0LSGIg7qK56AzRAc=;
	h=To:Subject:From:Message-Id:Date; b=KcOn2goo1zNdHnv5cLxRc0y88ieQcBY7b/U5DCvokVyux2YILBm7DbsDaBwSlpXkvqrs7OkGGmZgjTVLpvypCtGJNQSPy7ksbXm71VewakAwhQpsu4Yx1G5uwewS7w7l20JQ/t0DeJuAtOX4dwTzvEYv3R8B0utly3/yX4EPqS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA0KR1iJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA0KR1iJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3857C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727534753;
	bh=gqCF5aUWz3nmpfcu1KUHsGpceYd0LSGIg7qK56AzRAc=;
	h=To:Subject:From:Date:From;
	b=pA0KR1iJjak/UjdfQ2XgOD50tlbhMlbYT56arbaG1EC3LF78L9WevJyEuz/0dVs4w
	 Bm4qyQQR1o2n/QGIMiwINoclh0BKgNhjioWve76wwvRN+tJAD2raRDDzERizEMtTzm
	 RDB/B6lD97flEQDz8ATXXEr4k5COYK9LJCay+Cj377NgzYEmrwwWCudSuZbX8VeMiE
	 KAvU454g5ZXrLUwYixF9MdfvR5kSTQp0VD+JAoa+iTp2B8uILFBMn/J9IZHSXUd4A3
	 liW/WJBUKANVhO/b62VOvS2eJbPzy54YpPCghkKtswq4hI+STE1xFzeTE2P4tZZwoY
	 6youcGZqRsLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235DCF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753475359.24911.3342974264231178232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb424f07fb851e97a6173349f2c5c13526110a58814551779f6895baeb12195f
Date: Sat, 28 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727534753
