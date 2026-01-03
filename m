Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AE11B7F4
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767438234; cv=none; b=FSeHojmcSf6f7gGMfAhcjN9izqhA1xSGJiKNN36Rdl7g99JYSQRgr6IK7BBkc2pD5ZF+gvzq4SePJmdpKAF5SBIsbZwX0kJfzeQYAuW1Na2WnRD5cyxAp4VksntMm/3jse9ptLZV58jcYi4xXbcFsl5Oh6UXKCBwdy4cmbZZW5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767438234; c=relaxed/simple;
	bh=Lwpstn7tgP9fvJOXtw1saGw045ZGsDcG4GIj34Npt80=;
	h=To:Subject:From:Message-Id:Date; b=OTvph69wliBuEhzFkfudmRQm9YuAR1Qh2m4FJmx6OevawPbeCehtwnn1UmwlkJKDRBf9BvPfGgU/Z+bqXZAS0muSzWyfy2f1A5JgB8RRfm6mLcESu/bLvbEwXxQuH3YsoA+oJhNzyk9DSZEylHD+fBb+ZHqOYOqjswPiyXaNZEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAb3CHj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAb3CHj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C71C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767438233;
	bh=Lwpstn7tgP9fvJOXtw1saGw045ZGsDcG4GIj34Npt80=;
	h=To:Subject:From:Date:From;
	b=hAb3CHj+mFgLAUDgNmkTV8xUdyJlc6dbXqbsnwKfadHcXpicvbWtmKu1jz7/3MQ4l
	 g77yxws9jsJ7BVPeAA5GQRDJtsG9C8tzE12INijQkpD5EveM2Fe7YqxpUkCINQ2YH5
	 uPG/80BpXCfzjVpzIJuMsH8oGIfWsnnztoAOdzEH3ZjtAX5c3n2rrsYwRXGLmwaErc
	 inytIHKvdEqdV8EjF3KjRK90G5YaQW4Hi+nxxuPjuT1EtrJl6Vtdfz+lww5hSZt1Av
	 kCkFV+miotel+sObxOy8K5gN8NfizgNUHwVqkqDrs3diXy4Tk8Yjw6tKkfwMATC1oW
	 tq+uAe9g4THHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC2FC617D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743823357.8598.13955884853151817242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad399227406105594a96b8ad6edd0ebfdf6d3c2ea41705dde9ec36a7177b89b9
Date: Sat, 03 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767438233
