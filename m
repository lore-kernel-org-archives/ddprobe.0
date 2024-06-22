Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A94482492
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719063743; cv=none; b=rnEWEMu8HVN7YPagBDDbCO19Mk69ExXcHMZubb+Y1yDo0q/qZDazxWoxQBrfksLSV4Tm9lOcMMHsb+SZp4MJHnKOL9l0tAYgcx1ftu9jzP7AgSO/wXiuTZINUZjTPebjvzenAvDs9ZuipsHkEkpaq+nvkXrKHcBwOSIANxEFw9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719063743; c=relaxed/simple;
	bh=I1ovz3JQgOcl7FIk/Q80r7xTbDd4GJg8Th46x57iURU=;
	h=To:Subject:From:Message-Id:Date; b=Iax1t8geicFqL39Ljxct62QuPWp0Yz7QlLdc0ZqwA0tf+bKrsnNDyb1ZRxKN27EuFmi8W/leSHhtCfQHNg3cTA7sJ8fFW1CZFlacKxKbteWdDFOrnBhqGQWIELzy9GLclL0MnA7FTrTzSHsiWV1uZ4612qKfZWx0Uj2lxRAbIjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPQWtZ/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPQWtZ/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A12C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719063742;
	bh=I1ovz3JQgOcl7FIk/Q80r7xTbDd4GJg8Th46x57iURU=;
	h=To:Subject:From:Date:From;
	b=sPQWtZ/d6xzqFqAUvO+rjCIpzfES7S3HyLzd7vW3qvioPSbfB+1q4RkHQuatrg1Qi
	 g65ThrRTeFXyea2+gJsjkoWzjGnzyE1uxhXqaeLxTkq9WdqfwAvDqvQx0YhVB57HzA
	 HrV9XfuESPH4kj2YV7z74UuKDvVDjJpFJZcNSxcLqIUvCUE92L0W6zUIZrRQ4+Kx5Y
	 GkyRSQ/NLuDmfGXrxSJKEJnvn9DOSc2xOJ5TDtaxD3agHfVioEKYT0Sl+WivRrsbIf
	 LxqTPeUm2iTdbLu6g5ZTepqig42f0PCOxRP/QIF06O7s3lPiz5wVaeIiTMrag2zNbg
	 m4SM5yTftRtJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C99AEC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906374280.8543.6193535566921216992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a470c13e0c8581e4b709bc32a27bc5639deafd33ba5e79343cad9e938627b0
Date: Sat, 22 Jun 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719063742
