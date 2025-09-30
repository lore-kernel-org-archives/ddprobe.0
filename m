Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BBF238C03
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759262394; cv=none; b=ss5TadBJyBu/cdEpjJNsgCSzCXza6ofM79xfNl/X2dxTUfHH4rMEmsgvoZIRY1I5mp7xJN7hgfFMn5RxUdcuMZxxEjG3lbKox8z/9wDeva8QMv3fndGohYejnHSkNWK7Zxf7qhF41ikyFJGiUlALMNmYCCSQ2TrKjp0ylM2Nhl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759262394; c=relaxed/simple;
	bh=Bx579YNoIHv76LzZV1Eik8Bqmje4VvlDh0taz2VFDNo=;
	h=To:Subject:From:Message-Id:Date; b=G+vmlw4H73W3fwe+lU1BgX3M+W01bLHtop+Xqe7wqAIpg97lMLqlYecSSSWRI4gSfKd1uOtgu/+zkwhf4SLnnSnQDZ6uGklkY1WtGULZ4mQ8KHJq0qxuHaQFp4lkZCa+jfGCzfviAgDlrIxoES/pgYqm8iFJqa1AN6Cgb8anq5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/4I6XM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/4I6XM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3134C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759262393;
	bh=Bx579YNoIHv76LzZV1Eik8Bqmje4VvlDh0taz2VFDNo=;
	h=To:Subject:From:Date:From;
	b=m/4I6XM1WM5cJtmv1w7LVM050mAhYRNgUXn+CozIH9GiLSl5bxtFOa/4go4Sgb/es
	 LshLYnYfP5R/01SGgmYLiQTagPMSrQGol5SICKGAeyJWmP+DuMFbuJvhEklwaIOG2/
	 hHlfh92TzjAijgGEoQbFL+wEvhe1UAk9vnjI5Ti63jMFsNpxxCExYyRThxG2XOl3VS
	 OvMD+beRYFjJgjIyoOVtHLOVzcxJatuWWpsR3ZqpG3iP7elcOHw1kA8kUlBI1bgv0Q
	 OqA/Kf38e+EnOY1SgA4B9gIqRQr1tOJlC1AutKnKMoZ+5H1BwJ6IdNFBf3ayjqEEL8
	 sL1mWwJ4wLlIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91193CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926239357.30409.10699132183013728975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe528009d14797524745b892393bd79349a6c831ec83f5fe3f3384c8cbb3d794
Date: Tue, 30 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759262393
