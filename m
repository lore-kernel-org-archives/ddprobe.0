Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D9137A3B7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761743994; cv=none; b=GHzxIN76m7mP0lvrLE59Bdiqh6/tMXhxMzbw161USJ/+sz/KbF6RcbqL2HLD4G+8Tz4CRT/vR7QoJvgc8HCJkXGplf1bSsKvQyETo9zFw7r8nDFYezpZcU0GvJeNdV/33rQBYHV0AkZCfcjI6mGgCENWi9fgAFpMHffr2RYsyXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761743994; c=relaxed/simple;
	bh=T09Y0aXix+kl0o/n8Nc5jvB5Dr9ElJMA7ZWXNhjWEx0=;
	h=To:Subject:From:Message-Id:Date; b=YrE0nsywWgVdpGyz+mLRAY/FuCtzfH0YdhBAziYvZzn5b5nlR4itIVGaklhTznzu2NvCxGs05O+D/YJtoQGaBl/aWZEAXHc6nDog9CsZWG8QTKv5JvERUqpV36/FFdX3V4R89e9XuSEaX8O3AyEl7ov4p4Nb9nGZThHhiVwx7rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGdcfe2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGdcfe2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA6EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761743993;
	bh=T09Y0aXix+kl0o/n8Nc5jvB5Dr9ElJMA7ZWXNhjWEx0=;
	h=To:Subject:From:Date:From;
	b=qGdcfe2G/0kULkTmFHktpYwi2FXW7+d71MpThGZaG/coPyjgEJiNTLM2XfKCRUvHC
	 NQBOvowdibSPFpIjjZztSa6aJpahPux3Ac6Dh/JjbJxdfJpx8K6OdhJbn8dv41sodw
	 r+VL0H3OTKUJ7zgUfXsuHLsJ3Vau6ri5jjbZkp68jW0QysnRWzL6bVlEqSXiWJo6uj
	 efCmcwr9T3lUqvO5m54DqrD/Hz/QdvXRIuP+y1eMdNCfzcamQJJbzwCO3xz9QXj/+N
	 jyPZZLzPFg6t8JW6sn58VTrs5Bh4dl/au8rtM8UmpgC8BI4QmVvfTq00/gJi1nTG22
	 hkWhaRw98Sv9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90334CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174399358.9436.5766656008856156834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3eafd6520c351efcf01c1f0d01aef11fb25770c1e6f13dd17facab5a766fe84
Date: Wed, 29 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761743993
