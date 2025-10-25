Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B052C11EC
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761389994; cv=none; b=eNnFmLZdi8/VWi/y3Fwn+aef9HgHRVkc0apg/k0J3LjPo2ig4r88S/AgWmN5XgAz/bpYkI5w/9SyopJ6vQ77YZ7VY8j9X1nofrfe+UNlGw8snkUUxm1MU68MKTRThQuRd2JV5kLgg3jv05aDChdg7on3h8y21K3WKGE+gT+8qtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761389994; c=relaxed/simple;
	bh=LoDqhnxZfY99hcDueo4qOvfkNLCFrnKKaRiNvuxuaGw=;
	h=To:Subject:From:Message-Id:Date; b=qEWHIy/4OGo1MSNU1ui2pHg/J1GVLtHUM9GwUCcW3JfAmivktgOd7HFNQDAjJedIg3cyj9FHjanbqE+ET4c1AaEHD6vwrIxLWWjOwEv6twQxpriMIVEdqqRPFdgfjG3MMEgtOQ291Mg3epuRWcF5HvFmd5dEWIk5rEwY3nf0JGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCjn8SX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCjn8SX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5740C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761389993;
	bh=LoDqhnxZfY99hcDueo4qOvfkNLCFrnKKaRiNvuxuaGw=;
	h=To:Subject:From:Date:From;
	b=vCjn8SX2khBfKeq1KQcExh/FOgBZKwgrZatTqHUF6GeCz7m6OYjgnp2ZdACEawEKV
	 ObpxvCp5jTFRYcQU/8UQ36eZ1N5fMcSb/3RJw2j63FNt1xCiLIz5reydAL8Y9gbW84
	 SWVZX1icVzIv5/X/dgzOs+gszXN6UeB9XA6RDheEeXLf29z/YSsFGVdNCLY3UncX23
	 UZzSD85o/BSvFI676ukOP4TYju+XuCNewLAWV963tBSRV81AKoBzcvuWJ2TxWZuiva
	 NE7XeQqyjJQs94UNQ9p7R9425ueKxoZ22QwISvddD5vyudpDfSr38Qykr1+V4f6SXm
	 PTaEP8iSbBJbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95343CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138999357.32115.10791774097592598658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71957112f2b2e3b8586a1db6eabfeede4a946e91b9d798cb452bb7da78d8f4e
Date: Sat, 25 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761389993
