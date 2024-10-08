Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8ED13AD37
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728366354; cv=none; b=r0jTM5uF2xo9km1IxFT5uQNmuaJriwNwZ32758/frwjyKo2Xx2iwn7w3RNSZ/UyNT8FBcxHqwWR/aVllsyf119UZVItClDU6GjHTbbiPxoedNRhtpfDfPIirrGy/JJDCOvmiNN3TuyG/4/L/NYtIQiAciqbrKPO5PFOBAjmYXhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728366354; c=relaxed/simple;
	bh=bPuZfUVWl//TwCV8+niszls3x4urkKWJXaGhu18sLg0=;
	h=To:Subject:From:Message-Id:Date; b=aJoneR9T8jwqWUuTWHbclwSBPyCykwdU5xU3PeGkatNV2ItTNElElQpQzN7XVk562sEhisf+NH6UAAfxs3xmvdohcT1txp5C4CtqGlxUdnSuYqg3/sv/+qum+MHemS5ol/OYC1Ueg/ki+iuIKdgBlILGXZo7xCoRwMokXCOhO5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg+G7JK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg+G7JK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77B4C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728366353;
	bh=bPuZfUVWl//TwCV8+niszls3x4urkKWJXaGhu18sLg0=;
	h=To:Subject:From:Date:From;
	b=Dg+G7JK5+LwDy2DkYoS3BuBQxZuc2rQvHHqofH4wCrSosJ1DW3lozWh/WhKFnk13+
	 4CvIhiHV+R98L65YAsb2yEtzugmbQ4Vrx1LeZacmLs6BWxcolO2hAu7gczeeaEsmjn
	 QtmFx1uUhbcbXrUwY91532iSYVjmfFWt4mHxYbHqXjdmUnCUG6EHMYqfJ4M87SVph/
	 kqRFI/r1UohOW1T0LesR1rfH4cjuIckwl3B1cDkKoFEFLJTqPvAyDGCd5hsYwnZjj8
	 vZL0lYAvXny5lJZD2qOdagrn4DzNkhRt8gH0ozECN+ZF7Fl+RRh/xFc7jH2BDP2cL1
	 ESe6muNWMpYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979CCCED26B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836635358.2236.5272374006725352073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17085bfc040ddcffa0d1ce8861ff08ba061fc32053d25000dea3dd855f738a1
Date: Tue, 08 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728366353
