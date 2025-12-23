Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA8C18EB0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766467434; cv=none; b=YcoeiOJyLXy+/qvKs6ZacxUXOQJuC0TWH58GAW55lYbyM8rUrQCrHKb7BK5Ps4uTK4x1JZ93JxjHcGSzQvJ6Ej9kZc405h5YkboNnIMtch62Y8KS6LPwsIKT88SpqasG2WjngVmG1jPbczCWVXSK0PJmUL9J58Di3X3of9AAlZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766467434; c=relaxed/simple;
	bh=tQr+DN+C7oINUgH/Ubk7fPptiy1wouvrD/XH4LRMr9Q=;
	h=To:Subject:From:Message-Id:Date; b=DntU4qA7FS8OXSZKUibkTj6jMXq53xKbaZQdg9iPSrgncINxtXXWx1H4YeN3Y6XVms6Mcxu1KQ9IHKqPbg/Qb2xPpU3YWNB3TdVZ0PeAd0kJqq8qYDBsBIG+avotDzdG9WuPktp+iDX23LvznmuAY7fWrZL2xd5xEFw5oCU5QpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQSm3Sem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQSm3Sem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE94C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766467433;
	bh=tQr+DN+C7oINUgH/Ubk7fPptiy1wouvrD/XH4LRMr9Q=;
	h=To:Subject:From:Date:From;
	b=fQSm3SemxpABCEfuN7ujva/VdybXAMrmuK8704ztRxLSgYJrqDK/LuCL/NQcdTaI6
	 ju1ydwKTJsw5360UMWVIsSEi7LoX9n1hjUaKtrwv8RHBE+T9ebnODxpRXb16jfp+hK
	 cOOvnNnZ12155JQ4KAiLA4t1TEwobsx8DNoM2h9bxpP/0g1FRaOg6SFnAXmjnCAQzn
	 mdrzu/4DOc39m0jasDk0mYAHCtwTfgLFTJVE0cELOqurq0YPF89McSv8ulF2RXHIiF
	 n0pUqnfIdJI4quc4POH20KlNaIAERLpCGMdERpJgUMab16RwwecAKbEntajLolOwFM
	 l1K++5DDdUolg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E990E6B275
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646743357.13408.4735641503333538548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7938530eed8b03f0e438a0f3906fe4d4f349ea205c33747c26e57e1fd324a6eb
Date: Tue, 23 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766467433
