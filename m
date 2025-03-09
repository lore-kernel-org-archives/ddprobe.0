Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C9974C08
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741519134; cv=none; b=Hn+exfXNnf8RJHWlY+3E22ruC9des8IXYHvHrvXgOIEyhxnUfiJtS+B/4YYKjJ88H0bwTE+2CkMctN4Komu4MXsKMGHxp37FVqpl9gGvkMoQYlEepRpnx+Qkfy3JHhFD4BpooLSVesF9XePxtpJBg+PnI2n2qsFQELzpOo85p4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741519134; c=relaxed/simple;
	bh=t3iVKOGrL9APpT6bd77EFm4Ku6bgZsNuSORCZbbQhtc=;
	h=To:Subject:From:Message-Id:Date; b=Vto60e/w+R0qPXnshnadngAPdZS/xqtgJXka6wbR6PmhuYluSp6ofOR0Pl2pyLJhs6mR62f8p1PNI6QRc/j/k2toe+knjp5Ci3x2tEd73JaUNS4gTC4hJLzA2Q/fgGsc63L8omLsnPPZvovwjazbp3TWCNjmYqEkFbefuisJ37k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2QJXapI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2QJXapI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1023C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741519133;
	bh=t3iVKOGrL9APpT6bd77EFm4Ku6bgZsNuSORCZbbQhtc=;
	h=To:Subject:From:Date:From;
	b=C2QJXapIKSQ3s5NqwpNnkjcIlr2veP6edKYwlIE+zMlGkJpQsJGyiOian4YiJhSNe
	 /xZWqO888Mf8Y6bGE5Aao0ncBz6ffF8xyYbcQfcbDAgnGEI3TvQrh0s5qD0YcERnGb
	 4gZP9rUuedZOhtvVvj3EJ5yRYVztX4guSr6wW0A+HEWsMFYO/TPgVDN5MlsJK2wl67
	 4c7UsraNZ9y4+sMY2ET9ATedQmzHdEvVO7T+QXSsnEt8XypcQIL95858UAvtRhWooE
	 HLa8QhnLqBbB6lAM/Lb/xiHeGWnTB4EMlqfqAgapqM5ksyWfk4ZHlLF6qstnVmrTEI
	 qeYvwK1gzXnfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B91FC282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151913362.30835.11634036553336689632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab0d0ca90192f9d0ac786cce38aec476d2a90cb62afaa444e958839754f4039
Date: Sun, 09 Mar 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741519133
