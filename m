Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F7A14E2E2
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735980954; cv=none; b=LjwoAY78N1CiWL3k+F30yYBG8kTCTSuq/LjEloyULRZ2N84HblzmRJ9QN9lM9xTIscABu0eqT+zW0Vl4XHQkfetKyn944d8s3Q8aH2nmtl5AUUpXdoCsbvzIBVm3g5iJG5nIjJhb8oNmK85bWQQmyO5ntHXLLdJRZT7ch+TwzQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735980954; c=relaxed/simple;
	bh=iAIV16a9dpurpHs41xYkCsjwDAQySZgmfocvPxNTgV4=;
	h=To:Subject:From:Message-Id:Date; b=qVBcYlXHmwMUH3a/284XqMRq2C9bGgwxah+4nwlZlXiqVO5Jui1Ga6LGNWWhVVCR25HL5p2uoXbUqJr+91WNzbhEX18EZPZ4hfbzHgonkKPuvGgjPzXPlm09QA/F7B3ti/+AVyFa41DKOQPyVTDiNKKJ2XAg4I1ngZL2jjVUQ98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuGDt5iI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuGDt5iI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA25AC4CEDE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735980953;
	bh=iAIV16a9dpurpHs41xYkCsjwDAQySZgmfocvPxNTgV4=;
	h=To:Subject:From:Date:From;
	b=VuGDt5iIkjbuHTvniJ4HlnOG9C9AI0qxc/ff/15G+btNCLupb3xlNBK6JWIOiaHYy
	 VvroMBAjQSrbl71i6h1uKOoD+UkrjVPpRkwyUjpBorZ7ct8VWb1OtgB5TiHLMr3fXY
	 kC273diFsP96mReZ1lpeSpsIOiqcSz21n4ev4jzdbY3jUqS1e/mErHUdg3cLEkDaVr
	 JkCw8J77Lgml+iImZT2MoO/vvgkAG9ptLaHCwTa1ECa2lF9wtdJJyoOr2+rmewrCio
	 WLo3pF6o6A6/1JgZtBuOtBpE7j3kXfhlLapEhLEqHVW8aEBqtC6GR+6qyYX8qyhoKc
	 gko4L2ey77sHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A995E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598095359.18890.16108012773539466651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097878f2723abf271a1dfbe4600b792c309e499d2a42f9d1698ff630ad4e8a05
Date: Sat, 04 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735980953
