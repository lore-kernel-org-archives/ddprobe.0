Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CA02561BD
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746188993; cv=none; b=iO6CbhcyM/SteF9VZ1KBdR7luiVWeIYZLps8A8ZZKbFC5rkQ1iPWiBP6RKUHajOnSgligQoIJN4kttKKUcwTrZXa7Ws2wcTjEcVpPpe+BWuxSnMGcSGMTO7o55YbCq7zeCXvd734+SjIbVvBPsUoYyOLcbAvepgdeqpchB5xEhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746188993; c=relaxed/simple;
	bh=cj8ErP9dqC4kkyR7xEwM5O9sKvkX3O3ZKBv1XousgRY=;
	h=To:Subject:From:Message-Id:Date; b=sY4lbJxYlnqXj2uvhb8rvVorZ4ExVyywA6X5HalGQlEnXL0pC+D+FhBGYIEOPB3F4sukBc221yYYgGFsihx2EvG6vy1F4E6LjkjZDoAVb6bRl1lwEOWYgdxYYKjv05vgjKmNxuooFMjQzi5nT67qFzK/Hhqm95u5Z7n9osxrCTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmEwDZdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmEwDZdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99A20C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746188993;
	bh=cj8ErP9dqC4kkyR7xEwM5O9sKvkX3O3ZKBv1XousgRY=;
	h=To:Subject:From:Date:From;
	b=mmEwDZdpfxopYDlDshuhOVkI1cQEATtWJXDFSUflxhIIFncAjQ9YomokaegFgJtpl
	 WxDaxiD3mnEkm5YycxTHDpnipX49+xmbh60FOYUTNAK/+Px1Yh6Fs6rEVjFXEaB2Jk
	 On/X6TYYAhBv+vrKXPRc5hMPUnfS93WIUvW9xKKhsUv70+5tOiZUZNwFlkMR73X2tH
	 n71/NawZ/ps3HFotWfGck5wF3t1eH2ajOlGmuPsIrrls0TVeLrlEVlKRw4uwuTNyqp
	 k585U/hRYqVqDq7hnGiqarPmaU5+zY07XYKxwa4p1UdG6OP4cGWHrKOhRnAD5ID6LA
	 fL14jIrRhqgOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E342C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618899357.24404.15236806469878202466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaed86ae9e0fd932d9ed6d9e969a2abe4e81cd877241568d033c5d59c15f4b58
Date: Fri, 02 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746188993
