Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3314696
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719039143; cv=none; b=ZAhMp92o5rQzMeGThIgw5EA7RcWbb+O3U3/TPpGD24B/0YS2JGULmvgIwvyRHPYjcF2rpDNZuo8PPUbQdnwI99rRoJy+uPZ29+/daFdB7R4z3YbAABLIf3QB2AZMiG5Mj0fN8L9kcJbM/zKF3oJ2W3LC7N1I7O9cv7zvc+Wj85o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719039143; c=relaxed/simple;
	bh=jemGhIdTXlcnb1t7W/ztcWUKA0ksi6y1YIrTX68DfPI=;
	h=To:Subject:From:Message-Id:Date; b=uFvd/pIvHqrcOC5zl7/5CntScEoa2vvA/HvRN1CJLyPCHx+3GaMVQXvwZ02dXZS/gvlYNqHY4C01lcjRQy5H60OGk5E5dH4Qa0FE0Kip3DONaFijlQq3SKypVLrAaaT6+jYFIMOzKOueFiT8cJS9Hatn0hSstdwlCpLsEd4UAPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulTCyh03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulTCyh03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA74C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719039143;
	bh=jemGhIdTXlcnb1t7W/ztcWUKA0ksi6y1YIrTX68DfPI=;
	h=To:Subject:From:Date:From;
	b=ulTCyh032wYu/17/5jNkiP0tg0XXvZBZ//F1Dk5Znm29EAqthB6dd3Qazg6QMn9YN
	 Ik/RlM7SOEyDlSitqNOQH0gVM5Ii02YdxFNO9oODEuOMLalyU3+DSEezA0Mxh7XG7x
	 f/gX5yZ5VI2nzg4l6WeIXXoqHDwSdCbfKg165kejo4yRvf3q7Np0Zsam1B9ETB5Bja
	 hcq50x6XrPsN2uBnr8u/g0ZemKTk5aNf/k9Zu2dHW+UxLGzBDw5O/BMfetA4qtjcbB
	 THTrS8X8obhvNIEXuvU7FORUnJnUMKbwY1z54HjWNmkVGgbRqnxkpKnk40Gfdq0dX5
	 PoY3ula1Xlb1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3617C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903914278.6924.4121585378215281240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e93e0b2622adc0a1a158853baf557e4993862e2c1e402b9e2717b1e300fbc86
Date: Sat, 22 Jun 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719039142
