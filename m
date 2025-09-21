Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D3B12E1E9
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758428994; cv=none; b=Jokf+BHx5rE2EifF510GMPcO0/jjQggltCtdOQDALZCwZv1hSU5S4MQ9OrhQ1Wnk47DYunVbezdEJby9cXE2oEVsQfOasZn3b1QD84FU40/118jkd2PtdERWLb43GIngDelpY/kmgFh/O1gL4oHEIR1+m5mjPUmA7ASOlZmdN9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758428994; c=relaxed/simple;
	bh=wSA5Itx9oRhzvlMhq7ASBOcIQ3Mx//N8ZO38nnnbh0A=;
	h=To:Subject:From:Message-Id:Date; b=Ehol26tCOcboRZ+FZHd3EdbncsoBu839bsWg3sFgclrUxxSvWwixoELDzafTOvC5n4SMmpsXJ68mLIoazo0cDX2zurMW8zvbSJLEEKydJ562Gpw7FeRK0W7l90XJJBMSQSdkjMQ8nOStJK/iPZxwzMBtSBabcKAJYpK4oEL/O3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/BtWYlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/BtWYlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A772DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758428993;
	bh=wSA5Itx9oRhzvlMhq7ASBOcIQ3Mx//N8ZO38nnnbh0A=;
	h=To:Subject:From:Date:From;
	b=J/BtWYltim53478zN7QzQkuzDrRjnetU0qit8LxIOGNZbMU2W5opAD3YqSnGa2/kN
	 YuoD3HqfNdwAv1z5ec4gUtUHte/CL1QWu8b3U5YlUJsBvT32II4Vn+Y6mQpkGtGMpZ
	 PLvCn90lg11W5SNosaF46BqwARzS0NyGwNwTFYOc9yvGhVSbZGn23FJvD2PDfGw+t+
	 mzNjdEptzw44w3LgSDXec9goFF+GSxjdntUGCWm/AvSwsmL5q/+T2Fj90XNyGs8SE/
	 HsfuLoZ3TxsCG/KtgHGhlHDeSL9YurMp6XbZylCXFguyTNAanJktpp0GRqz95qz54l
	 FflNytFtKrJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91696CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842899357.29642.12966497447399521216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72a8c5945a1781d229310772b4a906f318ad9862fe282421d66e1720a515613
Date: Sun, 21 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758428993
