Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302411D63EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759771194; cv=none; b=B9Y1b8FhgQtEZz+2BRcCjdZoUqqwB0eq76ZCuma93Irj14X8Lo6fzmh0srzSdcYBQF1org9Lx4Y9Kif8OX7WGHgM4Od3Onc2JyMeQaIspsGlwubQXbp2AO6wkFTrDSl4vsBs6IcQ4gGQKc4dUHrYNSexLpJxkmWSM45J4e/ED3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759771194; c=relaxed/simple;
	bh=RNleNoPuRTHE0v4iOpBkVNmVNJW/P7TyrJROtHZTKRI=;
	h=To:Subject:From:Message-Id:Date; b=hyA0Adx/ZAjtI12T67RLwsmeyY8BdkxqJTS/q2WY3R0V2V07+eThd9RFRebl73xnpDuK/Ovj6tz72lJGcFoYKAKgbcr1mG7RiXyEK/DXD8oVEhuCEu9TD1YeJCZkiTyfFZw8VBuAbRX3H9vAMjep24sB49a2kpoWpDY5FMX/Adg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1YClMCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1YClMCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC7DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759771193;
	bh=RNleNoPuRTHE0v4iOpBkVNmVNJW/P7TyrJROtHZTKRI=;
	h=To:Subject:From:Date:From;
	b=Y1YClMCOI3GNmD8l4r2NkWV+w7ZwLanwKyGIr9hoj1r+H6zS30sRgWi1hMeEuztIP
	 HuM9rDXtGoGTSpNZtD5bVeALKk0UOk0GWWg5P1NeyuoD5o5JObncuOHto6JsStPRYh
	 zfqoPKPSPRP9PX/0xPw9I2miDOqouLmyeRQK5R6Xo32C1WMKTIbNmlsXee0slWBdF1
	 NuvBH/lEQZICvX75ZKD1E1ddfdHVugYJ+EL4u30UjLThXhI8zWsq6XPUiSlLNgnS6f
	 C592M4hfS5VNRyZHsbPY3dSO65IDv4R7IOweLaPztOa0EuxX7m57zhoFvcici2v5UN
	 mNjD7thxqg/+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F085CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977119357.22105.2747435623859777338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011dd2af78f0c55d9ae7cbc779c2b87fc0892c5f50f66db4a0f88db3c3978008
Date: Mon, 06 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759771193
