Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0BC19006B
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760783994; cv=none; b=gLImHtJnJnQk8TgXFFSbjZiIpKZxFAcF7tG+MmJ4mpEnr+IhDvURLZbvnCQwcgQ1A6uzhutbUxTUIhJ0JS95W0r7NQPQBVNIm6vXMjd4aoFNvZh7hLnVlQ9Fl9KJjnJIizct5S/q0duBZiMXUwXpUkN/lX105IgpowXsZx3/bvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760783994; c=relaxed/simple;
	bh=tUCucQTrWQ2Qnvw2Uhhu3spM0xGrPY7t6OqbGVzMUCo=;
	h=To:Subject:From:Message-Id:Date; b=pZq63zdDa5D9bv8rV5H6QmkHkpuv/4ChO4w024W6Zm/NpOXGPGIQQD//o63TERTt0VkX7J8HiI20ZZ2lj5aYaPwsKOiVzjlIOtqG2Jm1ghjb9MPfh0I2QHKPH7Ey5Wt2Aum/lerYIM3vAvXz+V5fBApEPhsgGca2tFIh21zUOCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ll8CnFBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ll8CnFBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6DAC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760783993;
	bh=tUCucQTrWQ2Qnvw2Uhhu3spM0xGrPY7t6OqbGVzMUCo=;
	h=To:Subject:From:Date:From;
	b=Ll8CnFBTyjUUkPGiM8P9rZozuRMBu0hovvBQt4ZSmAyfRwG7pSTziubrV4y+Sm9B+
	 Fcuop4K0NzQNzXnty6XHIRbyRNQlQSYP8HO9XlICnPGWdjKWHHhFs/FWkQtvUyK7/J
	 Tn4Vahr2wgHevYqbfSVSwLeCe71G+BIzOYRDwvpg6FuRONnW0ndOkjppW2LL+VLydE
	 ZiU1j7Q9Apzvy/vG0NyKeYTpidY7CfcPp6sfbcM+2tdkA2rSkub0SK48S5e3m/xHAd
	 1FQRKsjM8X181dwdf6v8NzgsHqMvnTfoSrEhN7i/bHUwPyxad5PYYrH8Yy7pbIHhYy
	 vA4Qqw2ziwvVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E99CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078399358.16951.8078101481239351165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307b196256e9edc0cc59ff8b24a71d4d70d116121d6f2aaf01c6a2b0a298b199
Date: Sat, 18 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760783993
