Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CCB280A37
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746534594; cv=none; b=G3qEDTXl2z0lxnzK1kfO8sj8vqoSuX8DVZmVRfYa/0w8BFylcYDiOl8VMNe0jLDd9mGA8XavjIAB0wxwp6ceTMYCugagyoyGk5Y5PXRwr0NYDmI0eM/y6UTNQUU2l/8Ai0QgAHUsg6GZ6D8b1dqEANNfvXCQV6YaOYTRPhWuoRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746534594; c=relaxed/simple;
	bh=ZltyyGUtzo+WvF5uXOvlLI8y10x06iwvHUEB3grck78=;
	h=To:Subject:From:Message-Id:Date; b=BhSOzBgbeEZ4HaAxgb0ViZ/qRtAdIZwxU5HgpGuPT2IpcUgZSuEOu+smKhU9C4QZL+861NpixsGUMRgGxw6AblSX6ilj2zt0zrCsnQtWuNP73/z0uR2lN/mtP4X+okvQd8IMOs3TW5jw/uqruC9xPV03+LJVvqRPPndUO+TID8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G39H9CdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G39H9CdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746534593;
	bh=ZltyyGUtzo+WvF5uXOvlLI8y10x06iwvHUEB3grck78=;
	h=To:Subject:From:Date:From;
	b=G39H9CdACv5YM9EkdfbPpQf/j9ZIh+cXEDlRoRL/WrYDbcw/kCi3vSR9d1KzMRivq
	 eWfIgPOMEIEBYiBG+5rSU9hd6Wgl0HKfVnMpyMXnk6lXLHq32z5JQ7dV5WpChzW9HH
	 bc9eeMoCRpLIzgB4mTsGkJ9mp+q+QFvXmFISZ+fBKuLQ/WKh48Im8z9uSw4sCRqDe0
	 0vpYNDz71JC3GDgGdlTerESchf1GxUESO//ZbSFtsq25ESvhu1jEa5HGc8RNDnysBL
	 h025541U9b76c3i90xvYCi9fF8OLfLtMGy1xlDfC34MNuv5rtyDThwNmt4MeCA30NE
	 xX4VWRjd4Oipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B9C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174653459357.6522.13681625300205573183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c767d2aa667b2034873f031e7e39e0dbe966aab2f0da5187be1b081cf6057b0e
Date: Tue, 06 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746534593
