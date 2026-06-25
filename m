Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2D625771
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782419254; cv=none; b=nCkkQgF/XjO27UQRPL9VIk7uOxID3jrN+4sg0HZV4GG+IweR1uOovupJiZHgxaT1Rj4MEO1xGxY5puA7+0FPuTLluRiCuctGnYapApuN7DDvRQbv9Yiw57LJGn0Jztd3G22C0AwdLzTGSb6t/oKxr7iadBg2s9ZV02o+woRKpHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782419254; c=relaxed/simple;
	bh=qcd3sIbpTSt8kzIEkm6eWAuRU7Ymg9k8gJwrYb2XW5o=;
	h=To:Subject:From:Message-Id:Date; b=R0GFDRF3cIS+la9JVvwY8xDBfd6EfdP2xEppZVp35gfUdnMZ5no+EkzdUVd1IEisWtuB8+zzHRaYW1HZb/79YIvuzyEzgeeFjaJ6B16wJnWf+54LttOUgsnxKqR7nczG5of7x0XYiFK6MgzcT+7EsLZNIS6G+fARQwp4mgRqWLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0Xa4MnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0Xa4MnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F823C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782419254;
	bh=qcd3sIbpTSt8kzIEkm6eWAuRU7Ymg9k8gJwrYb2XW5o=;
	h=To:Subject:From:Date:From;
	b=I0Xa4MnW9xaSDZZfNho2KWaVBX8hX/YO5E8HoPZfBMOMUwH+c4cZ1dyNcmDKiV/09
	 zcjlpLavfz68alj9zG9pGhowaUZjvnf1NVSbc4T1Nmc1P3wBBJxGiLqoouCnArf9pX
	 gNTYrW5GbBoOqs8iSh9e7vnTdmZnsHSd60IFV9KltT3277MOJJBzMMIfyEe9K94t1a
	 O0T9XGbghGoA7rEtdF8Vaz0i73DE7g49yHD+DfpM2wxrRaU9hS1EtSuIOu/OBgMuBj
	 trJj4F79Ts0Lv55i83CW2yxe8QQ0TcVcmLl18bmIHVbXB6ClMZIUCyjLtZJHW4778A
	 EDnCVGrtzPbSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA397CDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241925372.21977.3519955332273082680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635d8f8f1eecb6e45c4f4e2908c0093f2518a84d9dfa5da750dbc4012bc2ea2e
Date: Thu, 25 Jun 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782419253
