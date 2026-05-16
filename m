Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283EB1F30A4
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778968234; cv=none; b=i7oP92WHeQ2qmHVodOTw9v/MOEs6H3NyykuKb9u6qgFoKYUafRhSOfSxfjJDtYi33TVUdNqifPKmMcmvB40fSMXsN7or7Yt/Q3t92x7jMZfJRj+EP2NSfbl4Y4Yov16rGhcVSHYx6Dn07LqKlgJuEGfto5AJsMdcU072rJ3BUkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778968234; c=relaxed/simple;
	bh=6jjUtgBNHX8apH8vUDaXtEES7etevv1mY8LPSNblIss=;
	h=To:Subject:From:Message-Id:Date; b=MzazJvAHjW2Np8R5JqLU7xkz5kjALX3t7w4heV4Enav8Yku2CYJf40lkns1i/kvVDJEQ77B014jRuIq1NVp5WbPQrzFmQPlCl02CRqSUvmHL/0iTz8ZHW8JPew9dVr/hOtgDroX8fi0BxAw7O6qll1iCMZZhqkHPxBGMbwM0muk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKhyDs+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKhyDs+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7FAC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778968233;
	bh=6jjUtgBNHX8apH8vUDaXtEES7etevv1mY8LPSNblIss=;
	h=To:Subject:From:Date:From;
	b=AKhyDs+88aPg2bpG6i8prCe1CGotMbwy/vUIsJiDft2EQZJNBRPuLys+16W5o4QkS
	 wPt/5+Vyed9hNaXrJUDXy7gHhoh6aNSVeTHpMeQ0PGXx26Lub41f7TsGIN+QgcGyH0
	 qahksGF0j+hvZgTuWqvBHf+PEPB1RML50ZiXsU5KCckCSIECKwtaNfxeWrJCzGvj+O
	 3TA7D7u4e6JL3hfPX7z7UJdPVq1c8iUIqHS9yN2sU/OubEhR0rYyEV/PS0lyLxY/4T
	 U6iMTENZTEiKVV5jr6aAOVS7sbh2dBaXUwDmuUTAun7ra8hRbtrKhtm2Ls//tRYtSI
	 qKqTMiU2IM0HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2ECD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896823369.20573.16062730379829489587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81e56a3322b9bfd5fbb3c3a0e4bf2f844ce10b84e192b3b2e5d9beb3b4d77d2
Date: Sat, 16 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778968233
