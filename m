Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A4A1CA84
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744337394; cv=none; b=o7MFyXG7FunSRgW7J/oxgL5P3tH7lPHWNEIXooc3rvX2jd0H0G9bvVeN1RQsAvUXwGSKC3C1dlZbGhYIA20Pl+V3ehbOBCDpJ4VahW1rakryNHmm9/eUEN/IER9ig6P2QOg5JoSBeq8J7ecEO7wuLwgmARj+lWTWFg0zgmhf7hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744337394; c=relaxed/simple;
	bh=hqEcPakEVdQEtbCsWU9CJE/NPoRwwbNmouwycq/vAac=;
	h=To:Subject:From:Message-Id:Date; b=I6TBfzlQVqipmxvfe5oSFosv6OcOzGGlueWD93TRN/VrTSUO6PaWqRoVPeKy8N6O41UX/+phpa4Ug37X4tMaQUx5EMack+VAZln8sR0aeK7NXv0KZvNpzN5DVR60ASA2ifv0rhlLFHjTYEbzolrQY2Dg/rhlxYiDeQwLmzbGFS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx9cL8ce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx9cL8ce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABADC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744337393;
	bh=hqEcPakEVdQEtbCsWU9CJE/NPoRwwbNmouwycq/vAac=;
	h=To:Subject:From:Date:From;
	b=dx9cL8ceJTxbyc5tTwApulIea852RSa1NcDWXv//7zI8Zhz+4x0SN8Wn7IWrWqDZ4
	 LyuCWjBurshlLr/oBOoYch6SncFn4t/lnOA5Nm5OPw785mcDC2ynWC3FbZTASsNHDr
	 nCS54tIuBaaI6oNimjwGSU0zH783nlJmOjIx4hljuqaigAKcPUCwSufzFRKxflmHLo
	 m8JigoSQhRrd5a4tPzBjqQeaWO1v1aqn6FeviLW7FMUM/drcmkLPTeWqowaNSvSPf+
	 ZtALpWT1Rph4VybQSNUJh4YJQ1TItph5eguLDlclR2iHGjojC2vHF2zLHjKMXPQee0
	 450bIDVE5MSoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2453C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433739362.30542.3476030182640137482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147c40211cd9db7e43f0c10d7f2c996dd612226abae3eb0464c0f996b0812f73
Date: Fri, 11 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744337393
