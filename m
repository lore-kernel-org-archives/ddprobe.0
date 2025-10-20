Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0632E22B4
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760995194; cv=none; b=Q1M+D/I3cbXY/s3+bzHpojLeJv4fl1mR4KhhX+1VQaiBNmROtcJfNGcCu6ZkWl5s8JoEHP7n8NRkhwOvbA4dfdquSqt+u7gzetAZF3vM4aH9WA/HS/Dcn2KvYIPs8sM3axmJaqEI34vK7S2lr7bGQL8si1jFVB5QiV5zKSZ0d4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760995194; c=relaxed/simple;
	bh=gHBGe0SPphLXO8G0aGTsCzFmkMUZA6Noj+1rApoMrOM=;
	h=To:Subject:From:Message-Id:Date; b=irEAFLADBhDdMQ3iSCofm6BWg+KADLg28N4OAYkFLHhrNu72Qi7fewfgFAtB8P6pAGQIQvHw2Sic5EV5Alf4GexHT5auNNvNUG5OcgRqfhrfuxo7vasJ++BWWk2ZDTmdb4HaYUI/GKRpg8cdCCZjSSzmTeYjhieBAbLzj+35isY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJFi/CTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJFi/CTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BAFC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760995193;
	bh=gHBGe0SPphLXO8G0aGTsCzFmkMUZA6Noj+1rApoMrOM=;
	h=To:Subject:From:Date:From;
	b=fJFi/CTMbiTBUlE5M6D2FwquYc1Byol0o7BD7FOQTtu6WDu5qCfKusfnMb9ZzbLl+
	 BVqaZ0ttj+5MG0QfoIGfB5zSgW4WBCTaIHCQ8jHZYnBdBFpubHbnwz4g4fmiWfX2u4
	 ZaQbITPusLiIfVrIDLul9ho63yBYN2XS7FbTkDivqVirosJVOWcqMtuNszks6OtMuM
	 sFzG9b0g7Vcp2MACwkqtDL7EyHIcZcdjVWk/o4v1rAIOvnhTQScMjkqRJzL8e8jgmJ
	 TkBIo8uB2c1P+exdTt1PXlpk8te9hTeXtKKSbn4Awa17oKlrfuL0LxW3E84rZebhOB
	 j5Ol9Qt4Fpkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7BCCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099519359.18638.5204044287034182713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0e86a5589194943af726f9effae29bc0a5392bf48daafad3e5045a18768667
Date: Mon, 20 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760995193
