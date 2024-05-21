Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C310D299
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 17:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716312803; cv=none; b=UldJHD9eM7SBzB8Limtu0CUm5sVN2pGf7Pf5p6UVbOC7PNugm57MYUFd2ifYf0O8lW3Fj6/pazT7xgPb+qELWkEDcJimwu/KLZLK3kewZfAhm3h5UJHqSkiBi769ahN2s9vdfPI64S8TL6UUS6YUsQphj7Z5T8T6mVtjKBMiSMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716312803; c=relaxed/simple;
	bh=ckKTL/XBB/vBalssEwWNPQCxI8pw59OO6TRcFWguI/k=;
	h=To:Subject:From:Message-Id:Date; b=k54UXv7j06Y4T8XBfLViGyFFjLRaC0aIxxEraoszLLnlby1055bm6/B5vWxKwex3ZfMtveVfjHlGotVGLqUoGfFrc8/+mUuPTmH0wtv3XlZlEiP0XFNI7K5m6nLl8WBusZhp2w1QTSB8GyyZjJiLsXIRhTpAQBc2HhgenNDPleI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwVXXAfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwVXXAfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0220C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 17:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716312802;
	bh=ckKTL/XBB/vBalssEwWNPQCxI8pw59OO6TRcFWguI/k=;
	h=To:Subject:From:Date:From;
	b=OwVXXAfCDkOWZpfV3vxdkXogeuw2s0pRaYT9a/ctgJ29OFFGrcfXAgbTUG/tnWMK3
	 DHAKMpygFjZ9RxIJqLfy9q1mwUytSXorkIRwUOlhXHO5SuOOJuOqF1g7Nr/cMJ3a8R
	 PVWkr8D1uz6F2t+OoMWlx4OuwiJW6+3iMLNwLCNKuIeDInEkiitj13GEIrM9ZX/Vr4
	 yTQJKd6kiZQGG1MfliWNLJ3qEOhACDIMD/KRQaWBJ6Bam0LrzUyn7lgfb4awlsQQhg
	 /VzeaX1w1iRMIX3oH3vDkU12k/eL7Y3BQCEfKeks3qTH0k8a2uRu5vCd7aw/c+6iZD
	 cr6bLDTrFx7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C078AC25B78
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 17:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171631280278.24413.18210785753063606567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca9da46427a1089fa8da6e0a46dd591f469022f8261624c0eb1053b87bdc3d0
Date: Tue, 21 May 2024 17:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716312802
