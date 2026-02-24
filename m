Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2935970810
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771896294; cv=none; b=s+uwFRII+6FCYz9bfI+Npx0k7yzeOVi7bPySx5Yt6N67f7pJSDIuTl5tdUyUdDWYAvpBpdqzM0DMdpI3t1TXy5HzZXZoq4tKWa/VwT//dPEk/vSEZqZKoUW0ZY5UPYMFeDcTjegV9SIBUlKIor+JyWpYudujj+CHKzqDQ+eFePM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771896294; c=relaxed/simple;
	bh=BvKg1T5ToBnJokVsxZzrtMbXCMfM3BTiNw62rhukZIE=;
	h=To:Subject:From:Message-Id:Date; b=BuUOojA0mbr3vEf98hW0B81RwQiZMknDVcQhC30/2vAknx1woiT0xiE7qC1+qiQwD+r4dwGT1tYigyLoEflXhIYZqfyBgZm9j39wbheRHQgZeemHuJTArByErgVhrh40GxnCIzRBedF5u6aT8hY+amAJWhmU2L+B6+19wGa84Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqO2MYTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqO2MYTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB92C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771896293;
	bh=BvKg1T5ToBnJokVsxZzrtMbXCMfM3BTiNw62rhukZIE=;
	h=To:Subject:From:Date:From;
	b=UqO2MYTXPPjeZlHT8DYuQahz6mMIrexTPcEPO4IE5siKr1syB3OvCrL8AfBpHM5OC
	 Yo1R+htEB3LD84KIZWj73wwGsNjkBaqKgcMiI60PrciuTq+EPa3Gy6Jk859QEOQCet
	 J2XqV3PGSi7DL6s0hdmyq9UZItD4qTberFksyOB0t63sj9sOmjIvOtC4K90cGk2mpW
	 z7JbOAoHEatZUMhPdkG2BacKWXlYfWuzBy9TXRuIrEeF74rbeh321dEsjUUdkhddFF
	 uoAaENuNuK0omqm7DO5cOigM+vEmq9jK0mPNTtAUH+GSYLxyIxRwkMn2IR61ZT3HnN
	 qp3DgQPWdb0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C81EEC2B7
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189629361.30889.2861128643384667630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e859fa79125a21e1ec6cfe988fe6715ef7f60242ffc599446dfae111d195e94
Date: Tue, 24 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771896293
