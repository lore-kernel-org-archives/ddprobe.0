Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E42A1DED6F
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745630994; cv=none; b=QW8kRd6kPT+fQPzFETY7NdzXj2f9iHwYxjPMeGxGxsPvB7hPcB7fqPb+yPIENg4kbjHF7q1DHilmaMJFO0tzRQCxBWGUXyGRU89dTK4Mr/suH9w6eYlBpb6VP8ed2tUpoKLWPC5/TVtQhoWOPQwpGfpoffUtpBhHMXd00gnGXBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745630994; c=relaxed/simple;
	bh=kdL/kshGSn6uG9kfXYXLaEhDNQQUhcsClATwvebUdVw=;
	h=To:Subject:From:Message-Id:Date; b=FUaOycGT/An8Fm8FgnxYb+ynmhK5VnzQg8NSoSoPNRyc4s/n7wFYWHMiUHVQXCU431ae2ZOInJ97DoNwlx2Jv83hpUJWI5vkjYPA0XepUzaXc1FZmem5qNedfky6KIb4F07X4sF0Q+RDJ3djoVWllOJU8c14SONZwsotW31QkdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdHzHkui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdHzHkui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A622AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745630993;
	bh=kdL/kshGSn6uG9kfXYXLaEhDNQQUhcsClATwvebUdVw=;
	h=To:Subject:From:Date:From;
	b=sdHzHkuiC3gNnKJqj/vmhVeXHl1oph+7wNsuZ395p9pUu2xzxMDQyDRxvufjrPoNz
	 v7bJZ1D+TLlOfRyd19/P0m4A4DxD0Z15d0aq2vwDwt2XfR7LbxaW1h25jxnk5t9nLe
	 PvhtrjJll8JPn5mzH6s7KNA/YoSmlKYjy4ryI/nYfUZeQ6ElwBLiodeFC+AMBXbOkN
	 e4mlIEMCXqSsRBeFwbiDxZjiKc/nrIlul0QshtzSVdVuovvAR4UAiSNTt78rVLEZ94
	 gpo9SuDX6og1SLOhX6vko1GWoxxyrYKWZI0QsdQohOx44Zagx6AUgR/Y8EV7LFhv99
	 LaHKmGVSmkA8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140FC369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563099357.12494.2245206045858596343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0fd0b3b40b3eb22574914c6537eb0b20dfcfb3f0b1a73e7a5640993e1b6dba
Date: Sat, 26 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745630993
