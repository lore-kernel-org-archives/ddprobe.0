Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C6F40DFDE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774698294; cv=none; b=sZdFwuh7peZWrBxEOj+qRejxJxy0HC44k3WrquHhApjQsR5nwvdz5GyfvWDAdIqFR+enD5ChR3TUamZpP0el6jk+f7BoGjlQPL6F5qkPIh6h1ggTFcgQ1Wjh0WGLE9sfM/CZbqSTh7XKsihHFgyr5Pci6yoOQXBgE+us31eLfd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774698294; c=relaxed/simple;
	bh=MScZbfPb0sB5oGuuFV3GOzsUY4XkH+5zsL6iEQnYO4Y=;
	h=To:Subject:From:Message-Id:Date; b=PVFo9laURYtdunwk/CmFMVL34GFfnBZVu7NNBFDbUGaYzb4zXEJNpA9sQYzIoODpvzQkZ3srRJcZZ0BNB0gRrdivwnNDUvPMYjEppYqb4BzV9vW2yzK88FUoj/EWqvetFIwF+B4YgcrZivvCQrx78oJjtDyW1MtTAkc+Q32jepE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYneT3he; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYneT3he"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE1EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774698293;
	bh=MScZbfPb0sB5oGuuFV3GOzsUY4XkH+5zsL6iEQnYO4Y=;
	h=To:Subject:From:Date:From;
	b=kYneT3hewhfcVYhYGXcaaGxuUfpEZ7AmFwPevSgrJuEUYbfFBmTFpLctly1f1ut7y
	 Qq3d2+ZGTubSTvwVVuKzb/xODTvbC3qk6rISKQAr5mOzMWusiQMJYcN28x3qsn/Q7F
	 X7jgnKHlGn9Vyj68FVBDJyconTT+qNw11h/3tJMmGjwI9g2IZowU99k6n9D2Q2LWmk
	 IEs09GcEqkZgEmgvtuT04Y9aT+TRTpEt27IiGuJJjEGRnGOVZDvTVEDQ4Psx8khlf8
	 0K8qSdlO8tuIgMEqdaRtyZ9FggmJO/GV+U9SuCwA0pdnA6/wb9z4AN2r14xkn46AJ2
	 oiuc+2AO/AH2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985E810F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469829358.543.1533859244289871897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9379253a95a963a57c5f993ee4949548acb420fc75c31bb3e69ff8a18de5de0c
Date: Sat, 28 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774698293
