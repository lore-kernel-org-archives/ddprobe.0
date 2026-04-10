Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF833E1210
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775840254; cv=none; b=mj3alW5tMWgBqFLyNwmZ2V5BIo9/lvcmxDbt84pAiM2s8lV4euRAjz/b8rDzo3Eo+Do2GetpeO5gXDMKdQCG0RaVrlKcvGX5GjOAt/gx9YD4DJZpdlHCSVSrTFhh9aFnEAq2h5imKd3o0cthjL0rWx7BkGDhDLAucIiVWynQSOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775840254; c=relaxed/simple;
	bh=wqR/YnkwgsUYbLPw+No0MSXmrQm8BNq4rM1yoEbidy0=;
	h=To:Subject:From:Message-Id:Date; b=rMcB4R7V18hH7hMVqhCS9OYq3YUH6Bwqqti/iMzCogjbFQSuGAij4FjUmFVbTBLJwayRZwrST09lD1NPkD6eG+En4tchWncMs57xpcx9RCQCobYaovgXRX4pZ/EMhV6fWWon09aEAqhExY/8gkmOk5PKqCepzr5TUvt3JoUSnHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3iI/77Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3iI/77Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F30C19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775840253;
	bh=wqR/YnkwgsUYbLPw+No0MSXmrQm8BNq4rM1yoEbidy0=;
	h=To:Subject:From:Date:From;
	b=L3iI/77QbkyKceqvcRj0ip1w1Ynk1ddeYg6emHRuCU7Rj3yqsz3hl1L/JlTQz0Sb3
	 IBN7LfIKlX1FD7ElqeS+dEEGJLRd3VTW53OqiCvZ2mxS8FzvrfuKp4gdUhUR/CFKSK
	 NE75KpP/yMebH9NqlKKPENVhdtaf15czc0231f1Jhyyq47d/oCrixdtZ6xkHgwpYqM
	 nVlDhCLJH36GnC5fE3kCzqV6qmuCpAnGX1Ir6Y0Yql8uHlNGIe5/vySpJcj9DAHY2A
	 3WMjeWWoylkWwC1O7xidmk932JjI1c6ElnNjalbtiToWmbiNwAI4Buz1z2XX+44n6h
	 Hy4MJKG8Dbd/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA574F459F7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584025368.10028.11340018868461119245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e17b39144e7e81f622ff39f2e1966dc08e96aca8980280f2266f6a8a3f1fafe
Date: Fri, 10 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775840253
