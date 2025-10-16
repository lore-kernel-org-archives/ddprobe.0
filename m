Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2C8187346
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760587794; cv=none; b=eeGWH8pbqbmEwqlzeFzOh17oamA0NxEipXMxF9QZI6FXquwOcJPQohVAu5XLZR0v814wCtCEFa5s3/fQjjvo5Jgw45zw9zytEkpZIYYzsTk7nNp0mxfngx6HVZHPclc+9X9R0Zy9XNhUHVDSiBTxhC5NvFAL89XpdqrS1LufiFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760587794; c=relaxed/simple;
	bh=gpzPlqhU2DvYZPjsbxmlwA5MfVavlfSpbnn2KZ+0XuQ=;
	h=To:Subject:From:Message-Id:Date; b=CtXbd1ECOnE4NUiQUH3CYi5Y2Kh2XiGQUkPKB6clHjnwIjOlPjyZ+c9XBMMjetsmYqpOETVmxZMxMdBneBOar5FRwjvP6CCKyn4q630muMs96/ZOjZ7I0v6Oa2a8dd+CBjKLscf9+RqCydYdZ+fpWMTwcdUn9eU17Cd2vv9mfXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iONgVbwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iONgVbwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF964C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760587793;
	bh=gpzPlqhU2DvYZPjsbxmlwA5MfVavlfSpbnn2KZ+0XuQ=;
	h=To:Subject:From:Date:From;
	b=iONgVbwkB4vtY7axw7/c5JMkzJ+NdcHJaotd1F2aFlBSHlSd2QEN0xeziwjSA5hp6
	 qNEmgeQmZR5ffRAvTMHlfvGDsq3SHnX8ZAIGY4R7ftYD6W/fn0FVBNLGWNQhEL5N/u
	 e1LT9f94qKJ07NBJsaONRd6BILoBAfwL6EVm/CJwKftoBzRFXeH5qWouA4e0A7Z7gu
	 1ZZQY/MjKbqnkXzZmtb9C/16dI707TS8RTZ0glr/L7wy0ytZlhYU+RNgPHNCPYaDQn
	 d7uTTqeEfvb3jo4e89XoHzkivI28WGVB8KgqChF0BIWbSJucEEu1NPVH8qLxpO16e0
	 dKyuaSAZNATfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B639CCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176058779362.24584.11107216522202287710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132b74363a97db0009134c9ffb230fa4b638d0a90fe8cd63f737b059c9b93a50
Date: Thu, 16 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760587793
