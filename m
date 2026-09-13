Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3675A37F8AF
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789333834; cv=none; b=GOybhw9+UUGQ44swffOGfrG1V5OGs3O7e0IfCU83nbUu2zUijphp5v2A1h4vrwfXZFdtq5q8R+XAakrilYrOGEuY6TSSf0DWgSioSV2liL42MDvZARHjL0ExGjqhH6Efjj4zvp/l/QrmAESww5GzcDiYrCWASfg9QyCom5vIjE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789333834; c=relaxed/simple;
	bh=N3Wf2kk25AlCCsuqP1E+2WNSy4tKssHk4MUa6w1dZnQ=;
	h=To:Subject:From:Message-Id:Date; b=X7A1b5dQg2w0iZ1P29l13KSYNJ4hawlCtJqcmd3OzEWZSmtClkvJnSJ6Mktgnu123MCpc3JPnNUGYu3fA4w11s6e7OA0ahETuFN4pN5FIpnPIW8TXIuy7geisQSB5wja78lJqGFngu+7nKot30CWaqX4bvGI9/CXYfKTm1GoW4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+dAIY5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+dAIY5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC437C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789333833;
	bh=N3Wf2kk25AlCCsuqP1E+2WNSy4tKssHk4MUa6w1dZnQ=;
	h=To:Subject:From:Date:From;
	b=U+dAIY5swls+tBPzdSvW+Ib2Il0ZJcAgQRB5tseEhc/52AQosWM4tj4OXfldo6SL4
	 nF5qmqSjrPqJMftbspUdwyAXg0aviZaQaW4SrrtV/q92+ce7EuCZyxvGnYcuu+2xO3
	 lMjPJPfuGJ9TFrfAydnMHCSskbbTDSGg14PR4z6kq3NYzxkpttTWklZH3jcWKrc7ZS
	 pc5kXOfv0YKFJHYz7t5+dtd3tlab3eKb7SSWOBG4ZVYy7uRpb+SV6QmR1yMoYIzCbE
	 0zqmnkQOHjPJBE4ozqEU5R4H3eh9C2BXWwOvo/b7KbO0XHpHLKFR/0AYtzyfKlBPRI
	 DxQVwc+7qdbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A7AC88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933383368.10077.12240371694496831599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91e18a88f106c9a46e9990634dab4c1c35256087308f35ad55a08446c8e50de
Date: Sun, 13 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789333833
