Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380BC1F2C38
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734785754; cv=none; b=aqwgACAqgj+hFJDub5h/p2OTn7/Gjn6NnE/wHqgNabvF0m/IxDaHhWfSgeQINp1OZhuDotV9mCFYX44WqNv/3t3XiHA61K+2zGiuKDbSXc9ecsC8avPr9X9kUxkr15N5m26h6LtDEx9E4++OKnbn94fEhZC/Rv7b9nFUltlO15k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734785754; c=relaxed/simple;
	bh=ouuMVvhynbpBwafk3AUCoA7JNMVu2XGo3BWq1jUe8h8=;
	h=To:Subject:From:Message-Id:Date; b=qnuUOPT8Yqz/YLwocwv3Bzift0e4+aEZ3U7DMXhMJS2MqwVZY4LVuR6vtUTZeuyGwm29rFcvlAPotYq4LBXymo/RypNZmGyKoKjmupVRS2MulnW05UqIq4mBEY+VSXFScnZ5p5qrnqINrMyXmfaFMBeZVUt2TJEgp91L+HEDaGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmIOD5Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmIOD5Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9DAC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734785753;
	bh=ouuMVvhynbpBwafk3AUCoA7JNMVu2XGo3BWq1jUe8h8=;
	h=To:Subject:From:Date:From;
	b=CmIOD5KajpLDqKyuPoGjomNBjTdg7KxICMWRZpCSsDoOX8Sawor7fl6uvJeZLEIU/
	 kiNIEUnanLD7rWAd6H6cB22j2ZeZkx6ZFgdmTLv2T2xAgK+3UerHA9a8MXYCMvt+MA
	 1rbBQaohe8ZtUQTfyxjvQIOqGIOGSy9/E/KnC50ZxHc7NSt5ASwEAVXuBr8ixPQGb0
	 XuO/TjKFjETBzfqam0Q1NKetS7ejEVKCWTdgQkgVBTwdhD8LKU2qBBkvI8bvgHfV0b
	 atrd4McvERN4edh6QY1sQ/SNYAvSfaSGbqppKKDk6n0rRhMXmDcHg0VrHYXzVYo3wn
	 hLsWlEcPg1G1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95733E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478575360.15478.13581990088445442289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13277acb67799030e264bac294b0b5c7008e34ade85ae32d5f04fd4b990af43
Date: Sat, 21 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734785753
