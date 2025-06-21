Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BD630E85D
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750549194; cv=none; b=XeazwfykjDX0A3+2syfmgEYFRbIjzGk27NI3s/TsF/yE5NL2+kh4wi1x0CE64G3PmokQZCgL4+QtjN3h1CsbGyGUzuCV2zvs00vXmebWvqQNv67rZ4oeiRyhzXhaknxyGRasoMuiRdFc0ozds4cc+AQ7pZC3YKKVQl+DQu7rNpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750549194; c=relaxed/simple;
	bh=mQ9gdGu6hfJ1WyohpzPOwDu15WNJkRtP0RYKo+1ly6I=;
	h=To:Subject:From:Message-Id:Date; b=aiG8QK2wzZ6/WpHFl7WZw2M6WIdESAhrhO8w0PHRiKVe1y7SrdGqL08Af1MH01dkVisSGBsJKtuwUlQCvMpd5ia6jSmevb1pQAgjFF7+kn7Df78ttRAn81qDeg5kkZZmbCBQW/DPbeMLESHp+PJPbSgCWz8tJwi1OUBQRl+hLgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIcP0+M1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIcP0+M1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F6EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750549193;
	bh=mQ9gdGu6hfJ1WyohpzPOwDu15WNJkRtP0RYKo+1ly6I=;
	h=To:Subject:From:Date:From;
	b=RIcP0+M1jEoIVqaSj54oDvE0NYBBAcH0Agc6u+47kKokhmqaqRKtCd2nnxe2jEf6U
	 p99vVyFESz+Nu4EoqZjcATkt8gDwRIcs0DtLXcK+c8djOZH91Int8RSBKN2hvLEjWk
	 Z1GGYbRHhybj4OOWePf/ikA95AtcnywbueiMkGTiH1KN5Gs+lXDbtmER7u+efy6ptY
	 UCr3UqS5/qmTUFccb5pT3YNDjd/IO67Ot158teFyVZYADKky1dYPoWt8FnS5sTcvsX
	 bDOVKZ2dgX/hg9ELZP/nOWkWfNNgYtN8MqS/4dCiJOZUAywcJH4Ag8+YTb9+Q2oWyd
	 nKJaNA3Ua6eWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226DC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054919357.23832.14635584384688021185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994609779efb9e16ca6edfad4e953826d3557c8bf8f5bed08bafadc165c74113
Date: Sat, 21 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750549193
