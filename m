Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518D28EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749005394; cv=none; b=D+Vpd0CNJ8n5PCwki1+Pitg04s7yZ2J6bI0iWsiF0VO2SSpVap7CfJp4Z2Oc7GnDT9YrtveVfVUE12NSkVz7bXZx6PfamzO0tMsqozlCtUxOHJYiE9tTUdYYcTH3nf/Gc7nRXX/HXIZiDxJzxUSYERrvPQ+t/9zl0mheMdtNA+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749005394; c=relaxed/simple;
	bh=PpTIFLitSJ/c7MYAlQOyLRqOiPn0u0qjWgixUaxmfHI=;
	h=To:Subject:From:Message-Id:Date; b=CeZLEBkPzs3TfHU7XNXruX2/g9vvpvFAkE2rWBQbvg4Se/eE/QPAkrHD1e2pgou0/24Xc8QSDXt+oogOZ5enAKr2GMxZ1glr+qlaXfl1RAdXmVHS1SrbdfmoXLoPxkDYQ8Axluv9F7MDfdTk3CzfzFO8QNYEi8wwBbY8UNX63S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IL1Qyus7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IL1Qyus7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2084C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749005393;
	bh=PpTIFLitSJ/c7MYAlQOyLRqOiPn0u0qjWgixUaxmfHI=;
	h=To:Subject:From:Date:From;
	b=IL1Qyus7+ZsLIqI5EZXg/QjR7L5Wnjm+87xOwwPsW2jmuCKv4gSyUm2vtAOMoS1St
	 vlpry3BLvH9IPM0bN6jr7MZmdq0hb1kL3Ln2cIz8G02fnBdpOEbcuJX+pFmyiqop6e
	 +3zcwR/OLMW7jHXYycNJK4iVgTzlRC8myl9p0YqiweuCKAuvaz/eQCiK1OUoWF+O+z
	 6zXnZWqvwcX6j2qesXH3smm7xl4lIPTlnzg9eH2LmpZUfmQVCZlFFETFpfKySnPpKu
	 8yEHnF0LluJ0Rq8LP0/TVSu3TieOFJyi0uCWvRhFxkuMqAf92cXb2/jzJAVDzQBXzu
	 Tj9wl1/sb9s1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15DC5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900539357.18644.85907708355051841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb14cac4cd24e8da402e7cfbcd70ba8ef21eb5e6a46ff85ed43f4cf66ea84bc
Date: Wed, 04 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749005393
