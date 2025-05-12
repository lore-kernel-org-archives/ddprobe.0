Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E1C23C4FF
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747092594; cv=none; b=eZs6zWiMgget98It7ZEDHxCQeJTgV310JqSdHlmkdtV5Axr35lNDuoQ1T5eY6Nzk30JrB0xduvs2Bmn6YSbMf+nRJfIHoApmQTyFnrLXe1fdR9eihkiIH8MZWr2/h6Ljlv1ylRKTeezFL/g2v/rEXvcpFUK2790dZTu5zCo9XlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747092594; c=relaxed/simple;
	bh=XFmx0n9rN2lpFDDvi6iWuyIaBAXT3TpOiBb8spaYVBw=;
	h=To:Subject:From:Message-Id:Date; b=Gww7pbjgFSYrKNIBZEIF0Qbaw9Z5TZ4XRV07IqrFHsrZUuvc5TtAWl6wbyJM/lUSme2JpDr+lGkW3wEA2j9JgO9dXYGlroIA0izMnJshpeBBrgP/uiV8SSlqO15PMu6zB1cAjaNuRZ99QYgScHA+iTEQkU/xYDX98xdsG0vtdSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYttgCUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYttgCUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8088C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747092593;
	bh=XFmx0n9rN2lpFDDvi6iWuyIaBAXT3TpOiBb8spaYVBw=;
	h=To:Subject:From:Date:From;
	b=GYttgCUQCGd8h0tS/ShrC3SPBf3u68d8L557wVTUWMyT2yC3Q8lk60nNxXTcrvQGu
	 XanjBQ+Ned2osTzT7aKX3xmnUnG4KxXaVIGBEE9zmh4qXFKfcN7iM3z4NQ+X8kL3PC
	 uVbyXn+i5cIpOmuucP9fPoqLO381ow+W1alHwqUVjcTsYuEX20t1R+0PTczoWAjEQu
	 /JygH3aEif4HR5Z0H+d1hCKvtEYG/7khT70Tv7Sh2kzFuOABctgywjuj1+dYG0pwnN
	 +wLoArQz94z9QZ0MtEDB7keYVn+KBOcnm7IYy2ZLBo/PPCYDb8O1xaO4Vv3I0PWIjl
	 s1IuEBOQuOiag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A021C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709259362.5625.13973747873415237976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e7fca65206015ae2a806137edc7c413a2b2c2480eae66c81349c2686fdab1c
Date: Mon, 12 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747092593
