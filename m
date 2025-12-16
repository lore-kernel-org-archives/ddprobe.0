Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABEC2C3757
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765861974; cv=none; b=p46KPt9/4qBsr8Yun0bi6WNNyVtn3pN0C+a+b9wv4vjQemmv/3xln3gVzfTw58I6zsAK+C0CBBM7bt64ajsSbsBJGJ5bLwJeByn6mj5jm9w2NZhnS/aosJyg1Z74xYYCKnGxsP95lSgVZnFTstfDXOygIRJIK0BuwyLuOl3fcTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765861974; c=relaxed/simple;
	bh=xk7jLal6ziGy29m3AvHYbwhLbtLfY2PAt867nBHi/Q8=;
	h=To:Subject:From:Message-Id:Date; b=sgbrlT7MVQPhR8ym7F4jCdZUCReq28m3WFIY86/a14BJZUBC4ugtbc/Ikw5ngY/+Osvia/oBbEBip+anKGcpcBbsyxj9OsJZS/aNdugP1Vo5o/mz0A17aVv2eSt5m/qIDInNVfpjcnEROpwjphhAT4y1qCzIIjs3BrrRRLR9dzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpzeFDQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpzeFDQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EE5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765861973;
	bh=xk7jLal6ziGy29m3AvHYbwhLbtLfY2PAt867nBHi/Q8=;
	h=To:Subject:From:Date:From;
	b=BpzeFDQIJrjfTFh1Wqa4dYjyb75WeBSWsxhwohTBx4i8GBpwyresCZnQiJQQdcFGe
	 00nm6dacebrMC+k5DGKHSGTyoxt3AqP4TeRv5xr5OifYskOGaBLRdejapaHGthDp0l
	 jBHJWWqwX7SMnA7DJBPxHTVqXkoPt3YfTTRLwwWbSOlFjOsvUsCeOznHJd9h3Msd4l
	 TzpRnDaqhIDoVx1BHvkWzI06vhiIWlxZMIqfGBQkxREcKHEtizcyVm86nZm8A51Ir/
	 z4ZrCVFoovUwDNkvRoPZE8/w5BvFQj8rXvRv2OhfFdzUkaxkeeTSf1MCQuFGHKJOCB
	 mc2aNPZJ/679A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FAD5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586197358.30430.13523023962344146780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7facd5f4725b3db6168abdf87e20c3b2cdb4cfa849cd4bcb03d432e4d411d6f
Date: Tue, 16 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765861973
