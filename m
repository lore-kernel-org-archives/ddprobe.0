Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2988344E042
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779902554; cv=none; b=QJr5EikGPr+dIgYU+PxOG0E8avPQvxhHzNyvpztJM7zIf3stMLclOEevtt3hiIvMvQLgAkfvq46HXa1WC3wJL/bMPvF5Pl2cTz4w9cJ3su/pnXc1PVEobQJgKPYI5SrX8+CxluZ3UWWT7JhTB0U1xx5eiUyh7LBtwDL/gbQr794=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779902554; c=relaxed/simple;
	bh=dtRAkrflx/r6tPh0e+3KmKNJl45JKWfuqkb9tndR3rk=;
	h=To:Subject:From:Message-Id:Date; b=PVHCadlQeTnsJcWPm6fBIEjZo1DuGpPDvm4g+bGpB1BZJroKq+5SCVcg3B5HW//ufnuhFEw3f8TnC4QtJnvpyYILq3jKf1dm7gECMvqGDMSsbqJRf/6eTaFaJdf3xUZiSSlCJFiN4u3/oFcYnGvgZMyeXWif6nRRrJsogZjguM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hT9mXRkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hT9mXRkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41AAC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779902553;
	bh=dtRAkrflx/r6tPh0e+3KmKNJl45JKWfuqkb9tndR3rk=;
	h=To:Subject:From:Date:From;
	b=hT9mXRkgKV2DcmUeBnExFxon/by2cs8GG+L1m26J1cYplwibCobCcE7kBHrHD3BGJ
	 lP8oYnuDBJpOmEPNHOVRiQnlPfnMuc4AIvW/qyaaWJLUb+beLK6yJkR4qWemW4OhtZ
	 MfebNerHuV21/N+7kAImtkvXEPFcmcSkauOdfvsHbdcSX16iKlpIY2OIWVVs57LVBN
	 f795Eug/DdKvO2aIdJBp7lnx45SlbSEq+Olfp/zLk4OYGPla+zXAszZJA7H8gxgTZR
	 fCaS1KA29v75Z2XCOBt9VgUDt+B+UO9CB2jZkvTGJQBh6tRyeuhIhE5Sq4JKLPd4Bj
	 CpzVc9aO3+yJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA529CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990255368.8272.12661583498239586826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e42be4511d07cb5d44ace9827482af855193d68ce4e86a0e1b9d0d3149dec2b
Date: Wed, 27 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779902553
