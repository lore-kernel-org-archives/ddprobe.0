Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1753027473
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732077354; cv=none; b=L8brFt7LVVdyeD6y394pLo/noI+SJFA8fyhYSdfm0tLuAH4cpWznSg4wFXggZRsCxKOZX+Mx9yoTamP9qCuIo/ksDQLm7HPEhWjlGyXVwOdCRKymzI7Zomi6XoHpsF0JpV63fmldQ8qfkQUSYX0PNkiSdco+jbWT2ZJiqxvrESc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732077354; c=relaxed/simple;
	bh=Ay8SAN4F4EMBEgntJzESUuEmmQgzH+ffsUMbGYhWYyU=;
	h=To:Subject:From:Message-Id:Date; b=sw5nso2bxAj63KnC6UYgjEa9Q+uvIQpvFeNGJrWcXGiDqTMP9I4pn5M8LYprOG/FkspnM6fTSABu0NRbyTj0/S25Bk04NT4XkrDf5nOqqfUZ+NFRJ/A87X0pCa0KMty5VtssmHL2btqE0mu2rL6H6+wcj+vvqTbxvt2qSK6vwMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euGG9rIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euGG9rIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EC4C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732077353;
	bh=Ay8SAN4F4EMBEgntJzESUuEmmQgzH+ffsUMbGYhWYyU=;
	h=To:Subject:From:Date:From;
	b=euGG9rISVVUFC32j741DLH6NU83qn3yecgf9XIZ0Xw1JZEC1gU+E1ONzunDfxkIWd
	 tAyO4i8qaC3umt7L21Cp13anw/eh/3elclTh0CD7hAri48G+5s8SeEkLiWlYRyH81G
	 fVuYHxBPKYFBNv3RLC2HUTJtFlg6BFMHkSZMwlxPNO56QQHpQAsUm5hMztdic/6Tgm
	 gzDR1fvr7cktEtB9nxHnkHA7i9XkRM/sLAqCdh6WZk/3zRXiPgzBntDia8NXg/+iJU
	 4eKulRVwd2LnKgN2G6SLZM6aOD0++R+zQkpomY9y77e753kiw0mmoZUwsgTp4ywdB7
	 n/sb/x3YDnY+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABED6E2AF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207735360.23830.13734311184231216759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9564afaafd5f5bcf83dfd7238eb4ba12f24d8e1c547d9c09ec0bee4c0f43970
Date: Wed, 20 Nov 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732077353
