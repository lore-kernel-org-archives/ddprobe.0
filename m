Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA65F510
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745024395; cv=none; b=dyUB2tZFbaU+h7jcPVljAXlZabOSlI+O1ZaHXWwjQ/edJ8c9RunDUJdRGBG7CkQjTAPo+eOGrTWknXKZ/ZJlyLKu+k4Y0S3w280PrzIXFOAXHyDoVb3Z/7fELJELvoOFLUOtklkmP67AVnAz7q9PGEyUC6CiVMwSZUPM+u4TLKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745024395; c=relaxed/simple;
	bh=XRWeAg+yHgHLG3qSiFtcjm4LDqm4G+TWrSesFCNvm90=;
	h=To:Subject:From:Message-Id:Date; b=tOasKu6p2OwcBUP6Dcj9CpS+mAkEAOpQ7rJetMVhGru58vW9bYyC0tvxSxOxTfJtF+QbEMpcJeIP7sHD1QZP8vYygWyHyRJ3csdnLhRO8DJozlH8+byUnGhgjaxUfloTUDe1hqscctj8fDt/H8VvM0EIDmtof0r0ymJ0MQI1FBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/PlfEC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/PlfEC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5518C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745024393;
	bh=XRWeAg+yHgHLG3qSiFtcjm4LDqm4G+TWrSesFCNvm90=;
	h=To:Subject:From:Date:From;
	b=g/PlfEC8vGeMn995bGFCCf5v2S5J8w28UP++ecQjKcvOWrhP701sEmny3/wjIMPLI
	 PEbziEUkcLQTSlHcux8Ra60bbUQ8EJeFftxqyu4nLR/daYhCwz+17P2y43TuG8ld8o
	 9vK4UKB20lW0BF3bH3qX+pA7SRmLmj4+n6w6IeookOpgPcL7l2t2M4YNV1CLvMzV3T
	 fNgKcubq8J9CGeeKDGojqAasXhFof/F9/neMbM/qGsjBPEvLDEyjVYbuGQMbyWQ9iG
	 SzBuK9OiBHUAs6uMYdS7L0x4RIkThQgcnrdt6M2r6oT6DOyUU9VaSlvjMQA5TBvUt4
	 9dQaB0ptVyvrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90587C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502439358.19155.13987020864714480913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb11b1a8cf4cce183f68cfb1e8051810cabc2575037facdf92039fc97db4520
Date: Sat, 19 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745024393
