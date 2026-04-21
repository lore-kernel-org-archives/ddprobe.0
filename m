Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EA32628D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776731854; cv=none; b=evNnT/FyiUsjpnDw921ALv4zTiQaWP0jb7GeGuuAB9xNpwTezCatR/9bYcqxapCau/qzi8/X0TlXjyn1Wow0vEtOFONUD4gD7rBlKBSY94cDODWoIQ3S7soqULraaL9C/NM4AF+YV21Jy0kl2TPduiUYbTqhOD85InG9fEh0D3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776731854; c=relaxed/simple;
	bh=5COyJmX/kHMrrzdGqF6huu76pt6LZoUqbgHO5SntceQ=;
	h=To:Subject:From:Message-Id:Date; b=I7+puuSM7+y5dJql2ikAmbN41CI8Ek2zJpZig8e3y8+q+9wyIWRsZSUsC0V/8H6F4t1s7suWAXEy0fCt3PxFWRBdhsnSHATcuTe47AH2/ZKBxpwETpzkXXoaw88wpoMioCuSRKSU+Ee/y2wr4c96JBTFOwPYrSnu2TTT34s6BeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILHLQR6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILHLQR6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEABBC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776731853;
	bh=5COyJmX/kHMrrzdGqF6huu76pt6LZoUqbgHO5SntceQ=;
	h=To:Subject:From:Date:From;
	b=ILHLQR6+9a3B3vzO83KYc0Kp5zypYymxNJgvos+TZfqlr4eBwYKR6V/5IqQoBEHZ5
	 fTKD6+z3mhkjtaTvJIOPKABpk4er4AvpxX919nF4vIlJkL8WflYoFaEEF3V4xdIAmV
	 QZAJlZOYDRUyn7BkdqP7vhcCkK9jpcloIBFYQ0+wRJjMT1ims3u5N3XiqKkK+Vt6J7
	 2+8gjIEcynAbUkHDOr/woAD/Lr2IY60upHle/acTBpgl7kRxmdBQMtWewAZiFjXv36
	 OJ8BPXe8N6HUwcUSJkQwbLRas15rYTTrG/aklQFTVvdwvZhaD9x/aSuuZNjrRkWl2f
	 tiOdjdXNpkjew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD2CF5A8CE
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673185368.5138.1886534906950839873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e8af7161b5439fe7bc91627532b02ac0a3455fef24358dd50486c27f393b4a
Date: Tue, 21 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776731853
