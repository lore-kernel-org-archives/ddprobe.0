Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227E22DBF78
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758026394; cv=none; b=RU/+SWLU+jCTaXlTopg87geqg1a2ggWa0rKwodrW9bF5Xy/Ck1KZSMfbDEjw1y3Ih+vk1rI/TeuU1hc4GfVwj5RajuWgS1/t7FG94z5FhoOaIwi7qRt9Jt4OIOSuo6ZihFleR4vMzyF4qj92L1FnLlfwWw2cbv+7az+TI+VWHmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758026394; c=relaxed/simple;
	bh=FcmbjUQjfGICGQW8s1PcWPhkDB1ctBfIws0/mGRWl5g=;
	h=To:Subject:From:Message-Id:Date; b=APIhjNXklgaz4040Z5i+smwPRANy9TTxoeiqv1vp3rYqcbg1lWsv6OqMlUQr9JliOnobRG/F61b3AgQTrBcbAc6LcBU/jHzNZqNBWP5q+JV17qfjnluA9roOrzqfoZf2QXtYaZkDpVWyWrzvsyYh3BeefwBNQ3GzO7sCnFg3V0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXM1ZWYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXM1ZWYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE7DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758026393;
	bh=FcmbjUQjfGICGQW8s1PcWPhkDB1ctBfIws0/mGRWl5g=;
	h=To:Subject:From:Date:From;
	b=CXM1ZWYhHEPwskHr6poVVIa+opQmNJNNuDLh6Ucf/5Paz2yX5MpCKnvPfIrf0zuNL
	 VJWeTqYyD2pmOcy8MTvu7RD2KrXPdBLuNwOIEpf/EHYbpFgjHpi2V1EIflroOAwwaG
	 1FfZcBSpfxWbL0G3p98KLFki7hMujiPKCy1elGTSmZugncVyaag5Y+MUQsYvRFw420
	 iPVJ22IruytatEO2vrEapJMgTSLqbHqAJNUDVSCVJ/VuFrh9EicPGePjck+5QeTRIf
	 Frenve+Ac/Or92foXpTklkgChx89gN+TfrlnXhJTJnTl0ZxX5Xsoute+9TYSz9+9mE
	 WMwar8cAjAt7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1ACAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175802639357.22522.7369465687990860580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b1d887072d670211e03930649e9345b66f8b7fefb73d6486417ad8d7b3b97c
Date: Tue, 16 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758026393
