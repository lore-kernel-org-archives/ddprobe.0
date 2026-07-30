Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423CF368277
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785378634; cv=none; b=vAFYNPo1Ju1VQoDNy3FmfLXoN/1NerSYUotLj69dAmQMNYTvKB0CE8i6W8+1Mq7a7YD/PP+C6QEOk16TkxGchZVJdg9Bpk6obMasGo9T6aB6f8WeLPGRngnffbyUuiqS79li2Qs0qL+YuhwYLUO+7oqlwF8CzJNrzR+ky0gyQfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785378634; c=relaxed/simple;
	bh=K6qBomQPI3SiwbNxWFHxOh01Mv1JKmuWL0BC43LHQr4=;
	h=To:Subject:From:Message-Id:Date; b=WfLFMptwvtNG8QZDHfNv5CkpbgMO8h7nIa7v1tHqOEsTTM5PZfFvzJBj80dp0BULWOf61KJQ0qIizEhBF2m1ge7+jo0yhf1ByU/QwL7xZsdHp7Sfs5UF+2hMcTSqGgZoJ/gLSv4ECIZ+Ki8HlsyuKxw4+PMVKuU2FGBjtaOGl68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlGrc1lK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlGrc1lK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C788DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785378633;
	bh=K6qBomQPI3SiwbNxWFHxOh01Mv1JKmuWL0BC43LHQr4=;
	h=To:Subject:From:Date:From;
	b=TlGrc1lK9/bjMTgxIujMzqXnQY4E8liR1py+a92fNPfXrnHPK1CaJNZ3IxAzxD2cK
	 dazdCwpXkkTmaj5A/WRS1QNGpsi+VcPbhpjh/4pG5bMZzyjMvVAAa6QxzrIV7SpOGw
	 yhAtp7qRQQCw3dXi/7Y8QqKUUVsEu5nDmsGoIPUU3gaoBvjKQKYVVqLme4kyIeHOre
	 cVXOeckUlRICz2/FbQIP8iLRqD3CEX0YI0EgQZX3pFjd6ly4kkQQrKUOOngpyF/q8j
	 9j1MJ1JSWNz5lDxo1ZVSt+ahYXKlPrwqIPEpp3jIU0KRBvGotzLa5hIHHKBnxdpObh
	 7LObrhfpWrIcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2F1C54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537863368.11423.17018237590330846462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4521aab0f4b8117d6f3e37440c12efca3da9c8aa703a33bea9b6a767a28f08
Date: Thu, 30 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785378633
