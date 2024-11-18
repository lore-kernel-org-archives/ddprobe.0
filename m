Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB6E18E1A
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731923154; cv=none; b=jwFtSz7XcI6JZhtS/mT7MvGftvFZLJA0tPQtYVimyh36XRbN47rF9dy7ixyAhKa0w2r/V1ZT0XweXWKGybvBVTqa8N2KTu8J9ZVga9/im87Fr62H75jeF4dEigfwZNwqjoDnmMwjuriLtqBf6MYRmkWbc38Q4lOeM7teFMvt/eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731923154; c=relaxed/simple;
	bh=XZSYxL9NMK1SYU8NV1dUvmAEOhnY0/qyt0RA8UJGbtc=;
	h=To:Subject:From:Message-Id:Date; b=eYJJE84l6o+2eHfspAAPNmvns9dLOhH85VhEKZegS0JZn/VF6uuKdyIYADp7g7WcNIhuXbxPJcTyHjj6kjXp0Lr++ZDnW22mTwzg+nBCb2yJu3agvmx3KsRNhu9sZnSwsIh365OgKgKdOu3y0Jkf5QyQj+YGx6bpkaKZOxxNJ3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfJ5XVHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfJ5XVHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7BBC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731923153;
	bh=XZSYxL9NMK1SYU8NV1dUvmAEOhnY0/qyt0RA8UJGbtc=;
	h=To:Subject:From:Date:From;
	b=bfJ5XVHSgTIuYbHGzuAr4Y1atW6aoCmZEdq5+SJmC7VsjAyEXPeOL9dGiy4xSzuAZ
	 AyM308aWfCbI86oVIGLCpAux+vXMJ4y44zmjZc2PhxDpo9EkU6yOc4vfFzePNxv2W3
	 ZJ4VQErSc3/T0Yw488Jz3iLtILTAd076R1zpjVWLrrz22FnNoS+2f8BpMBhf6PUQhO
	 Toc0F9s4/+dg/O1g99hmEAzfTHhFGzDA7uXbZRtsN/SQQ95O0KI8pl4ZgSijI5wPiN
	 fqU5mK1FmFDO/uh0f1A1Gn14i091ox52xpngG88tAHClHDYzy/3rfcCYPVtj10H+lX
	 Crx/5kCINf2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90336D49205
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173192315357.13084.9071416655661256932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbfb61ab3a8bf0da74799959b1c02cbb73dc9eeaeaf6bc3e6889a8cca6d2e8b
Date: Mon, 18 Nov 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731923153
