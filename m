Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5A5369D5D
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788244234; cv=none; b=toKJrjXtQt7ACcUFm6zP69h3VKTHLvgL82wSVnzJMwoqdk2W5rFHgaUnY+l8ybYdh7iB93P/DO45wdLUESdbkBexQaVA8RtT+R71HMxpT16MyGafo+Asq8kTy1HHcMrp01r4zbku2sil2oRYDcbtPAwqHA4XJ1mEepHJZq1iPDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788244234; c=relaxed/simple;
	bh=Ns2JMb4FIy37TGGCM8IirRfibEmUob1zXle8zl90tCQ=;
	h=To:Subject:From:Message-Id:Date; b=Aj4eh0VLjWhewcOjkiyGSY33k3Y2Iz1NGlmekhhwHJW6eQUyx4MRE+wSgal6yHhwd+szgy7Sur/2pPIQjSuK1jWUSpJx4/XpVeqg4P57ECZjciB+2nolCJLr7xikc2simKK/7UT9cxW5WUphhYdtRSX79XAl56fqWP69W5DEDKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+pHEyIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+pHEyIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D306FC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788244233;
	bh=Ns2JMb4FIy37TGGCM8IirRfibEmUob1zXle8zl90tCQ=;
	h=To:Subject:From:Date:From;
	b=l+pHEyIxjrPb8m/nWCiAP9mjNFCDxIX9ClL+HyNxBt1gPUlEGF/UZH2SEZpGxH8OH
	 n5zO+e9EDQJEtA9/ktkXJqO+yTS7jXYIW4y2D5C0cnKALE6b+9hXFQPasUAnY4djtP
	 6ftqB46+TfC2o/nNL9aYozJIATpE1BNOHBqv5eKly7+RgHMC/BXDOIo40nlexTmY5f
	 8EqCwXhz9PTuh58crgG1dqf/+sEP9SEEucTRT3qV+oHs9qwuY1Ha4Xn9Tl4jmsuanA
	 6Yi1BhCBKi3my6inN1uXm7PiVCAvCvEaeHixrIe4Z4zEDvwGUqOe9G4Bva58sgapw5
	 ZGvtLZ+HGonzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED0C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824423369.24034.17602292104578964805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd99d9150e466b941369edc53abd3d21b964be4f7dacde6bdea108a6d519f469
Date: Tue, 01 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788244233
