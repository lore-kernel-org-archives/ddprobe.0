Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8151DFFD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776222454; cv=none; b=TQJ0xaRcFyOltjsfSo2ve7lK1ZdOB2NLbEZen69z27092PfZudVAAqtARnFBN0+u8rgxyvmTwhuVM2YCW03c+xdbkXz7mWmRzfH4qEF2vlgRCXtSEBnhS7ucjkahAgDD81O+v+9mBTockGFDZfFzcoQjMyQ2TkyFGoR0PftM2Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776222454; c=relaxed/simple;
	bh=F8Pm0X+tZPx5rSH9RCCtTA1dgoMtvXKWxE7x8AAcCTg=;
	h=To:Subject:From:Message-Id:Date; b=aUBABj3/62DOBfTk8TaRKOYJISlA4Smn4k0AMHoaMTsRNkOO7W0vtXmOiNxTCyzhHboCDIyFpzBZn6T7Dz2ac510dsZ5o3ykBVamYFS5nhWMhE+gwNwFtTmWjjcqkJD9A4Q4EcPAqRQYkW6CbRo4KL6xC4j9wedqmlBY75zV3Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un6+5xwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un6+5xwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86E0C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776222453;
	bh=F8Pm0X+tZPx5rSH9RCCtTA1dgoMtvXKWxE7x8AAcCTg=;
	h=To:Subject:From:Date:From;
	b=Un6+5xwAp4drcrgiA9m/hqMttwFN5r5rIi3+B9dcQEd7SrXsXm1jw5GkRwQyfkRyk
	 cWEGNR/d/ymO0PcXtEOWFSvHxuTSq4bJ5c/xd79d5vc3DSo1O0AV2BjAX1sCshRE6G
	 McjqW2/oBLyUr+u6zzq7qPMXPSmTPiIR28c7CmqvXH53sp7cR0yFZFav0OkKvaBMiF
	 63duQDqhGoXYD/8csdkmTyeW8xzREoJ1w4LugxtXJJx2YT4e3nrzNa/YzZMVFF4uyz
	 BOroNNIFyVLzcT1g+VPrtSReJfOXpp+1ps2rd1ivgL5Jr90e2YUYEJVxmMNVD9/cz6
	 s44tBqtuMiklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9313F531CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622245368.23556.17140859370632919099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f134368abf418fd9b6e01cc2ce75c682866eed4eaa78acd786d727484f6c28
Date: Wed, 15 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776222453
