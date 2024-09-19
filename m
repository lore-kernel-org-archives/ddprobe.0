Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374343C2F
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726708554; cv=none; b=OjXzUpAQ2AqkjmeSsOecC1CCvcuMcQpnNVLlhOOckFprYs/CEPfFqf4cNl/qqofoPi9iF+DIwshjJWg8VdXA6oGu8Lt9/nqmOCBXxwa9oclfy3ofXiqiVlQ8Ih2Wka49ME5pCt0iBhIc6XBPcI+xVTWy/VrviQblupvTFO6+8UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726708554; c=relaxed/simple;
	bh=sbRxes+Fo/F+oP1oyKPm26k06yuYjujbTbO3Mmqvp+M=;
	h=To:Subject:From:Message-Id:Date; b=jtHTyVaN/bj60aOz+2fVdRqD3lO1Ysv66o18c3E+wua3JOPcF7MSNJg3XTm5nBUJSVoDfh9z9vAbd2zuSg+OhtGyYNAsLzM+3bMdkc/szWZNlJrsqiV0LB1NIs1tNv9Hi5yfJoheeff/AdxlfGCu+wh5ZbE3dagkfVFTYDWEfo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAFJ/DO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAFJ/DO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF16C4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726708553;
	bh=sbRxes+Fo/F+oP1oyKPm26k06yuYjujbTbO3Mmqvp+M=;
	h=To:Subject:From:Date:From;
	b=aAFJ/DO8VpcKBarbgJe8/+cqbF6U6gcUyHlob0iaoZg2p7HRkM1Fs8khRXUq/soLK
	 0P0DtH/Irz5vA4DPNzQY7+5ehisUMqOiXfprcnjIrztE76MThIkCnZEUrgAO8D/zNt
	 gZgsFCFXUkR++7OW/4hLjAxAYGffpwYmHUNuNl/A++L/JdhGzb/rPFxd2IzFE3EwkB
	 hovZ1ZgFz/Mkm9t+7hbMi2U5FOTwnmkBWyvTg03cxbZH2HrGoyxRiJ7guoLmKbl+g4
	 2AQU0HntSbQaD4mxM/iib0dvYzWRYBw3KNlq5Vm/YteF0Y1b2RJZV8Re/mkZWZ/B1N
	 muAPc/iAVcxsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9BFCDD566
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670855360.18055.6671325793735305830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c674a1e388058acb7f134b3334cf056248bea369eee08977e2021011b0d953
Date: Thu, 19 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726708553
