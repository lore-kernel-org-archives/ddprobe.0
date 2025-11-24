Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285CFC8CE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763952114; cv=none; b=ojUdnXTYAVwzRuOIZ8SUzb4raXhY4e4gDjR/HvHVbYHqx1zWeOeh3Ltm4ceaCG762eiBa8DtUh48n2F4pSA04sqBfvx5eyj4/XvY0juWXT9+kFFxqu9N+6LHR2OMV1n+suZrP4vCop2L/a2wJqIiEdB86KlsvFR/n5/WCtlvpEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763952114; c=relaxed/simple;
	bh=qufwMkiHIppJM4J1KVVhusDban63kud/KlgN1/OuqUo=;
	h=To:Subject:From:Message-Id:Date; b=T5Jk06OHDY2GYT6ZfAZBMgWwLmkM+IMj1Psswnv3/FMbJe3YTIHyQYcfAWGsBwTW9b0ODFInOWpLPQqCoTdocWfMbIDnNFYx69LOuWBb0ANi8MgX6ZrrmCWxX8SP5u1ZzpXto/KOI/X51pKjRVwUWGpB/BZz5PoVUgJuwT8NdVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZYKhIbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZYKhIbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C0FC113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763952113;
	bh=qufwMkiHIppJM4J1KVVhusDban63kud/KlgN1/OuqUo=;
	h=To:Subject:From:Date:From;
	b=PZYKhIbICqrhHgy76qmgEqoVbXoyB4RGEujaE/dJLLN//OKwucUDcr+oSFgRwwt3s
	 iOQ8xDt/gkBld2TQykLSplteqrf8cme9do5XPQyxEbkSSgPJhPNfntv9Pycz6EizLV
	 oMEMWFEgecxaICYP3bnHu2rkmr0RmB04iGkej9C+yFtqeeRxtokKTu90RlZ4WPYKt8
	 a/VZhG/EMGFxRH1B3RGLjG/YHksUqx/63d8QOWnuOaUIoTGFH/NVlLtHu9GD7URkgr
	 Y/GFo1Ar9arkGfkr8R8SxtKt3tCpYa6Nw66dyCcV5unTnqE1XlxsR6D37aAPzIcamA
	 FW9ErjyB6KEDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985C4CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395211358.5990.7965695205224503727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad31559bc599a3cfb60b26c054458b658086066b71d7f44c34bad913be1fd90b
Date: Mon, 24 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763952113
