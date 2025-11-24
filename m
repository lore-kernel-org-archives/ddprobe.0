Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D7032C333
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764018774; cv=none; b=WLwBTedZXhcQlWoxTckyXqBYeiVXwJmUjDXe+rISPewIkRZinshhlTWVOYZzJFCLWvAqtuP9VipHtEpDAI6uvMSs/g8q8qojvGQW7xaPuotKz0/d+/DHf8GcqYgGm91TvXCfQDgF3HYDEWkL+ZToYkz98oMp9xmqEO72JjNAZ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764018774; c=relaxed/simple;
	bh=ajahl2W4FUKkXOSIFkBpsY+RYGL4VvxAm2FiH3v09fY=;
	h=To:Subject:From:Message-Id:Date; b=hb1ckp+lAk5iwO9SJOqEpLHAj6FjQqc7XTi5xiR5X0NzPZ/e3t6JTsjQsXhoxFM2E1Hav7Ah7EZUcSktF9mUt3zRXV3DU4gJJbUhfbCxllphUalp00attXszZ+0HkS/LtB9F95p/i98kDkFfwuOJ1b+SKjBH6jZzws1VpjyrPzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXZx5gMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXZx5gMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E61C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764018773;
	bh=ajahl2W4FUKkXOSIFkBpsY+RYGL4VvxAm2FiH3v09fY=;
	h=To:Subject:From:Date:From;
	b=lXZx5gMPVTFS5309cmJJ4WM+OKU+7aWdLlJ/TihwoC9lDABHPmlqT+N5rLsWYTNJm
	 pV6ZhhcX1qxa3kwVQn8zrjx/HUfw/dVor+mTnKZ3XvFkT4htPkXi/mhrz6yelhNCJy
	 OmYJE/fWDoY0/7h371quFU72+xsHDqfHx/knUlGZyYemwHWYKdzUhggIspcpWOXxOl
	 r5gMbXNa5tqFm24ZDa5UdBy1Z1Wrd8EBFMGBQB8Bab0zIx0SxbPcyppYOe+ClvCw7j
	 c6KaxnCM99NYyBzb80e29ikGdT5G3EMLbr++ES6gRHME1n2bUBMO1y7ejaCQRGC/jp
	 zY2Al/7gRWXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162FCFD355
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401877358.11498.5734002133887770286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089306c6a7c9ec4adca0f7ef7d5536febd9399f4cce13453c3049ac76aa126d0
Date: Mon, 24 Nov 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764018773
