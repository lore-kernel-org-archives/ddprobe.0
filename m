Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6067B3BBE8
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714977743; cv=none; b=B3iFKX0/TlAZVONqiKAGXvsUegxhUnHDhQsTUev3chd2YfAAacWQzm1PwXsEkPqRHnU/teV9opx880uVFs2i+JzGOsaZxBGLpI4zPCMThF58LbvLN0a/yFKowXbABpmTwkAQ7kX8X9DICx55cgoVEIt1APTG1fYOTW9tcKXI0uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714977743; c=relaxed/simple;
	bh=xZ1aqhc1Ypl6h+uA+o5NxVIOULxjQRyotCXifdAkkgo=;
	h=To:Subject:From:Message-Id:Date; b=nvw3eyvWp0hZ59sgIRsI3Y7VXbadN4LXR6Z5+70InvLa3+x+SLnJADUBmh9FgcUYbJVaP+bnfgjXgzuOSTTUBZIhWoquce+4HF/qmElgVXB4vC+Ufzl06OnHSghnnPIq1kHv4LkL7JIvr8n0J9JiedA4Om0TrsI3G607aQA5c4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWdF7DRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWdF7DRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EC3C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714977742;
	bh=xZ1aqhc1Ypl6h+uA+o5NxVIOULxjQRyotCXifdAkkgo=;
	h=To:Subject:From:Date:From;
	b=AWdF7DRey3V6kEgzAYInTFGBE6augKLlnirIi5tikIH2BQ9dfRDH98WZDO6ePZi9L
	 s4BOZWaGq/nJRnwdqasSkPSXYnlcOzxZG8Fgr/NKUB3Ka6s5IgGryXy/YoWCi452od
	 UEYaTdsCbG13U/++rJa2BeIKzmwKMtH0mdnkQmMHHLtEY5sRlXQHOMnTOJYh3W3WwO
	 7C9OuAmniai0LV0oiQ9L/mHXoPHYlRq2BVRWO/qc4JnlABGqGu7pVdtiH4c+CDqL0g
	 T0SqFXMkM6KGmCJeDz59GhukxhbM5Zh9qAQPBacy2d7D3IZf1JbLrshHHQUV696Tmu
	 fHOt74+6xx66w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE785C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497774280.18064.10264142522408465342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225f2214130eff22e0ee91810d78b9497ba802227a7792cd86fd37ef5037be78
Date: Mon, 06 May 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714977742
