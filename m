Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCD9285CA4
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751287193; cv=none; b=k9KacBZNTro42omwARSee+IkWbynIHx8J5AgvAuoxo8cxFEzm7iWYcEX3680zbung3M90/kGnJbxL9qlb5EEU1EHRLQrStbB5OgJfwB9fhSTWGzBHgb9u8K9qE1OIu0EivHw1wgrj6L2GpN9G0otD5RU1Ft5mxvEAo1+eVO+oqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751287193; c=relaxed/simple;
	bh=5LMXXW3b1FQZmj1YaysI13DokpAB9AaAFb+TWVMOsdM=;
	h=To:Subject:From:Message-Id:Date; b=CkX49FSW6EzlKqm0fJUoGqbiK4t6kGx48X36koxY/azFDDDgFc/JRIKnwQUBU6MZx9N/D4eaW1lP/jkJS+jJbJm3APS6XOr37HW3Xdi/x9pcpdQ/wLYSELCmG96rOfKBcdiDoyqsAELI9S2W9Y5+bPo9Ap8deqGsTUGRy3pMTAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mkoo+dBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mkoo+dBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E299C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751287193;
	bh=5LMXXW3b1FQZmj1YaysI13DokpAB9AaAFb+TWVMOsdM=;
	h=To:Subject:From:Date:From;
	b=Mkoo+dBXfHtsDB9gaB8brOWrOAUR8Hn+Qx64Pm2v3bUxNfUi2mfzveD4503QtPda1
	 e7GWN8EOL3OndunSqxUrIrh85Ct4Bj5tywkfNVDDpLQl6hKocS3DQvk3W9Fy5hQBmJ
	 uEUXCaFzuBKP7kRrv9+wvb4tzsE69i/Mn5Vwbw1rAav/MKecVpCCwlZg/mMKnEHy9Q
	 WE/MxSi5NdgpGGJu2Tq/5Tivg68HajKJU0FcKdQ7Fh1JiNUiwRTXfyCO2F0xK4g+te
	 iny5UaUtLF9eKUPMR4YINCf8OzjLWoDZ8TvdkMwtWnIcHGvA8oipai8rFB5a+rU+wa
	 Zg6VXt6kOrX1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F0C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128719357.15993.8796456701755430477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa1abe4669476cbf6cd4a75be3efce76a75871a5656c490f7d24a577bd348a4
Date: Mon, 30 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751287193
