Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC9C17E4
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733484954; cv=none; b=oipHMH70YSnJ6IE4Foce9sw/SbYnoMszg2YZUxycvWG6uHokJllHoxygSW1tDq3kBt1/Q/9N9LEh4Ai/yaEpCbAsHYR8n18BcKsDuX/KRUWr92FywJToXXmxTJ2LXqCeB3tTVxSJIU48Cwjnc+hso9m67qYeoMHtb3sqG4YPpzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733484954; c=relaxed/simple;
	bh=mEpghYCG3oQHOrPUB3TzSmV2VQW4SkO9EoRnrJKN09k=;
	h=To:Subject:From:Message-Id:Date; b=ncMNw5rMTOJSDtaK2zh2Hqwdgzk6fdGlkT/1lGRbTDqobQ5FChLAqP/gP0n3fxHw5xZzLnaiJWVzb90FjQO0uydTsaiQZcGeGmk+P6TQ3e9ukryOcKLJil64i7vHd4jzMPC6CHx6X7VoPfyaOOgdIXhlD4+KLfpJp+B3OZ/QQ4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/IbrgWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/IbrgWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC828C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733484953;
	bh=mEpghYCG3oQHOrPUB3TzSmV2VQW4SkO9EoRnrJKN09k=;
	h=To:Subject:From:Date:From;
	b=T/IbrgWM7LwtxdygNQKQmjvbxeo8e8WRGU9QC64HPXAYWxZi8SiHXL7WcNXtiWQMW
	 qlAFY3nTU6Jyp//pfLo+d1x3GLnOv3UpAOaWBGhuJJ4uiIo0fUiE96KNhQjeEuuJbv
	 Ocz62I1ry+ATPWKUflfMjLzZCeTxjMcnktHLNqTG37MRvmKV2bkjjhYrGvx0weYWIg
	 baopQm1A88S+Wlk22WXmegWJkzn1FW+L/8f7hPVXBD7zFlOM8jUeHPayUHxu94gWfz
	 aFd/qGVML+k9VlJ+//huy2/SY1LoLg9H1b7W01c/vOY4Qgp6qT+pv3nPKw9o/2FNV2
	 yPHNOc0/Emgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BDE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348495358.9598.13107492481958419904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8afb741f3c96fe48034e3e5d4074ec4f8350034a3039dc63d84e20486ccc3c84
Date: Fri, 06 Dec 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733484953
