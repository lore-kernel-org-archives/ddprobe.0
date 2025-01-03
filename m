Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFC91CB518
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735890354; cv=none; b=Sp07c/+FzRmQT7WqQXS/I+r1BP6DVZxpYgHT+bwb3xi8CUp++IHNHJLO8J65y+OOskjdDrDjfmVE3tYfDYJesImAJ8mXtPAQ1l7nehrAaF3mZtOm3bfYdA8GB6K8c3WcUZxh+tv826Me8DZA1iFKNEdxLx88eiUUhm2P8YqD1Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735890354; c=relaxed/simple;
	bh=+jn3dbupB58rrPKSPlmIH0MA98mnFX2x6OPzQNInYhc=;
	h=To:Subject:From:Message-Id:Date; b=rs/7nD/Vz8MH01+w/aWH8h/cHigldW4ZXPNeLvQ7n1ZvojTOvzJkMeidNy6D4VKeHWJxIJO3Z5YmMlgK15PLK7r9DEEIrtoCLdUHOJukzqeb+5LNobVBt/INP7VOPrQYF/V8uIhMnZRerwjDMoXFLGYgzEJ0ABGLmwO+LaiUkJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEuSSCwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEuSSCwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF3C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735890353;
	bh=+jn3dbupB58rrPKSPlmIH0MA98mnFX2x6OPzQNInYhc=;
	h=To:Subject:From:Date:From;
	b=GEuSSCwYNrnnxD1Fui2kPnP71DI1xKG74YKjaOuCsL7ypUCS2cnlFxB7WrRcbGlmO
	 4+zIci2RPH6Md0Cn8BKEBOT7tQ8/HjkUHnYmhvbTGWhh4SlWocu1T9HKuhOYD58dKG
	 YCI9IqzlmNwm6SBhdyi1MX16RsVIA048pahC4EOWVs67NDmiPUZ90NVGlIvwbYsGz3
	 EEiwBNtz0n39ZXtDsizdTgtUCLxOAvjJHv+h2sHry/7LwTsrSVjWJ72PlVVK6QQiIc
	 +9ui/sk0ra6Ssk0xu/J22DPRgGyYEOYUm9jf5ZU6NiyZhxXDZN4QH5XALiSyYH4xSF
	 XqjiocIouyNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E8E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173589035358.16276.15476495095299590898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d3b4c90fb2b1910ad892600d9ddd6228796e10cdf11451b1d8ba06b43ca40e
Date: Fri, 03 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735890353
