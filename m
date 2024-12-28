Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E46F382
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735382754; cv=none; b=hfaQ7DEHOTRh1IsCeDn8e4c67qUpZhxMsqK8q2uCY8DnyriSnuL+56CJ42lqp/q+rLXzOJULwJHLops+W+J6ELvBxNrrEHRv0x/Cf4DmWBy0HUWqk5U6sC1S2AB/7QXu+f+xke+axrSYPAZHBKNDyfQypSmybCbNkXUDmLP/aGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735382754; c=relaxed/simple;
	bh=DlIie7gtSooDWHezv/tgMxHTUb3g79LyeB/VMS0/wbo=;
	h=To:Subject:From:Message-Id:Date; b=kZl363fx2DMm6hDkMdLMw8k/GKJZMPHtZFGxwoTUK4FqVHy0Y5X/p/HCuEI90Cvcfxx/yfl7ZedjIKCle1vd7d0u7CGrWx2br6Wz6I+7RWGwcWPit7iHgSnIJ6zaPdv8PnJcDtLPYrwVHosJzVb77uu0HsLCf47bf73YLpknHYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul8qvc5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul8qvc5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B592DC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735382753;
	bh=DlIie7gtSooDWHezv/tgMxHTUb3g79LyeB/VMS0/wbo=;
	h=To:Subject:From:Date:From;
	b=ul8qvc5EnAHRN6EkOSaBX40EQ/tAkS+dOAagcxKhL5rqyBWMZGYDz8uYMPRsZ9geA
	 6f0lvp6b0qjTQvjrGDd5mWvAVXgTI32jaxEaFYlEcIzaVmCJ/6aSHLPorfABsnrlIO
	 g5MivQVOH9R5iIv5P/LtU5D0k3VFt57rCa90R1ysm8U6RgfJ4GgscxcLLaACd0U1Bi
	 Q6DbHSd7xjj4Sdt4O/ESmCaGLmOHH+yzv8/3NpDaBZgnaFzArfhrt9S3ZKiEz95LjL
	 QLcqm7EIK7hznahmgyu0uPBwQbrTDTaMnMxq+5DrdVKMfeYyCeeuUGMW2IIj/xwXgY
	 GJaotpDkqVP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A177AE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538275362.26853.16889019385086213941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66469ee2cc0ae33987a9751f2d1ff517be310343ae6c64a3a8a6f5584761ac9
Date: Sat, 28 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735382753
