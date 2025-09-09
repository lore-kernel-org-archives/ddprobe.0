Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A26D32BF43
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757438994; cv=none; b=RCDpUa5ubbz84nZFI6DKtHDXofUEB8XNk54Befrh+UT9OanrchuJwq2Xr4UFcamE4kvWjy0G7H8QL3wLtssMMnUHXMIm2dLqnKrFZYftc8tCY8U647BqBp+loaqBxj0Mrr4ZCqdApD9X2/dvg/8M4MgVwfIIB/b53lj3POgFEDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757438994; c=relaxed/simple;
	bh=+EHaRwp6ZHrOSfCDY1Cx3FNNp+uhSaEpFIzzgME3kpE=;
	h=To:Subject:From:Message-Id:Date; b=PdUjuiqoywnyS749GE9DdhOLSxSnCU02ORF+PtSKe/Q/NyOS7HOyO2hBaLiEU8lFVTpxB585MXYpLl/0y+o8Qu5OwHJVzjTrMdqwH2tsc3x0fo+pgYDXA1wZCXyQhstuKZtxDFUWvsNrR0BmnGD8HhWL6w3zMrdvB0d3oUPi8Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3R01lt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3R01lt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB308C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757438993;
	bh=+EHaRwp6ZHrOSfCDY1Cx3FNNp+uhSaEpFIzzgME3kpE=;
	h=To:Subject:From:Date:From;
	b=Z3R01lt11e9O7NN9mUT2S9pZGT6gD4E1gWuWlU7/D5dGv0aM+S25Nr8HZYNTi/PQR
	 JbOgL5k66/DBKO3ys5Cpd4PhYzANhNkpYJdxqWBrMGe5RZbJTdFY9BWLlYTK8h7Cjw
	 R6nowZmhkmJ4W9S4K3gWkdSGM5PrJrkuP0clcwy/nbFANSA4IXm27j50XMLLM2Agtm
	 T5XXR3v2bfEV4RDPGkjDUROoszOVEW3OT9QV7qvzY+f6ILyr3Gd6O1Kd89XW/cxTxb
	 pbByoDj/SxFwiWRXwKaACS3IZEBk6gDpoYxNu45AfV8IvWRyxFXgUFUqrwXVPxBneB
	 Wi5OwjC6A+S+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A01CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743899360.6612.10991143002427873698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a781609679790cc20bf5e65f60827fdad0585e2f5339496c56a43eee0b718507
Date: Tue, 09 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757438993
