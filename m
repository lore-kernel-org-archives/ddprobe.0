Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D721C860E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763826114; cv=none; b=EppHmj10h802tvV5190HVGw/T20AnOlCE8u/QIZXRKu8KZ2HnVHjaCwXH2guRMHr2BTMs/6a7lqhNwj9RO6UWvtjrJTFZp7/CCnyrhhU2mxpLG8HXTtkjLbF9jGoFKMB5i2Zj5cAvh38G7Lz2PRZSunTqSUlghhA4W1s0i3GQDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763826114; c=relaxed/simple;
	bh=scF03/D7DqtjvkG9MAhU92qB+f3GsgI5DlFOthHeyxE=;
	h=To:Subject:From:Message-Id:Date; b=Gc8VW5ODQ28lkrAqgdfoVB5v2g4et5FhWkrxJOI/oNC6AFi9mhZEH225Kn+XQli1oYKlI0aqamge0AihDXsf3mgzrYA7SHGiC4SFwoi2XHPSM3USaNXhJT+kUG1Q75d/crp23qEfxaa2GnTpV0OuYKFGtmf7aNKMdPPZXsXypdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUm1yTmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUm1yTmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC59DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763826113;
	bh=scF03/D7DqtjvkG9MAhU92qB+f3GsgI5DlFOthHeyxE=;
	h=To:Subject:From:Date:From;
	b=kUm1yTmJTwsf02kXj7zjnlluX09QMiRqHB6zWDaeq7+3U9sR0WpMrXfOK2IoXxKDz
	 4QGuIsjhIK+cN/eiowvb7utvuaPVm3V2FMJARWUZLkqPARAcDUAag1HS0oduyR091C
	 kj7lfEF47YUZnmga1A7lMmO+5POtOW/2MxFiOAZ4AJT0i3iJodzEsfyj5MOU8I7IaH
	 F522aqF3DzI1LLFU63Z15vZHybRI4FS9qeRgD+i/8gp2hDtE+YBrk5AmWSVRtIQLOo
	 /f/i6uin0tJ++OvnP2EGjCadyCQ8ZX2ICsvNeBF+AivE6c26HnTJQasm8cfYvm/ZMy
	 Rrw/aoAnxo8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93323CFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 15:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382611358.25592.1811006118644226073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7892d533307f63a4a22ed318209b51338f692748da7586c96500f6b88988f3
Date: Sat, 22 Nov 2025 15:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763826113
