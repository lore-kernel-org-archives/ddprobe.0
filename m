Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDC7242938
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761362396; cv=none; b=hOG5DOHLkFDPjnOYDbzVLKleQMTHFJ/+yB1lJCAxHK0A6LajegIkf630v0Ij072qBx1mKhb8ui/h0GEgmIIRcfuL91Ad93sx0fe50axC9hF4Nu8ObXG4sygsScF7zbrTk5xJTA4W+Wl1Voht7ghRGTkiygEbFaOQwL5V0aTRjiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761362396; c=relaxed/simple;
	bh=3p7UcSvqY3DjBrBqb6dF5R51etT61BpY8i7Bq4PYecw=;
	h=To:Subject:From:Message-Id:Date; b=Zne1/8TvuyFzl22DS9fRtw+f3w9s/dODw2P6Q01326cq29mkkcPldDQMwcDwXiQwyTdpv/HMX8+HlxZdYh9R8vth/aeEWWPbosl98RrSnj3d5Oi/HXKc8R9ZjqUT+J4melBP05mJKdCqU5QSZ3w47/A5FgfRlvloH8jWbWCLGBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaIMgQ0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaIMgQ0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761362393;
	bh=3p7UcSvqY3DjBrBqb6dF5R51etT61BpY8i7Bq4PYecw=;
	h=To:Subject:From:Date:From;
	b=HaIMgQ0GBjcQWl541irl7T/RiC4wU6TcgdcX/lmErj0c9QuL+3upJrABTymbVe9v1
	 NpfLUvY6hIbwvQTchgSBPl//mc8obmcXHgKhh3TBJ7yupLtAUmaJwi2r9eiw09BDXc
	 dmqhVsV/qgdXEKKzReNi4cCnGxs/0xVqVnmtMapXk+IthN5OO26XiTe/weyUf6u6Yf
	 F9rrP6iKXHf6tj73Ls4FfK6pA4w5rPY0TRP+EW/FbZSoDpePnQApDklKjvbO5LRmP1
	 OmABilk5npiaV06049bjhjDkQTJYgCxa6NpYTcuGySbIwYYZPxOhvsoKfirgY8EWNw
	 ScDEUc525F0bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F613CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136239357.15479.15277411796710442678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030ef5f99c1d7c307c20bb5d03fd015bb332362239dfbe8494916523145ab9d9
Date: Sat, 25 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761362393
