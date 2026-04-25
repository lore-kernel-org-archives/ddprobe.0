Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1213624C1
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777125454; cv=none; b=T6eHt9Bwf5RqmjC0GAmmRe+7C8+geG28UiYAXzEOu/yZ6Zo6Bpb7j3ExAwPeuhQmiLZw0ZFBTw23Z5ShKq/M0mo5UPDxTepcOvpx+ievjFlY/ZYXqAGYn2hOVBlR8jFcBrjQGW0J46fW2olvAHoz3GegJ9nnrg+BZuVmD1gwNWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777125454; c=relaxed/simple;
	bh=am2HiY5HXiIuMHL4ICkizQklb7qirQzcHL6J/kfBdcg=;
	h=To:Subject:From:Message-Id:Date; b=A2SSEtwpsIdpG6d8mjvrJpBaXCEYdsmdazVv+GhtNBKirTojUFZrzFpMa4Rt19m0MPs3Q5zee01wJTryl/8kyHFMJ3dVxmJuK/I/jnd2NglHmOl1UTF2lwhxJ+PxAAoTlk6d+aXkYfrJ23nJC7aCPHCb0rFN1vtSjeT438L30bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVh7TFa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVh7TFa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C196CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777125453;
	bh=am2HiY5HXiIuMHL4ICkizQklb7qirQzcHL6J/kfBdcg=;
	h=To:Subject:From:Date:From;
	b=KVh7TFa6yeq8+h0piNJ7xcqVI2zq2nCU0I7T3eBXrSAYyTF+E5Z7qW8sjmBXUnuOQ
	 mFDsOWXnCxNvUJv72a6ncfMlZJPRkwvdEIjBfYfTS4L77HDd3mRbmxtrm1X/eBzij4
	 SZSGJ4POhOxCdIBW1V7cnWOfXocY7fw40lDdJhtTv91i/bNmcuGicz27w0Z4P7/Slm
	 UdlqjlUsaVYhr3z7q+Oc6FywvtPYCJo53VncLNdwgZzKIpA/5UFbAsfoM4WaSSETHA
	 TVdhwB50ozulMk/zOtERpeM3YvxS8uH+ZfmJkUxFsdjaiaKdon5kL1W/FLbpXCC02u
	 lZPDWeZLqzJhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9A2FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712545368.14800.14441169504063778755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61a7eab1ec3ca54b739b7d77a6ae9ce2cc96ddc24556d19948093ea90b63a8d
Date: Sat, 25 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777125453
