Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AF6194082
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727730354; cv=none; b=Cz16ku0+kKxVeK6IPC6v+rb/bRjiUKE9ahZVze/qox0qyB/HH4iuXU13cmMWij8m3vMnQhYGUFoT8bdDCrHaan8s7MT4noNp7a2KOIQ/T8xjGCu1nldaVOj9oddJ1rAWoEFo4tj7JQEeTmuNLWVNwvit30DiuAXQv3b43RJJpec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727730354; c=relaxed/simple;
	bh=xk1N1DBvs9QtIC8z0Gfac0T3FM8759JJhtVoUZeeKwI=;
	h=To:Subject:From:Message-Id:Date; b=ZHx1NTZwu09lWgFhPYBJVBA66ISA3Y79Dm+wLNAzNm/iiwKD23a/IlNeVFoZeQ0i+mrmMg7XO1PXLohqM9oiYdrviAv6PEWSr/P0HTbrN6Sr0hzOkiJcToJo5WaZmVSRAgWDSplLI1zdXyZMXLehAVPO1/qsSdPzDBpqKEz/NUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uis4O52h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uis4O52h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4364C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727730353;
	bh=xk1N1DBvs9QtIC8z0Gfac0T3FM8759JJhtVoUZeeKwI=;
	h=To:Subject:From:Date:From;
	b=Uis4O52h2kjHpQzb5uX3eWJ3No/3vGTjW+1aG1hhyj7vC9Ovxibd5+6nM847rsJAb
	 8CCKQZcPQr0UbcnPpZa1Ggx62iC7sFHZX8VDpXhBT23fCJHN5cw73cfRIOdadjKNgo
	 JwYlz/YNtEV2IuTVw8SWNgLzbRcrwP6atJbfY9V39qUccF3Lmq9Ika2bzQoiKON4M5
	 spMyVvMzouVriw6XPh9gW07y4W4SXYCCjpKsXFWgVV2qTbQy4ajCdD1yg6TVigjaCY
	 d+wuEzYXFRXFunr4Do6ZsFiWPZBuBT1bAe8PlwJ2RqkVbsZavcsIRM2wpkzlz/zD9W
	 gq4H8HQJ69i6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA53CEB2C2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773035362.31616.12890660903518212265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22ea312bc56703de5072df16eba85e9eb958b84fce090f00e6cfda86d45f650
Date: Mon, 30 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727730353
