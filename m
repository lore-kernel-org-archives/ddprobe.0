Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBB664D
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719141743; cv=none; b=fqI77OUdxRDuGShtDRC18QbIXFekExfEsUIUZa6G7ySKfD8H7OFqK4Dt8NGlMCSExVp1eLNrTpijaQ+uJ33GXv8DpOzmpxQK2ctwOrSb+xqFWfgDkTQW7Af3pgTnuwUCz0VgXBpnIUiC5EAzo1wB80mpa0UZkAWNaPXWvSry8pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719141743; c=relaxed/simple;
	bh=/Pzm5nOZ3OC5BquSCVB63WCiXR8BPpwXyoqonS0FGio=;
	h=To:Subject:From:Message-Id:Date; b=Ya6n6hQrALkd3xW1Nq/l1mSsvHHb0cjQ91ufk6elvCUa27B3Wwm3p2rV60e1fEkmKihmozToOT+yb9zkMkFQ9+NXGnhlmuiu7vzMxXoAdsUiyy6DVTRKzckADtKHJyvJvUrYm7NbWD1aS7A0QTDTaGXokvJ/hQX6g1qRscI62AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQUo91Qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQUo91Qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7620C4AF07
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719141742;
	bh=/Pzm5nOZ3OC5BquSCVB63WCiXR8BPpwXyoqonS0FGio=;
	h=To:Subject:From:Date:From;
	b=fQUo91QnHY9b78IkFKNG6g9YQWt1Mt/E/zfdennrPyi4GeAjBvceqc9RTw8ahc7Eg
	 0xeYAIs2JB1Bf0jh2IPujod5dDQYysAEvi8cZPuNfkqROTElx5vN28ogQmQHmLM1cE
	 DbluoWHZzCqqzopYeV4+dcix198Dr6yTFGuvAS/mwBiFQvfm54YZzUQmz5sbiCtL8F
	 v1/eh8lu1mz+Nisfv9nnZyhsaYEaDBtAiYzEdyUby+qHXY0tKNtNgwbwe2W4U23F/4
	 M4Ug6KNpHsududGoENh7D+lPHxctIMDBCYCDqduKkhpTqbF8A8mjfkOQADUFNfqHyC
	 jex7qjLJaQE7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4127C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914174276.20315.483142449743335409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa55dcdb5fd0f68cedd2317438a517caaa04b3cc1aa4a0e2a0e26a79845f978
Date: Sun, 23 Jun 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719141742
