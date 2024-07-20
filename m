Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F87F10E6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721446554; cv=none; b=UJ+eP0UlSISsKag+KcMr+hcQYBgXgJWUiazCf824JB5QXA2NvEN+hQVNkJegqzXLGxuAtwGn93AYrX0uBcyEOdiX9YUKjakLB0VxYnVrLyCbfQjY4qp+K32rmoPBpX4w61ukVL381L64ZCbGJmhwiltzRO/r4cMN+Phv7Nk1YTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721446554; c=relaxed/simple;
	bh=9ODATWxYPTGWIDZOEYXXRxrl4eA9mq3x0FkFWwO3Zzg=;
	h=To:Subject:From:Message-Id:Date; b=Ckv0e7oCIAZxVig4QV95I9L7671lCSN8lAbaPe70iRZr1bNzGtcSDhaNqCVt85PF0Q1YOqmcgL0oP7g95IlVbiQd4qYgEoWqLTocpIy5zwg+mwKEqbZef5ovvLloyR4z8U/eL+Afdl/qr07OuJl7BtNzMWCmtlTOUjZvDo/mv1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtI0m2n6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtI0m2n6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF788C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721446553;
	bh=9ODATWxYPTGWIDZOEYXXRxrl4eA9mq3x0FkFWwO3Zzg=;
	h=To:Subject:From:Date:From;
	b=VtI0m2n6ukmDKvjOCLTVgcihwQmlUdFvZqizKdtKHjzVAu6tdHgRFfOvoQBRQUoe+
	 iOAfuMejIAfvp+dx/U3cc/9OfMnjm83BTTjxcg6qKhBTl4Nm/h9JObdzBwKfaAiUi5
	 AkbhW43ZYpKYRd5UMHM2pSp+OaaqnAwaEx/ReXcvYXAVjaNIu8pTsXzqleHv1HAhky
	 oX9gKLphLXuoVJ4Ycj1BY5lcQ4ac9m8wGoSF+W+vLX9qBAlv78Uw5xcFVFcHs7fzeY
	 qf1IJgY0RJGIro9U6fSYti6sL3qFExEQISstAExTjpxjrFLEcRucXBNwJvgWSE1EXu
	 ogjnBt9fUd/Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBA4C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144655361.13608.17377683230061475803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987bf0a9e572f4ff8c6eb34e62bcbf41fabf5a164955ac4c52b9944f2c4d2e13
Date: Sat, 20 Jul 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721446553
