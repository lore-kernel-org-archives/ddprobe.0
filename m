Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0D81A9F82
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775445934; cv=none; b=rcK0sVjscmvOMJrzdMiB7MMhtj0nAecfoD6DY/WW4wn7+1LtArZKQTZlP1RkbiFRMTuKjSxIZJ+Tn5pQe5yaR5d/c0B488V0QRtSsGJ+TByXYAYuGc9gnQ8caDd++MQnrjTQQnAhDOCECnUAPSEBsoTxMpo6ssiU2Z6DuF9BNEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775445934; c=relaxed/simple;
	bh=MLRkWpzh8c6dPs0CzETLnW0XpcK2yv+GgJueJpgL9/4=;
	h=To:Subject:From:Message-Id:Date; b=RoctkeZMGV/lNRbs9WyqIMjYTJaPWbpKyRcvvXyY4sJIDQEc6ARShX0vWDWCx/6H7cRJ/T3so+Wf2cJ99v/8BdAr+cDid7ljPI7v4MwnNklpzHpe8CLKyhZeRQdbsHpDj2Rjl6skagyRyPsOigXawmyk/hR01s4bUsK4vCxAztg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0kPpLan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0kPpLan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6E5C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775445933;
	bh=MLRkWpzh8c6dPs0CzETLnW0XpcK2yv+GgJueJpgL9/4=;
	h=To:Subject:From:Date:From;
	b=o0kPpLangKt2QRQPT3lq/ujAer6rpjU6kZBsM4o3/9ixVSsLb4qJnOYbLIJrqNHOs
	 cCbxm+DeI9NOSQhUAtEt0ftW4T5Rmduto7rQFCVRNCYBhkY4SmhkPexkidAo8erta+
	 pFAyGT3Okpzqi/7NafPmAK1FjugCcxCZwv2mBWKsL+EMXJAucdeDoO1e9n9jQ9DJED
	 GSsH0OLcoK3zRDGOEM+da7tVwSxPCEv9zJcWo2e+5Ha9m0k16GKVkfZ1PE7tsfyQsl
	 sWTs/V3wVsY/ZVyJPkLuZ/g+9NzpE887mjxJYcUO1v61ClXdyUcZmUx+/mFMieGm/Q
	 YbAYIEolGCudg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA977E9D833
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544593368.7404.14365491942829024526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b05dfb76dcd676419c707a33382b94bcf40ada9ae9294112a776856edf1d29
Date: Mon, 06 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775445933
