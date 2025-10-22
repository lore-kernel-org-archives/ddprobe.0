Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C72277C9A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761167994; cv=none; b=aJyohHRAB16Zaz2t3hYifAETMNd6nuremg4LsjFpSoGmq4ANMqOXVVhfRImQjJ46d3S9t5P1QB9J5YLm6E1nCx8sl8Da662TKlqLkLxkhUzaxSBnyArJSuqr5nOOQHWrVwS2bUeNYijZDBd83VaZmENf3Ls4GjnyHCbWZxO2hxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761167994; c=relaxed/simple;
	bh=eEYIraO7xEY8iM7JcSeFhfbGwvMi1mC0pXIcw+Xv5lg=;
	h=To:Subject:From:Message-Id:Date; b=mKHcyxXTKuqw8DuAzuzsvcYqA/D1I2P1psovojdTW8wIQTc2ZVfmnUH4qiU5Eqg1SBuTUlBkWTK5hqulNO/f5qUt/s7rI2iS6w3iMmSHQgzsXL43J43dudN4OJqNtagyX8r7Xb/xttLpWFtCcjODKwvtJnRGttbJfRDxHk4vDoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkHC8n6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkHC8n6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BDBC4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761167993;
	bh=eEYIraO7xEY8iM7JcSeFhfbGwvMi1mC0pXIcw+Xv5lg=;
	h=To:Subject:From:Date:From;
	b=ZkHC8n6Tdnzt3+07NH1a5v/roxhtV8fjavTeaC5FARMekmrkL6AOqAIi6+SR9a6ln
	 um6AGRYzjBFC1mhnc15RFL/SbfatGswcaP7BDG9jta28JelEwTSiiAei2krsmEwwGJ
	 vMpf62KUkmn3AUYqB/QAyeNwriBrRMfQN/snr/8X/lLQwAmDP4hR+dftEKLbU4yjU/
	 NVSokSgrnp2GxtRzhqjkqAaUZNDa/wniwLXnjHHJQr6RoV7RBpStaVHMzXd/qwnHCl
	 fgPJfMLZWOH8F4174DSOEE3xebB7cjx3kzOjTJR1PP2WbIQuawCZe0dgXyoOcW55Kq
	 D9d3DwEYK2WBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A69CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116799359.32679.1542219830348668487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c5137d55771fb3e2afa0c0b100d9879e5dd788a1536e06095644d37e0f7247d
Date: Wed, 22 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761167993
