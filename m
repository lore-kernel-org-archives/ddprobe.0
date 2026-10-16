Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3322931CE
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792153834; cv=none; b=U5NN/TO1g7eKe1Fq8cfj+o+E3bhgn5UxrliRbgxeH6wAfgUinef+q4P6KI8EAScp69zKmJd7BEykc62H1JaXmAcEjS6o3mQI94iUfWzky4oZqptTNjAxeF/6pZXuNh910DpU2LHOV/pHtL5HyPj5/biRefiUYw5AhFopItraqsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792153834; c=relaxed/simple;
	bh=SweVteC1lZNtUK9U0UYLRE8ZAKH5fxLEke3qRuCG8GY=;
	h=To:Subject:From:Message-Id:Date; b=li6n74rFwolGvC1/fan+RL3huTKRVKhxuM7HAOaCEzhdZDOcIaiWsVFCOCaUtvy+Rkboyajpf9At1TxYqwPXzIRRIsiAJluOEafIVQFauFeyCJsMUuLGJqnkBycO4ZKniKYRIbqtNF32eR/4SiOT+gX/HISdHU1HFnQNcHCqyGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smRSRRZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smRSRRZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6806C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792153833;
	bh=SweVteC1lZNtUK9U0UYLRE8ZAKH5fxLEke3qRuCG8GY=;
	h=To:Subject:From:Date:From;
	b=smRSRRZ1XBssZ9tvk/8nYHFbemY6CeaaiXKUGNACKd1ZMxHWBIb+WXx8LuSQfdQee
	 erIjZcBcCh+3LnA4oVte8Fd/YWtwlwkhOK6djOi5KGpAM3teSO0wMHWnzYCC4Wl0w4
	 zMi2DwScGxLW9Vg7qTNEmsfq0k0NNhduKKr7tDieE0O3u9X4A5ZsMYw1Zn/SM/1i6t
	 z6NrzUs36DECufnix+fcP2xbhIXo2W7Rl1hCgyf5DFnvU2efFjdWo5v8dUVmDtTNgx
	 c6+e9z/rSkIv02ppsMprdE8KUH+DiUy+X1JW1YFOdU3QP38jHGemphbtPvMRBM8RPc
	 je5lpyRIcfRWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3ADCCA464
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215383369.3700.9703607287822127988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0724adf7a58d24625caff2ba1f0ec30d557cbf3e879b67fafb1abab1248147
Date: Fri, 16 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792153833
