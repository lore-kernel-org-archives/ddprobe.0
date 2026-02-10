Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199B332BF55
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770705834; cv=none; b=qJ/NSJ9ouFNtqmvmBokLYBJYRiGkxZUoX5p1xjcME1vkACBjqFo7Wcrqvfy+jmXUIxF4ZcYOGESCBMMore0TRtg1L44Ys9BV4oZ8Qy4mxCyydFRy/bkV0MUPimo1j4I+f7NIp3dfE4f5XZAWTmGBQAXKbUWH+rueNe5+iUbSe2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770705834; c=relaxed/simple;
	bh=By1EZo8HE9g7IqcWG0WKKTcD+88H11DvLJvI7SFInYk=;
	h=To:Subject:From:Message-Id:Date; b=M0uvO1S+3tK6arDbBrdpNstMWABseLnaClO0uApuW3SzkLsIj+EGDyqOgVoc43dOijHNtDpl237uibDGw0Gq9Hmop/buxgZp8W7DbFSsrPfWVBhIYcZxDKyDZKbgcd14K0iHjg9ZudS9l3OGQ93jeebp5F1ecCOgLeX3163r2Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4Snpjmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4Snpjmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD78AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770705833;
	bh=By1EZo8HE9g7IqcWG0WKKTcD+88H11DvLJvI7SFInYk=;
	h=To:Subject:From:Date:From;
	b=L4Snpjmo98BKOeQrvCCCV3I1g7DR+zzuWHjLQtNWzNjR/vNMQBp+9HYQ62lGFdlfk
	 X2dajtI1RadXm+etWwxwk4OsFLv3OFixnt/lpvKi3zCDewGZ9sZ/z30riw+bN+ZWM9
	 5UJrHiKZzVyDBQNbkf3ynCkMrhFKXszydDFeUw3RWkvl9DJ7chI58G7s+gLyLea6dO
	 Gwk9w6bGZ477eC6FjxHjT58+u5FJy6YVDxWih+Of+6QrUYP0Pn4hbZ809UrSojUiFf
	 jx+1dkbPXIFzUDJJyydP9AnICyxBF4QS1+pStnmQwSLyaLOrByiT8HaQvs+yffT2td
	 SL0wMS6+0JdLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EE5EA3F0D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070583359.15399.15186948376556030831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec23373098ef848a44e5bce6a4f91a7106f34ecd46e48f42be88744e9be9bad1
Date: Tue, 10 Feb 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770705833
