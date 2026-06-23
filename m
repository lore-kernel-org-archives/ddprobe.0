Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4327A7262E
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782186394; cv=none; b=dAxFzDfoy+M2ccEhV2Cv48lk/A5nF+fMW5oNFeHlIjDbehcUuB9HkVHSH0a3I6gsZVS4cuhdW37dVKqIkk7hIQzfsyWZz01tIqX1eRzFF90ozfrPCh/AyR6YUhMqPPh0QAjFzsyZVYvOivxApyt63tWSS45OeXXjnpf4dsfCRGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782186394; c=relaxed/simple;
	bh=hx+iSA9sLME36Usajf47QWZU/ELpXXDTgtuFXnU/kEM=;
	h=To:Subject:From:Message-Id:Date; b=i6mthUrbhI+/Pq/rb20I0VaLj4/XrPQOLs/YBFHkByZnC9itHb1ySVWpbc+AJ9aEKpA8k8uyImoxi4xxOV36khGvNVWC9jPc1usTyRvrwYPuDyAS5HKAN30b5CPN6kFhkiuDRsF6veHduCqxZ7ttKNpZBXXzPkE2xjMDXnMZjQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sR0TmM8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR0TmM8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA94FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782186393;
	bh=hx+iSA9sLME36Usajf47QWZU/ELpXXDTgtuFXnU/kEM=;
	h=To:Subject:From:Date:From;
	b=sR0TmM8JCX0NVexjIWCGy2DOTAAxrsoJG6nopgwoh7MoZ/mHEJ34nZS8mw8eXu0dB
	 De1HqxH7v7xF1EvoTer3P6GqQSoASn0gVjGwb+TEyMNZwMel0QgDtkDDSG7E/Ut5tj
	 XGM36X8iAOX9AKyyPIBC7kNeRK3HnOr7Lts/y0tcDWhWbw9lHSPdM/ttcOLR4n331f
	 YDUmI0LMZZjqDSgkY3N+Sc/OW+GIDXPefUvT4gLNhJGz+pGF4xcefRYxW+sNVuKQb0
	 QzMMWXAFbFGs6VCPaS4gLAdK1XbbVtOk6rTrBtnst6+zZ1TuC8VbHl54BXx9y7iizM
	 WXSpC5zyqw7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF999CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218639368.13428.15605950955088006456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b5d986f7fdff5483527d3a2b0864e19818fba95b8a7f2fab96095d7c20da71
Date: Tue, 23 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782186393
