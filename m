Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473F51EA6F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720453583; cv=none; b=T41FaXf7fyVqrX7M+d9Xgsdiib5LmNgOIJRO3ZDgX+4+yJxWG+VL+tUH54gOyshasmKGIajijfjjEErvXMdg4aQbGaqbnLcEXunDHNkOLXJ4csSnnZ+NJxbqZJ8vm/MRM6AbC0SI9wVHBcPGWQHKLMxhCg2PKNVZzrzzY31/i4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720453583; c=relaxed/simple;
	bh=mZ5sqnzIkU1OvBpEs28nYEGk4WyAHXhv0+lI+v13aHY=;
	h=To:Subject:From:Message-Id:Date; b=OBnTNFfO7/ji3VXsMwFb5Vi2vhQ70Ow0Igt19Oh0jGuLgl0MolMQH0xZGph5aWPBf4H7sXVbmi9eCPNKHdm+7tJJFdNgcKpCgCrzGlXeD/eezONGSsdTZwWUPZ5JPTZahPGH6az5sgHM/EcqaQZZEdWZ82dkQCW+7fsULWpl8PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjQ9pnP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjQ9pnP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC74C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720453582;
	bh=mZ5sqnzIkU1OvBpEs28nYEGk4WyAHXhv0+lI+v13aHY=;
	h=To:Subject:From:Date:From;
	b=YjQ9pnP63H+BnXStkoGT6oD8c0GdAtr0IrBYnHKvirf/SA1ZPA7IN2SZU2gxQzZ1a
	 J3WninQA2T0jIyC8Hm7hrpmVwls1ql0ll56giAtIR4t8o0nvVxRhOujurlgyfZaWqc
	 tlwZIHEfAyoGCrdhCA6FPiFq8Z5UZwx8lRm5PjfmaWlLh1WfjEagwsP1ZubYyYaQxB
	 0oEOHLBw/p1qqa2AHa/wEeE1wIWdXrXbOFBj5rioue4sbEHwY3v2vroegELx6A18SY
	 8Ew8OE1pI7oqNz0aE8oo539pqmCCaUaMgVg7CCo7+WWxzbZJ9l88UWLzPr6Q+U9AL9
	 AI/iaUIUGIFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE04C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045358276.17639.11661550901559665940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54f84654f3b6f3e8df4f215acf7bcd0b6cf785062048aa9c3d2674cae26b2bc
Date: Mon, 08 Jul 2024 15:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720453582
