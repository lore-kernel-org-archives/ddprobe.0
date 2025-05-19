Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EE63208
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747651794; cv=none; b=l68UDIyGjFDNnzwMFB9WVkGes6JoPHKj7Yaarh2bHkjoQu/lfNrJkgxatXZLxzXnfd7t4ji9GW+9B7aqKB6JKIfvH1yIzYLhIgEnlMbqfuaJGAUVNo+6t+6W2xnCMr6IWC8/hnwEUFKPKgrvwLILXgBxP6k7Srh45HgTg9T5dhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747651794; c=relaxed/simple;
	bh=kMsCW3rhbEiSudiWE8BabIE5SzpNi3tbTYafS77vBpY=;
	h=To:Subject:From:Message-Id:Date; b=KHlPnkCtcmoqZpSE/rJP17LeHMHCupprJ91cBfM1AhlroyKjnXipBLb4x244QWuRJltyOUJRzfmQ47dB5/mW7vDtdgs23LMZZf0DQDtQ9a56kmw90nI3qeRn7FAGYqyj/bTRcP6KMbr0f0/NoYbb+45MiIRVQrzy1ci32NgaqPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/qbc6Pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/qbc6Pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A36C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747651793;
	bh=kMsCW3rhbEiSudiWE8BabIE5SzpNi3tbTYafS77vBpY=;
	h=To:Subject:From:Date:From;
	b=H/qbc6PdXZZrQRhwPu921dmfGcr48sUCX8f4DBlx2AGz4LOaw0si+YyB5Wr++w1NJ
	 fr4C2KsogFUbGNoOBABtQmBG7raRzj/dp/FbZcbXDqoeVvVM9bJzsTHf7pc/bMJ5JX
	 6DC7RVJmaphhoTdCZzKN/8bxc3IYe7uuuvnL8K0yjfSrjY1+fQGE2Xn4jTkcT9dSA0
	 1kay2L0bG5sIUpySbZiB3lQO75A0QrAmxY6MoYGXFIoofka3KWIwJ0AfvYwAnQoCfJ
	 KC0jp0zchyg+l+es3NpYEfhiNNMXBhzpdejX/IT9etGOxBseQi6hGRGI5/fm0XzWsR
	 5+G5OuUIJFExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CBC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765179358.12821.8163490113467400648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108fb0e7b2a3e26685a79d8436a152f9385caacfae1c38638832314883150d8a
Date: Mon, 19 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747651793
