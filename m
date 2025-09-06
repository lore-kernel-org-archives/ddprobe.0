Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238D429ACD1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757195396; cv=none; b=dpR3qPhxY/Uthb5FswAUUOIflhWNseQXlU1FX12JUQoRT4yJq1JWDWJCrm1TJIEr1UqJfQSjpTPdGFgdcHxvMSa8+sM6TUHaS4Ad2vtdM9n9vC6/LzqEopiI49A6IOZbWMwi4FRkbPu3nwFwLvwnToDyTsw7KShbiFCU/Ty6orw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757195396; c=relaxed/simple;
	bh=ANjd8vl5ZvcKwXpyWeKXXgOxUSKKwGUTcY2nFWbHbXY=;
	h=To:Subject:From:Message-Id:Date; b=EEuysrbjQskyowtdePn/mKZVkX2Rv6Ia7rjGshgM8dBKHjvbLHHSYSdIymmNpfQQ21k9gNtK0NPFatp8oi3OcCtK5ODCYL1/7UyiV4F64VkREBN4fvQVs97FtPaESlC4azEiVWH0oAppS8qc5wQw2sRgpYR8rFrn7Fzo5+gDyhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fD4vyX6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fD4vyX6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5D2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757195393;
	bh=ANjd8vl5ZvcKwXpyWeKXXgOxUSKKwGUTcY2nFWbHbXY=;
	h=To:Subject:From:Date:From;
	b=fD4vyX6D660rDdEKsgaE6SL8y89qS3AI/k8xr80Keha72joIkjjBCSHn4zEX2zTWO
	 pAOBwJxfR+8leAW0Sfv0W/Q6FkjT1WtIa1h2qy/GW+DpzwwEZQAUnlt4MBXUJkcAyy
	 QnLEtjrQ3fsDldPyazjLEvaW0hXHXrgklYiXez4cSDNakqahBbwTVwHoL8QckkgLum
	 NIZ/kvX8g/lpmQJQbvilaxVYX6E975NPxRsqg1jJR7EPWwskPDh0DCIG9Fa1hrnwgR
	 wrPSdVNctdd19dVdz24ShrO5pqgUfj89vftydxTlhmSuRnA5gTvuJwmD7Q7mCIomIJ
	 kz7Femriv9wfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDFCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719539357.8682.10191363380141299868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a90abb1b88c8238ee4d135aba78dcd0b5bf3f24e1ee70283a974d90b4943c5
Date: Sat, 06 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757195393
