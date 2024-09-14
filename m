Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB02433BB
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726346154; cv=none; b=F+ieSu4A3HF7zI/GoHmoCEPAnFAbRf0eGZjbrHYxYgSAZ6351y1UkYrvo6JGH9p9YoQu8GgeOntD1w3RZZ9AXeEN9wt1981AmKvk/SwWd3R+leBbtRB7kvRR+pXcwBHAjJUOMR7f4wYB+U877ggVqbW2lLXX17mV1mDJNhhDP2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726346154; c=relaxed/simple;
	bh=RQS2wg7LhtpMaqDjuFnlQvuQIzJ1zdsgxuIDVY+KZak=;
	h=To:Subject:From:Message-Id:Date; b=SF3cKEJtR0Fx49iRlAnarv4GrGeAe6Qr7Un2D/ouq0xuv34YPcwzno+f86KbgjjfMVsoldWnisWC3ikLIgGfMcslg8EjQnDwQLdm8POHk7HSrDhZmPS7DAZyZp5zaC6dC4Fl87E3U/IZtN8SX2T06JTK8ILNsrlB1P4pEhRoQeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYN7jnpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYN7jnpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2B5C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726346153;
	bh=RQS2wg7LhtpMaqDjuFnlQvuQIzJ1zdsgxuIDVY+KZak=;
	h=To:Subject:From:Date:From;
	b=eYN7jnptg1c1lvl6eUTtt+PF13BqGh9VWwK0N9iA9j53bVXiMLL96eErp1xd7LDGU
	 jSyNgUnxOCyeKEIZpmDmxWlFv3a5bXK5hOO347M8f72fZWtv7HCulSFT9w5eoBjXJ6
	 1UHrPnzDNkdvXWVUVYVf+kTspa7PNnzP2RI+Nbji3pAQDPRnIZx+uderADeAbw1jhm
	 i0sZel/IYQ/zoVG/0q8cHD++5xKcv2V8MXzoiTW43T9Xzzw66Warm9I9JlbnOWi90B
	 M5O0sp/xdlio49W4Jmndxjs4vnc4172p02Nh1nwdtYuV8KeIxxebGdyb09a7gv41Lj
	 yT2C1DKc6Ao4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AC6C021BB
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172634615359.26442.16556719495509105035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7103e972359e9b27b6392d034d9c9a963e94e9facd11c1005a66749bb58e476e
Date: Sat, 14 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726346153
