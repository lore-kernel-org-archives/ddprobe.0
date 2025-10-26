Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9070C129E6E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761457194; cv=none; b=PNKPZAJjyba61p7xHx3lLD+9Wuul/fzzzoSuIs31AMlegL9gcjn/gd8pUOHbAU6/6YSLRMynAYqLtniSIJ1q6p4/Uh1ASGH8UukhCO7BDGcQHlbQKU9+hxTuMKxJZVGbXO/J12WFuO2s7xHhs9rtpqGESm/07yyEx/1Ev7QEl/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761457194; c=relaxed/simple;
	bh=zk8pyYoSZrVo/ST+tZul694w3guTAwRyB1IBpbP9nZ4=;
	h=To:Subject:From:Message-Id:Date; b=qPHzQx1vPE7rBQ65t/hTenTNtMzBpRtOCCVKx+lzxeslQ1rwf/Kb+cEhKB9e71pCYIyk4PIUOwwlaMG41XwZvhXqd4AmzwlJ8iYIcEOI5wdi5V9ofM8gFqG3BG7VSAJJ2WXMwDfnXEBAtd7Hyi6dLMvcSKpYn7Xzq1nYAFEGsgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJaOXals; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJaOXals"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC921C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761457193;
	bh=zk8pyYoSZrVo/ST+tZul694w3guTAwRyB1IBpbP9nZ4=;
	h=To:Subject:From:Date:From;
	b=aJaOXalswMFqoNj3kn0wUz8eBq94syHj6Sc6IblJgT2tGMel47cgYiTwMk4Yv6jyg
	 mbh6kHPMn7wCGqP7SCY8qpoj6NQ4K+wznlG+42VhES0MZ3KR1XHVGHHszRPYol9HZd
	 G1VGknT/cz7sWPMQY2cX3PW6DkjhAhBd8/BLkW8YmXyrm4kO5A4vCHGq012EX9AJvB
	 mWoQch7bp+hbPJMrWw+ALQcQYWyG3iV3sbIXIDrmCXN4vBFjBra0R2T5BD2ZZvXHFy
	 3LvTXKT1ioHqKlVbm5Ix/QJr31BjZT2Ck+T8rtEG7siUUJNEFszIhuVbFotNuxOpQQ
	 1FOj46kzxXgWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FDACCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145719359.19517.10297715259095833886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66434491c357a1d66b2b6190171c67973a2e77e1c36b37a510d3421e92dfba18
Date: Sun, 26 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761457193
