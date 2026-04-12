Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E66336494B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775993254; cv=none; b=Yih1FAtT6hZti73l6EviSOcIo79+uxaY9V5Wmzjt61YcsOgoaIS7DigwM1DNu0M5N9WWbGnKJp3RNAZRBLMsbAv9w4ugtOnYN36zxm49pcM9YNKeC0BtltAYWNY/dAiq1NM/jHuRZ5uGwK5nLrLIkVrH0LbZlDNyCbAMGSF0xsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775993254; c=relaxed/simple;
	bh=3bpvW/YEmIb+XxkbN67fLlDtmaKcI+ICXmdWCI8ruXs=;
	h=To:Subject:From:Message-Id:Date; b=ABsfGVtCF+9jTmRVaARJIUC4WXmxR1qrFEddYUiuRIKX8uHgN5vz8uqV2PWx6fMRMkf170Z8eGHptENY52Rdm6E4lw+Wmo91pssXBeuvO6KjHw7cnoGh48qXlPAeZKn59MF+PKYCH8QA43q8bW1P11ikJy/7XzreJqsafW8Ep7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEROdQPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEROdQPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD60C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775993253;
	bh=3bpvW/YEmIb+XxkbN67fLlDtmaKcI+ICXmdWCI8ruXs=;
	h=To:Subject:From:Date:From;
	b=GEROdQPa0zz+vJv40yJv+KF1sZdB18GhTY179rvA2tqDZSSUrUudybJGavI9MyC6K
	 DWl/ND/Ja8sBRujvksgOATdKGr5q8rzg0fG8SH3bOKfevFcjXYySkpGErrAVPnfDWM
	 1a6eUTwzUM7Qud2yDxTK2hf5b4NejywkCO7uvyggEzotjH/qD28AHTdNb7nboRLOFk
	 g+6gtnNO+wlRIPjvyTlSJJvRnuvCVsA7H8MlCupB7LEYtPfDejXmjKjkUhr/5XmdqX
	 imCan4+5px4hTQ+qIiRXslcF7QpnA/g5z8q8XGE4S5NYAXNOW1IFU2lbPRkKXL2Zj5
	 2eqrRyyORIhYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC896E937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599325368.3713.14700818840653870829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b66d3fda8a9edfae13e2ad1303695e4104719e58e865955e9e5c8a10bdaa757
Date: Sun, 12 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775993253
