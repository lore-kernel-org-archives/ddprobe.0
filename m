Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C8C21A42D
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739795334; cv=none; b=cRhdbyETgdTCx19+7StMR3fHIamxb9vSSj4xi9NFMIQ171x0gRiLCQHHAm/RtZF+oVJfHyoRrzdQ7sE7CBwO4IvzPiO8kFjq0dPT9HWaldkw/jwwooL6/77GvbrfoLy1NBucgMTVe2dt7ImSAMcpq3OasssbyuS6GN3ZKA4PtXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739795334; c=relaxed/simple;
	bh=uuQ5NcAdgtMO586NMjgNkwIsRaWiST4i0g1dUlnXiE4=;
	h=To:Subject:From:Message-Id:Date; b=MVkwZBjk8EsNkUL7A9f7dXhcpOn7d3Mcq2qm6M2ZvIIN41u+g3u3Mn40mQ9vl5uy0HzqGquMeLGm/DoaE9UYgno8l9nhR4FnVq6M3opc/3WpIB/HX98f9KmcLCYuB0SZEDQLvXgjbo4yjpYp88PEt3sCZOfdXq3eM2APYZxMJX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxlm5Wx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxlm5Wx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98863C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739795333;
	bh=uuQ5NcAdgtMO586NMjgNkwIsRaWiST4i0g1dUlnXiE4=;
	h=To:Subject:From:Date:From;
	b=bxlm5Wx1iykg8G5VVRkECzeThS1wP2cl3gk1HMR0rdN5v2xopTvZAKeV3PjIVZFfI
	 +A2V2KYIPzQl45otXjPkED23xN0NOIHXC5dm67Z5hsCnQy+h6y4J0XEIPATQi7JUtX
	 o8WqbLM5gtAhr+ObH31t8l+GGGW6jpeZpRFhmDTtzLSBwb5eaI0EP0lJ6hAibYhm9z
	 fpF2kF12C74r5557ICL18JiJFEKnz48dryndckxZ7ZEdEWWgU+vF603khCpKq7ltHC
	 ZEMmtZhUXXuZj8rC+UaGju8Ssc27u/T2DBx/1PhviuhU97SFMjSIoil7yBkq0TpfT7
	 645GmWRN+KZGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97BC021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 12:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173979533357.20706.9933831540727745723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abed2686db24a2d6becbe3e4563b8fe1f7101443784aa85d1ceb0e707760c49d
Date: Mon, 17 Feb 2025 12:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739795333
