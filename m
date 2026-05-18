Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54921A6819
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779075634; cv=none; b=fm5TmfR7SZErg2z/X9GJqUWKD95yuCTw2uzStB4q0hykV0H8WjzmnDiCAjP8LyF1NlqMeZ3QWc2dp0YYBEjyzuBceJQduSmHSi1N/4FVltYx6jD8imtH7YEeSzoM3T2IwI2EkV+3jyvCSI8buTolUme00oopEb2RFdAzLX3jMuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779075634; c=relaxed/simple;
	bh=Zsbq2KZC3jQtziXCO4Plugj+rPxJaFWJzE1jQ/D89f0=;
	h=To:Subject:From:Message-Id:Date; b=iJPYSTHT5rdkodj3oyVzDO+iX8uTBnQCGnH09uG+5R8qa4YUTsVAYc1NV3+vZHaHurOUyGpD75mMiD7YhX8wgDHSgM2sR3wfGqrSwJb7L8JA9/L2n34uDhJf34JnhXgtTBKCTrN6mDITmAScM05loqMhVoX+TNtAB+RW3+q8rUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHg/a3D9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHg/a3D9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB4FC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779075633;
	bh=Zsbq2KZC3jQtziXCO4Plugj+rPxJaFWJzE1jQ/D89f0=;
	h=To:Subject:From:Date:From;
	b=AHg/a3D9gxDpGVVluNnhSD5CYavd0ElBGwlJCNowv8Ldip5LTVAvZhXC+ZNny99dQ
	 Ivbml9RSaBm99gKBG5kqUSly1bt2khwqd59wr06HeYv5t8YQby82ti8oL5ShAkTSWY
	 2DONajH7ILUx3T6rn9ArBRSOvYb9g8vOyMA3LsAxZhiCNk33DNO7aHOx0xP5w60wn7
	 XEDeH3q3iTYtq0pfsmFUXfi95Q+3LoCpMQLUPv68l5MBNGgTXzXCWEw8WrrmzCVnXT
	 mC8DmOqTDZkrYmZU1xCggnKStTVH0IvRPGaqPYhVHfzlSe9axMuZk1r6gYR3sbOpx2
	 TQoGi7biLLDlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB19FCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907563369.8144.6960277411504034818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d390034e95faf3deeed0159e013294397bcf967b7bc42f73999def0608faf46
Date: Mon, 18 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779075633
