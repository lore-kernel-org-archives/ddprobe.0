Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EAB2222BF
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766386434; cv=none; b=GIc3Cssn5w8j5zqDta5uDxcEys1xxolpt+XLyMr5jbi3hpzEK9norRaRnnqo0qGwQGYFr8e0l9ik6ECBZe739FqG1vtANORIVuMUxk5qAz0m811RCONV0lGtLDWs9pAxbgQZ3uanjYbXzMzZzZGGBB3X7hcn0kQDlDhJr3JdCXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766386434; c=relaxed/simple;
	bh=dK2RwFRcG0C4m+yBtYp5+y+387/rzq73WNPxI3TtjPw=;
	h=To:Subject:From:Message-Id:Date; b=G86FfGFuKE2Ke4vYmMfdji3G/tIfO1zp00LVmSixfhe+k5IjVYJgNoPnrpUr2f+bLahKU+Ku6tUBaI2T+iKsTrLAFu2JiTM8Fc/oibRogDwuDAun2dPCV4AKXRCThiNYwJobSpmY4gYRV/m+yGY5xQk+x7UWs1k3b1lpOsaDMxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0JFR0Pj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0JFR0Pj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C1C116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766386433;
	bh=dK2RwFRcG0C4m+yBtYp5+y+387/rzq73WNPxI3TtjPw=;
	h=To:Subject:From:Date:From;
	b=s0JFR0PjyEHTfHUxkIJlJadU5QwPoBLabI7iJS5Emm+wY+AAcOLIiu9/Qm9knLtW9
	 6nKw0dDUS0amAeLt8bM7sg8POcdflKp4DfFfAAAos8+yYxUrlo6iLjpTwefUFbT3f5
	 Nr8CgHln0KjuOkdSMkRrV93Fv7YCS9qfsHzhlKrYN5nRihcX3ciMf485tkmB87l2gL
	 GrAyIrs5hfnUSDAG2GDtdpK+1ygWpjkWAqspx4CeBiQGWf8QD9DkvozX35kEMHaH7s
	 p2F2IBgMi9IOAsM7AcYtzXdSa+IKKP7nUTYav4Q61VJs7SawbU+VJZMp1GNXohOBTA
	 g1ytuBVSgls/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4ED711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638643358.19608.2288408161693612875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eba6416ef68b8cbd7f8df453bc8444b10ee2139064f4782ee7270ad2c6232d8
Date: Mon, 22 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766386433
