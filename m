Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DFB29A1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758407994; cv=none; b=VZrCg4nFPcn+5+5a1NfhmsAm/Dj6KCIxf84fO6gn9w3PThx2WV74YZUC6fIbN80mQ6vSahcytFbo8Agy6WhVU5V5XDT3ETTBeyzrJdDVcpI4RLSR8WjYbEfzr4rrWE0uEdrcYQSyFO4IbIGMgfI/dCXlxhCq3kURknmh1a0Av/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758407994; c=relaxed/simple;
	bh=Zs/wLsfraL5d0serFVpW1p0cnaA6/ZnpCo+ltOSTMWQ=;
	h=To:Subject:From:Message-Id:Date; b=fEG/rfhup63ykrF3eVPjCey+ZI9yuWMeXB4IMH69DTHfawVClq2zvSu2IlpEIW+fU8pV09BvD4AC6O4Dj1NYN6fWMlRhnxFewV2aL1liEnAZaomfAd5+HSmCtJ/Jr9r3cPIe4aO2iiKhqAf/h8bd5JMdLU5V+j5/ZWx1KF8CEgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHB7zSgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHB7zSgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A763BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758407993;
	bh=Zs/wLsfraL5d0serFVpW1p0cnaA6/ZnpCo+ltOSTMWQ=;
	h=To:Subject:From:Date:From;
	b=lHB7zSgInOotTBTjNA6unl+rOHHscygxY+Tkuj/RClidOzxo3B3fABAnrETjRumty
	 QjQskbYmkfKU9BoWPwenciaTCrupukjSNLlNTeltpwGMvEnE0tecaS3ngRvsuEX9Zp
	 gyyqE6/Mlh1L/My9twD7DuuOHph5+1Zd2/fyPpH+PtELjh8b7cg+WIRKSGNmzfx7US
	 b+kP/eyWJ+GuQ0envxgVKKgXoV6SVWp0VlXiNzhvmTOJERjNgLP5H+jqiM+X6pFSgB
	 x1TvhVim3dr/qx6/2/U2KIiO56IoTy1MIubV7wTZwjo5Fk6RLSQcguwutwBamTYFvG
	 ecRYbsLn3Vj0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94203CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840799357.4574.940565155066933160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364ba55a3ae01c1e9cf1bb26192376592a6b25be2b40b6b89f4a4f87b001bd1e
Date: Sat, 20 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758407993
