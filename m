Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1C2C3A425C
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778594434; cv=none; b=hfbaAG5ceUoAVPClFCm9ogfPB/WgynoGsIMJ+jTGeBQiTNT14RoVdJZnNIjEJM53rvu6p2/TN7q9kkmCskMlAZJmj586Wbx3712QZ6P2okESt+ZQYIK55xqZL0rC2KelGjtKBY4nxAPw3dUbyNRoKxQooEAvRFYqy4u0hvSjukQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778594434; c=relaxed/simple;
	bh=gYWxqyRN2lSVkt5Qy0DYETJ/X3vf8rgbdcrhIc3+RbQ=;
	h=To:Subject:From:Message-Id:Date; b=i0VzP1++Rc6zL4iwwSppG+MwqQDu+7wsv7VeznozCgOOWM4BBGxBrMBiJHpJ75D+o5h4qYI9u5XAlIJsyih82189OPKrhAhIeNmGDMmxOUkgYJmvrq85b4estlb9bwXsdSZ2wTJ5gu6KoHPqfXky4azd/tQVqD+b6lE5R4uqRt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeM0iyuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeM0iyuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89C9C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778594433;
	bh=gYWxqyRN2lSVkt5Qy0DYETJ/X3vf8rgbdcrhIc3+RbQ=;
	h=To:Subject:From:Date:From;
	b=AeM0iyuwl1DlPmShaWcjRj0UV1QoHCqKv5ttThikHcqJIIQCAGOjF302ixhNo0Vyx
	 tsBDmSsbnXY0KoDlpmCNjt/5ZSsq7vFPiWgGKUlqI4f0Ntbkt7apWYbgdCoMK8qMcw
	 8q3T/EQuTiJW67MskjpFIg1hMIrzKawd6Pb9XLISA4OZk+ColMxb2JVU4LrCd1W684
	 KmsRwlINRV6ae5f2jFxm96CJgfM0xBA1O4J+iKwEc2vAsxlpF0An2STYTEPzsQ38if
	 TG5x02r7mUFvQHHxAIk0JLwb3TxV+2oUfa8MWv2VqJ/mfI6/UHXO1v6mHfMdEP1Hv4
	 BZsCGI2wApA9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA691CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859443368.31027.13044420063359948389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a719a96ccd07332eb3107e4a609a0a43eb627ccdf11e0862f9694687b796e45d
Date: Tue, 12 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778594433
