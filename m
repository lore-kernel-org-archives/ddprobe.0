Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0C280331
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791162634; cv=none; b=kiX+7bdKC2KWbsio5YS4B0IJAzFtSncjNp6PXsvuiT5MJeSWZ/9diqA5o9Pq+Fw0KFzE8dRnNazcb5QaTZgUqYNLSjVuYsPhnxZ2Gdo+TnOfkhV1AlEWO6XHpsDVodGPq74gfaGwleIrZ4/EMK5RakXLB1aFDOPktRm596ESLdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791162634; c=relaxed/simple;
	bh=tXBwzy4QTbRYSbVJ0b3Ra3Kdzgf2Zpoddo3Bo/Ts03Q=;
	h=To:Subject:From:Message-Id:Date; b=u1CMof0+vdnewPn27jSsiQ0I0u/06PrLN2rAzUVGFEt5keW82eSkpnIHjdeNj0AlDEo8D8lsofR+tukb/f8fhKABrP7pu/SAmkiii2s3YGi3d+kj1FqlgNn8HYzwBkRu9tDoJkeVFVfpEfadyauNcvhlMC12h//OzUiU/LxATCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOxJzxdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOxJzxdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2717C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791162633;
	bh=tXBwzy4QTbRYSbVJ0b3Ra3Kdzgf2Zpoddo3Bo/Ts03Q=;
	h=To:Subject:From:Date:From;
	b=AOxJzxdyge+W831MzhldJ2aTYzg62br4cOz+fdtmoRx+hn1Dm2c6emv3QDjNl2OeI
	 Nq7Pr1GD/k1UxmGCb1tjDYwsl1C7BAe5J0qxAjQqTSQcNjny7+b6HgGioP5aQZIzek
	 jYMQdq5y5dIFp5VW60wOGMQ23Nw7wa77tWVXKF+wkfg7ehaNbEvq4vpkcmxIIBEeMh
	 nRzZV73Ya3fMBzZJIaAMa/EQvvWght90KIPQ9UPAnvPH0N3YQHPvjA88W9Fwf6D4Qq
	 BuHH6Dr+JFf0XAvs6n03niN+3+Bd7wCLZduEIlOYLd+94cj2/q143etTyl7/7lcDB/
	 piU6TJMClPxyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3F9CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116263369.11270.17544053296725659351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14eeaa572a9c60a2652b88ff6e13b50ffe98d87199c4d7b038c3342f7f3f4c94
Date: Mon, 05 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791162633
