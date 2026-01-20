Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED98B426EB2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768914834; cv=none; b=Mf5bZTAE8aDKpLmXXj72g3RdBxEQGGxmEPUKt4ofSjt5zkymVAwNo0hIeLbv8RL9jjN31etkIy4oJI5UNRsEPoKISbG5iUp/P6Rjbt5PwEsGgNKWhARJ4shpDdrhKWRMgLX2AKBXMEcJLvsdUc21bcNCMyQ6AJizk12zZPHRG70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768914834; c=relaxed/simple;
	bh=Q6EVO0ffJHNQ5olqHHkcU5nRngdK3gdhILGbbWzf1Rk=;
	h=To:Subject:From:Message-Id:Date; b=Al0Kw+ZwLPVkbvvxpyu3lPkGQbAOo0Kc4Ja9YVUEUeMWawEwxlpDTCAyYtLc9gDAYBfPwLEgPJKkUno6Kdw6RXa+8f3gdzi1vBJsSoCSqCq8fHB1OkPjDgSfs6O5tmMge0ZlCe0OKP2dvTpPuhlwHVLU4a4p0AW4c5w5obW1/dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUAtjC7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUAtjC7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E450C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768914833;
	bh=Q6EVO0ffJHNQ5olqHHkcU5nRngdK3gdhILGbbWzf1Rk=;
	h=To:Subject:From:Date:From;
	b=lUAtjC7w93OaxcRq9sCl2StsGFhkNhkOTLEL93A5uukMqoVvizv9/t2aFJlnn9wDR
	 ZtNJZoFus+G5s/1MLHhhVpgm/F1tB96tTjVeWZIBS9Rgxej3EmkdkRWzMU7lVBqGeA
	 KhlKssG9dM8cxE2As2KFt7V21xTBAThHPRyq1sif2QsbM3az+SBQ1ojJmjvWRqjQ6P
	 4T6+wgzpyTqi+FkRKyT36mB8EVZn4FtmtmmFK1vhMrc2YZndftqtcFaRH3kLan+gNT
	 4UXxtNzLBAlyB8y1tDpW+NHrXMVHZhO4zhNvlc1AC4vN4ntZB9uTVsyN8V8Ik8aHT6
	 ZsuXgw7Wv9WQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA22D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891483358.7538.1438918633132692676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e932490d9abcc17c46422fbc71e9d27ad3da55f55ef02984637cfd6fa525a35
Date: Tue, 20 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768914833
