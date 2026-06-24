Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0F330F543
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782339454; cv=none; b=tJqkCtnYXOcs53UuUc3b147cNVkXIlr+yTeaedrSg7v/zw5xcdhGK46sBbEp1AWU1XwGWJawLaehJCqiqJg4Jgsp+PBDAFBXLFh1UXT7yzrokMlsvoSMZ0soIMsBc/7RGx9ZWP09rZLsghEk2DuXUkoiyKFFpvErYoBjCRz8khE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782339454; c=relaxed/simple;
	bh=O09+Lw5wZ26FuPkX5VdNf7DmMW7hMidNJH10vApySNw=;
	h=To:Subject:From:Message-Id:Date; b=dD7zSBNy0OrKxcAVo1zMjhVUuruLzI8/lNR6IZ9iPq0Q3Agwj7GtFx2C9c59N/O+GcFrtmAf1vsvOGCwYAsEZPopCUiAAjPhsqLyfSO9EN3V1IStGeBSZAcQJfXEcC53jLq182apKU6q6g8i5N6pw7ISZn0AuINvoxidcVP2J48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChVFLtc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChVFLtc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF63FC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782339453;
	bh=O09+Lw5wZ26FuPkX5VdNf7DmMW7hMidNJH10vApySNw=;
	h=To:Subject:From:Date:From;
	b=ChVFLtc+SHeAPlmNhVoTbZKWmQ8RwaahI8BnfnYtahQedynTadKZwYHNhd71DRCYq
	 D3B3YIoiXTi+5aEBGn+aadt47TqzV1d55ywa6o6YShjsau9Ciunyzr6tqW6bXEpIXU
	 IGrnJSvF25cqrrsuy6zjBYOeJBHr9I665Ju8AmILcSWCt5j9I/I6H/qTfyp4Qjrre2
	 uJKOvFpV0ZLOIVEeFVnvqK3P4bT1Vb1Qc3Di8A3mBJwJwO6byy+VbwatOIfIsg61VK
	 HVyc7bIzPbYqGJF+zfWZbOcfFVnRuli3XzOQPuCvvdSoNABfUBm9eQjebmFxIY2sEl
	 7sn2gKR1AWNlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D61CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178233945372.20249.8436632274928285428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9d2bd4d148202b22ffcd5a516d991ef808ecab703311113f9459462da574a2
Date: Wed, 24 Jun 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782339453
