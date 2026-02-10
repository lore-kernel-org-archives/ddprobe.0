Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D5E165F16
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770761034; cv=none; b=fABS/ieKsPdfA8IZ9lQS9Gdp8ZH3Ym2nKruZRbjLrO8+1ZOl9HAQVhYXFIkgLseiTSCSPqAfY5rdb0XwmP83/Vab6mlriDLIAfynthD2bWEoD4SdmPTLP1ChjXQNiYo2pLoJ8096g8bhMtA9Z2wdG6fwHdxtYDvMyOe7hJcPWJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770761034; c=relaxed/simple;
	bh=5LGEj9dCe/P5pe26GI6t0F7+g271iCCqYavwCmY4vb8=;
	h=To:Subject:From:Message-Id:Date; b=kMJvLjgjIWTmYjRgTa2k6W7lpMLmfAdTivE9O6aLMlWOVFVw/ULzytgXOg3GulglqQv6dyX6Ac/hRvwA82IDv+f5V1qRbwDg78iDGQqEU6giA1PdBCk1zsRij2t/RvZFdS4FdeqcsP1zhTukjUeg7vPiCht5i+8UyqZbjxHTrOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKkDCFT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKkDCFT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86E9C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770761033;
	bh=5LGEj9dCe/P5pe26GI6t0F7+g271iCCqYavwCmY4vb8=;
	h=To:Subject:From:Date:From;
	b=TKkDCFT9djYokcfDsyXj1xNf4h6g5bl7XkfgxxXUYRUtsSdUpGGrxdOC+kf3tQiS5
	 DBhRoR5ZmI5smyMGVUIZPh0ZWh2x9ADL3mqg7uWDT9WsqxEELIbLPLXNnFnLeZ1nFH
	 B+a5dV+C24QntoNwSym8T99R0UUlf+J/GUV2NfcfiRaSY9QDzLvn5QR+Q3uJobU/A5
	 O+Bd7HoLATibexuyqK+yhEoDul53u4SYGJu5u0v4zubNnJof1TmEVgVcjSTVzvKFan
	 eldD80J8xFPARqSnS1buAecylmRKf+9OCHmUiFMl+RxXeFPux61m4kfp013NkLZ044
	 r6e+g7bWxPxGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95713EB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076103360.14717.14864946167341327549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4047acbb3a0e6e6b22cfb9172afc7b63c353280b2364714da7975111f214e1d6
Date: Tue, 10 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770761033
