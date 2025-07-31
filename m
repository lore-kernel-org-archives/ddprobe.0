Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3596222D9E7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753962594; cv=none; b=NlHWr4rpJ0W9yjMEbBLjOIHy9S4zrw7QqyMPmQ0EgxM22Ucx+YU1w5ef9x00WSw3BQTtBksVIeJfloZXYk0XppAkrHWYy4cRLZa9JUv0yXvTTs54+hsUTmvY0ymK3LvHX+5V2L1NYY8U1RqAdiftJIB2vv3053hxXqMxGH1MQ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753962594; c=relaxed/simple;
	bh=Y/yz/W/FsDpU6UbLX0hy2Q6KwoAOzdbV9GtdMHvLlxM=;
	h=To:Subject:From:Message-Id:Date; b=ECHQoJRz0yl9t1CkSbGIeNRzFu4ICNZSzAhgiBu2V7eDTiJ8N0y/JPBsJtr3Xg1eFA60JGbp2B1tCykYj6EfIH6m/3TTmURl+qqOjFjh8j6OXwddfuWssaL+griTY9nsrUPmsYIpbY4FZjf1JoebEUzCvEuq9ecjs3qYrerDHcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMLyYIQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMLyYIQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1EC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753962593;
	bh=Y/yz/W/FsDpU6UbLX0hy2Q6KwoAOzdbV9GtdMHvLlxM=;
	h=To:Subject:From:Date:From;
	b=HMLyYIQjn3U/FhZuWbIoAQ3qpriAUkisDfUkeG8GeBIW6dJyOoFpWNWKTJ5hMak8G
	 QreCTk9Gyc9q/TazKeJbF+w4JZNBOahbcI9EtgMRety2sSXJ9lLnM/QYnvFHZPqZkp
	 ZaX8UvdFORRX9Skr0Wg8YExTqHOQEAcQbtb3Yzg59AYCBvexVyOzy6Xvl80AKGBFmz
	 8PMqVQWTmXFPeuddMORt9VfT/D44cUW6lwCz+smkiGbKdcSL9Zsrn5y7LNSuuMSFBA
	 lUgmu13aZjcLec8t7c2/U8mNx+N4YYBTLcyDSn7iolQ/ChrMpn9CoTznwpx8tpa3Op
	 a6MoS4C06fMxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC2C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396259359.24566.17726333623636856045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56894a0b29509ac59a2e55d3b90ca110f68193cdc51eba2b88ecf79b6494f36
Date: Thu, 31 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753962593
