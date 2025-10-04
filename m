Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276A71917F1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759552794; cv=none; b=jKacfA7g0Ime9BdVLnePZhmKse8OWCzXirCYU7Qwu5dYrKrlbdZW/+rS42tK+hr7p46WhLq5O/jCLLxoXIpxOlAFq7ZWXCz7JDyVT/XiHuKJi0/AK5doVz+dAhsng/n1sxEiXNvGEiB+itKDDaj+Ss2RbqXXtCprMC99tWODwOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759552794; c=relaxed/simple;
	bh=0ITjZ1Xgw1ol2IzH1/9MwmAZBMwnl+P8CiTzI48GwPc=;
	h=To:Subject:From:Message-Id:Date; b=VBMZY9yN8SUuA9oJYMFNQdxO+R19guYIBmyK/4SOJYSiqFpw4y0hUGqjKx3qaIDHBVrrAVJ0dTfeiMWRvPJ39FTQJ2VCk9GOeWQMVxvmQODUeKkPKewi1MpSZdpEJY+r/tB7R1Cu0Tv1QA9LI46rgWpkhvq/+Lq+tryufe6maQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1wY0CL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1wY0CL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA958C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759552793;
	bh=0ITjZ1Xgw1ol2IzH1/9MwmAZBMwnl+P8CiTzI48GwPc=;
	h=To:Subject:From:Date:From;
	b=Z1wY0CL2Q+BfRxzajq3+qlWXpCGmtgMVazOltPFJ6kSg9FXzw1ZpnWfiUe96yM+3M
	 aztqet0b9LF9aRiIrTwOWuS3othrgsE1FUM7uBt3zqY3e65kzvLOkE5VNBlezq6nBa
	 3xvfIraCv7ywfc4YPKaHpC/nRtLcm9Nr1hncnPiM+QKcBEXxbrYqlI0PHIrXe8L91s
	 wvmfPwLPdGIsPK9JMtCHxU0AebW/X2/kvtA3g5lH5o/oiQF1HaXGGKfpWVMQWzUc3D
	 hyRKJXeUsO3CAtNq8SM0WAp4q5gkspv0ram2jNoigPG8rZryuewKwKbiijb+nmU84Z
	 oUpgL2uuQM/AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9561ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955279358.5652.1252282997988846567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7441d61da47cd363dcc0022d9f3be8ea24f9209d9682f7af04707d3275a13c
Date: Sat, 04 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759552793
