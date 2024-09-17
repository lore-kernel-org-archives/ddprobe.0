Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD56182
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726533954; cv=none; b=mGed2DYGaTNPR1fDsb+B64kgWi55fcciT0FivombtxTuBKEfe2JSiiRgkaP2XL0+WehVBWksjY0TRnTaD/DFDl0ql0PS7Cpg5yEFYcvrZWTV4HZBliCMK0myN2K96J1iH6ynSn8MIaiXUPPvDpNNOQKSqeayDbqCOQGS58RK/zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726533954; c=relaxed/simple;
	bh=r6BfVW8CQnStAZN+b7qaCbahW1cOh5cbtfN7ex7YW2I=;
	h=To:Subject:From:Message-Id:Date; b=CyV/39DVe30C+O/SemuPyUFeC4nxQExYYkjTHsZpawRK+OqBNtjwaoRZGk0XBzNdu41Lqm4QP3eLugnEDEDADJYhhRO2lSavkcSUlB0yUgGa8fF9OmVkezqkls57EehJOk4z3eGiHVCoUJguSITUQIcMwd2Ws8bOi0K9cEym768=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUiEqKmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUiEqKmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6596C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726533953;
	bh=r6BfVW8CQnStAZN+b7qaCbahW1cOh5cbtfN7ex7YW2I=;
	h=To:Subject:From:Date:From;
	b=FUiEqKmw0X0gTRzWkrwVijp/HRIAVx50g8fYTt7OZyY4SNw/3O4VEk/D91hOc+Zg/
	 A2KxSzgQyFZTvtCFnKxi6FXHqXIU+e8DnX0y45nXVnd4z+kkADF8YGEAua9uxIuYcg
	 tQ6NhyZBs4N2imIGNiKh7aeOmyWK/fLaJAFDehljhcky5jzrC/4f5N62QVpwzIFiLi
	 2Fqlr2gPfJPHF30Zsovti/gPx5eRgxDK4mscHVhhSNF3e1SQdtvy9kV7Cee+/8xJ+d
	 QAbLjFPZRB/V3dbSEesuzaItsiJE2o0umA4FEdwjCD8BFn0jF+bb7D4buOvQ+EVczE
	 DLN8h40pR01vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA6C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172653395359.27584.1316413457861969535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bece49ae05ce5b11af3f85b9fd2e6c3b0779c8b8a9b3e8ee6534706f660e0e
Date: Tue, 17 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726533953
