Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CDA36E467
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788232235; cv=none; b=sU1UNlBcFBOOtftWLoX3GxwKhNm1Z0vsx3b+RIhOHt4/fNhdZD0GsyBvwJ6ZtVe0T9BEKEAPc1ra1wsRgEsOugDojOSOhQIZrx1VbKm4DNpRq3Cqmsogf7B2VTsir0vQ4/W0B7JrgoASIOEe7hsLIPUKIqFKAR0LdUKd08cLNTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788232235; c=relaxed/simple;
	bh=4GFhQVskYI5wHiUsJLJnY0Lt29b4YkdEvXZAiJzOoH0=;
	h=To:Subject:From:Message-Id:Date; b=M8GNoCe2o3SFkSoTsFU3PlX0zsnXwlW7f4JNxaL70WjgzkPyYhli52RrhxzAP3GRoJzeCKuHhHhyybXIOkGCO/zlnjvnUyDhkkhXtxlN2MQUz51pyvQep+EsBOX/6QZB8HBD8jTVl/4/24w9+TmmaF3aZACeOLevpxsdQ0MWD4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ed3Rqqr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ed3Rqqr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08D6C2BCFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788232233;
	bh=4GFhQVskYI5wHiUsJLJnY0Lt29b4YkdEvXZAiJzOoH0=;
	h=To:Subject:From:Date:From;
	b=Ed3Rqqr7YTV8CBRmfYHSeAJg9uPrOZMEQVv3vN1nh+5Ml+i7ziVlunBGMoSRldj+n
	 jh6hrGF0I8m0QRPziCUjk6L5Pbxajvfq8ucaECqjt/WFfreMA5tEI465aHcoWlowbE
	 kXKbx5DFCxO0Ki7rUS4MdDwMrltsYQdNfOJcUxlQguzcY+BRN7bbY/azMLK3xiDyX8
	 S8nX9oQLzB0QyyjVwK9M0YnXAnQ0VgMNLyz7IDaJSxmlqic5IYuQehhGp50Am7HC6I
	 IBQPiXF1sAhO/qGUzXMnm5tq2x9PEYWzLkI/7M0E938uxJiq5/qz5/lsfKhiAw3hI9
	 wSW2Hy/rsWLzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45DC624A4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823223369.16232.17173531310761061150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133c5d5724b4d3c55d5cd1e91210aa5ca53fc8295c4bda08001c6ab547139fe3
Date: Tue, 01 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788232233
