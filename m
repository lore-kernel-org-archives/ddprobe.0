Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADF02F2909
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760998194; cv=none; b=GabtqzJutXz/mSVt6x5mqsSeTEMyfRxD02fesiEODsyM1v//gxz3crQdUydhqyh78cUkl69YLIFKslO6HOZGBNwRZ9gl+pf2J71yrPTXTIK4AVpcPD8fJ8m+bUOSvwQcKONX5ddF1S4kRHlI4kDNVV7HA0kXs/2iI40WynPgy/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760998194; c=relaxed/simple;
	bh=WW/w5q7tWn8k16n7Cxxi4gGmzrfK4dUCv6JeEcM4Rpk=;
	h=To:Subject:From:Message-Id:Date; b=NTb/Q1vaCYK7Yv577PqsOBy7FlnUEMH1J8Pk6h26DZ9Wq1ChVADx3J2NgAQEaaNTOSGr4sWVhqD1R8sXd9xtR1nnuUvrxkrZA+6Blr/aKylAHklUwX2uGBQpJIYEIWWMVxesG1UO0dAsoR+btFuDhsC5I6/isW8HISbp9KsafMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzAFGlhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzAFGlhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FC6C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760998193;
	bh=WW/w5q7tWn8k16n7Cxxi4gGmzrfK4dUCv6JeEcM4Rpk=;
	h=To:Subject:From:Date:From;
	b=NzAFGlhA9QU1DEIVGREFxBWTjKB9YCeCP14KQyok0hLuGT9awIIDgusDZjmdFjOlo
	 kZOFNFl7CBYWg0n5JBDEEPZo6z6+wMmzMROkA48sNzc//YVxCTdtyWgUmTU50KdGsp
	 O+CCTUJDCo8laoVbnQTW9zrYqkMiKoPp7FsoQU4bovFQY6P1tM+qzeINvLRqM6nK1y
	 r0TKKzwOGm/1FNYaOGuh+WaPV7mCDY9/XnbW2dHfq25C0BP1CqOykocNHS1PgqIXwH
	 4Kn8eZGbZCrZOnKWSySltcAWrI7Jd7v3+PKFwSTEmmCxoOP8pCsUrtJJs5SKVG9tUc
	 Jk5H5lreM6hfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93451CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099819359.7817.12887991319311780924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a58f43a46f4d547f7afbc86ab9033b8256b92383bc5e97b886a0e0373ae960
Date: Mon, 20 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760998193
