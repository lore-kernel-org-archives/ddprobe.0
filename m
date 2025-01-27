Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4079B18A6C5
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738002955; cv=none; b=EtqXrlYtfzolRHrvEwnWbvgO2MB7ndkv2o++mAu5xEK4uQ1ySIDxbm9yTlo7NSV14rjv/AwY5BPAYWxFpOiJH4ba+8ocNLLwjaFXZHMiRM2rDSGTTFPVe84WswjLpwTU8gMh2ykE9YdDPSIK45UejByd0KZwsxtzjy//JNk8z64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738002955; c=relaxed/simple;
	bh=/2TEqfkRpLPvhDW9HBTC00OYSEoQjbkBDd2/9hXAqMk=;
	h=To:Subject:From:Message-Id:Date; b=EUI9huR9UHzI0APyw1Xfw9WHdzZS4yZ7MtMc9iEkrrz92uPPvge9zrJfOFc0M7EoCsX7GabE8Chg4wQGHAzHap9xsuSfb0+ba20qI1gAu7o7Djt60WVHvCdG9MA9xr/MhlajUACt4w/TzqUznYoKT+mGqjH0ZzyEXaX2fIvqvk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkKvAxFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkKvAxFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97EBC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738002953;
	bh=/2TEqfkRpLPvhDW9HBTC00OYSEoQjbkBDd2/9hXAqMk=;
	h=To:Subject:From:Date:From;
	b=gkKvAxFAqawWP1tPhKlwH6R3NKoi+nhIm6YJnH4N5kWdMLWDFDuNKbMwey5epO+do
	 NUhVemXKQrhegm7bOwsDV0fGuAtOaraGUfAqUUar1J7l79GA7EUPWyWwGLP8m/b3DE
	 DJZLHsxDp5F/FpL0gGZ4jZvQ37GTMrL/zWDlZoW8cdXi3boyxYiEXTSzDCzJPYv8JP
	 RaeLMpAZqHkTKG5xTEX1xwqjlzPBAbH/5/mNVSnaaEX/iXiWaUCGg0axeya1qHz0EZ
	 egWy41yvFl/m5HyCWAkabS/lbC+Lnu12GNIPoxUL8kqtBJetCBBlQop9Tf/Cfsiq4u
	 C7RHbXCdwPDBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C1BC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800295366.28192.2489181909721612601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8c76f94c829a6733c01ddd50a9087ae55231ab2e0a9379acbaf0cec0db95a9
Date: Mon, 27 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738002953
