Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E514EB38
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737536154; cv=none; b=MfXL9utGMacdN8CbszSQDeUiHmxnZr+QjQ/ciKUxV3YL8lrECCw1Et7G7zKz/hvvQRD0oXVd2qmhaSptB1Ov3dlz2cNcNcbGmSHbm0MgWyjqQ5rIRWm7IIbyqlu8xtCSW4pBBrfr8OiuwYIqzHLH2VfGXpensMI10/tTteaHsto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737536154; c=relaxed/simple;
	bh=COvGpLwatVQmwtT4XDRoFDL4+QMf1tf+thtXYKCIJ7s=;
	h=To:Subject:From:Message-Id:Date; b=EC3ADSfcGDLjNcNWJVJVq3hLKtGCxqDN049AzbpGOxwCZd01JrMEKK4XVxPdvrzIDYHMnHCQtrcCEqQjEs2dcNSYW47jaTEV88Fhhbt/1hX2hnGHG88RDDSuRkrkrzUqMUwuQbznHbQR+s1ycheZiTZV9qrIcajs+O6jo8/D6wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGFjuPEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGFjuPEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1066C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737536153;
	bh=COvGpLwatVQmwtT4XDRoFDL4+QMf1tf+thtXYKCIJ7s=;
	h=To:Subject:From:Date:From;
	b=dGFjuPElMcHo2s2c8+CtfHNwvqNf5K4r2bz1M2gCk1dkEbJuE6erhtEGmdRLdbfR2
	 2ES9aQpW0jJfNLcIh2Rqk2sIEG+xM2oGAlYs/OsCNCtod+LPoTadWKACBCn70QKQsr
	 BrE2RuL0Pr7vi7AXzdIZPb3Btd8UPyzXSYMhWwdjjyP1yc6Cm63eKw2x9thLyhKy4z
	 7nVe2HwrTdqL4OXGn/4m8pdpzM1O0WaeyJ3o6Cm/83p6TXd7xPzMFJ7seQxkrDXBpF
	 DIKl6zvw5n/Vt/qiKRZXiBmStk1ihIaZYwjakNRVDPxfCIAX/KCdfHeBGVCwrnJ+Ro
	 hjq47PjbD9sRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADEC02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753615357.26048.12287940494106398297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7296104d23a33fd826938119b2ee778155e352ad36593472291a9051763001df
Date: Wed, 22 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737536153
