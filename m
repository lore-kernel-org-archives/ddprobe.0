Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4322A390CA0
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772483694; cv=none; b=sUR2n4DtXTdpoyUrc9MNB+WqXuFltvwm6dozWKnNeG2BGyAnNDNSO2qEfIy36gJDcwP2dF04oA9Ar1YcEWDrYX6TAeFMfpjspaHeDA2QfbN4v0vxtyarDZBllgRwtvzcyRj7DLlZ73av7pbbQ77IRZAeqwhnAzaIk9CAKazhCYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772483694; c=relaxed/simple;
	bh=J9s5+kZbiegWX0CSJGD22vSUovCa51hFfCMVWpS/cEA=;
	h=To:Subject:From:Message-Id:Date; b=gZJjmLjNpiOCQmkvV9tehGiGzZa3sIwGpl+AUz0E3MBpc6DILw+cy+qo+IXjRvQzthPSvzGb4Ji+ky7nH7KWCTTigSLpuevY5feKzbfcnw7j8irHdiEvCIPF59eble9p593NapGHbTHowQfwkuwfVigmEjRm51PH6eNHw9T6Cgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fjl2ezYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fjl2ezYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5889C19425
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772483693;
	bh=J9s5+kZbiegWX0CSJGD22vSUovCa51hFfCMVWpS/cEA=;
	h=To:Subject:From:Date:From;
	b=Fjl2ezYUVQxDxCd3jJRrJZ5EFojJB5cGSbIozd7QBI3ESGnTpXZ78tWrE2e626KfR
	 YbdTKv8M86bG8IFI0mk31UVPF+CruM2DTjP+Su2ToTKlZOtGxh/aBNUpDeBDvl/HLO
	 US5KWxghGVfV+IrT1FYlcZEXRCvIbfnk/QJMchojN0gdSF8eDtf1fBGLoR0ktD5Qz1
	 kdVPeVbncxqLmcurFGKDpZ55l5AOcixrzvBqTLQoYDanU46p72H4UPmz7rSdJCB+HP
	 qAeNypIjTN1pNKGRS2sljEemp/NOHgawmb064KPkH6NLZFAcrrmyV//1Sl+H0y4dk3
	 i6UycoQ5wVUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CFFEB3632
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248369369.20937.11070121811580483680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68c109bd9cc4a8a0abd2ae9e87269cebc9c2c9899c3290f2a4915a399c62707
Date: Mon, 02 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772483693
