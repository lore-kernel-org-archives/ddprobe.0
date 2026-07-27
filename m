Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FC21F1513
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785151834; cv=none; b=kvshlatyR08tWRo+bW5Epp2ImMWAjrdbFRLoZvwbyAkstegX3hwYqkW5gAPWRw12L+ZgN1rKYrOHDrtjbn9CZcfMcgVM9y+VS3OhYybcZiM0y4YgFtTZ1lPn9hQ+u2B1OHcoSjOhNnofNVGfn4nlHQXJJJMPXnfZsx3f6j0vCIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785151834; c=relaxed/simple;
	bh=q7BlDdQHils8/6Tuwd0vZEMBe8lu00aImIif+8CiXgA=;
	h=To:Subject:From:Message-Id:Date; b=YmOk+mYUAimefgxUnPDqqpcb+aWEZ/dmt1w0QEs9skVPQ0W1BBb06e82ABlLjiNNpWvgSoJVoCivnspmbpRpIgkR0kK5dsZeOe2ffjHNjzZtxbsgOH3VWsGC+iDEZMcWDeeQHKyLYbmfTsPcRYrSFXtApwnUb4AXOrq/CbwsNBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCv8Zrn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCv8Zrn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD79C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785151833;
	bh=q7BlDdQHils8/6Tuwd0vZEMBe8lu00aImIif+8CiXgA=;
	h=To:Subject:From:Date:From;
	b=ZCv8Zrn4W/FeU8xKIt/1p+hEn9UJC8U/AQ1FpBU8XbDQvz+xX9AQNHAxg+GVrVKE+
	 g1tnzV3sXoqgG9gPbAtNjnqYKUaaSSVRJU0Mr82eSaWqxSQ/1fG7XIXlBk1TXAq02I
	 34MMRNnsdIvOuhT/AF256e/0fO2UHQ5iaJu3LI/OaCHXlbw3axeWk7eyWEA77dibl4
	 URGlrmRV1UIC6OdOtORnYFtId6LrlVhsMZ0g6R19VjkD4GcbCLd4YVk7SMZtITGJDN
	 U0w2A45jSzF9T0YKHF1VL0AcvN/cm/pBgrowqX7qZvSJkiNTH2E+MvT7tgzityZSWI
	 Yf9KbD8F6LPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA567C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515183368.9233.16017474234846516992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fca25e6d20a3516a4fa9fa5a3e0b566d56701dbe5147266a75e2860fdf4473
Date: Mon, 27 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785151833
