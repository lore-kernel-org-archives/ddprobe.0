Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA3B26A0B9
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777107454; cv=none; b=e0vEirNovqLuiZmwe7EOwLW5ovtuMB5am5i6QFPEYZfLuhSPvNv7ab5ei5V8D2jxBDThu2nqwQ716+7iME0h6i8VT00h2Z3nxcNh6vRQP3y6fQUKuBSGuh/tD0p5Y85ymwe+x9u1a6a7fSmK8Qm7Z960COiKanED1xPjTD6zXIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777107454; c=relaxed/simple;
	bh=QBt+J9yldkpZlSOU6vhdHb623mPMANRS0QRdpeL3bzQ=;
	h=To:Subject:From:Message-Id:Date; b=oZ8vivvn9ZyQOthTsqJchvmSiwmJUWGOk5QSjl3pyxN2qipsgq242fmJ1GUSk7VxpQB4bBIaqLHsjXAaCVVf/2rApsMtHW9rNi5HnCU7oodCwWtiye4rAV8QZxHc+PL3Yx6LyApgX7d8/YW0Pjlro1AfZ++nxq6s9cqhlv02MKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqkz23y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqkz23y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E2FC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777107453;
	bh=QBt+J9yldkpZlSOU6vhdHb623mPMANRS0QRdpeL3bzQ=;
	h=To:Subject:From:Date:From;
	b=nqkz23y6JNSUYXvKUW4pz50w4uLlAgLVXr7Sd57fvIVIVkpjftZRoTQjbNolhge75
	 UFfrQKMCS8gEi0RSIgjuPOsusoibQO02/6a9z+pemwkxG97S0QFu2NmGb3PnrtVUHP
	 GjBZhGhZlJ5D0iWP+7OPSaT65PX12JYnk5aSYvKTSNlQiKcPeeSE35uY5v+IcHAMKq
	 1BDxqLAGtsnmhNd4CO5EeQ7ZdttZ+A7laOmfsFuRKadanbotvtg2yglELqqsvUnoSv
	 HIGs9nSDrgfnCF/3tZsr0Oro2+VdFgOxy1MD+dU90tYZ1X5PMfmrmGz3ZCnXdxhhm+
	 WC2B7gY5Uqv2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F69FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710745368.3551.16960401955788964230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae78ec6a0afaf7364fda3b6a1fab7f684f7808bcb7f5040e72a742119ec10760
Date: Sat, 25 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777107453
