Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467C93AC0F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773215094; cv=none; b=csqwQ5KU8xV07fuN2dkwh0DPn4VdJnivu7GyTkuWk/VHH5kqyri7lmctL9ihl7/Dcwh0+1eTmWDdiKbpa2AgY/jU5t3aBOxcfo5RfoLAuxdA3IzK+r4ADb5W4U++Ue2Wdaqua/uSP2jX/ngjGEVkfLA3h657Z4173ZtdjxBiZyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773215094; c=relaxed/simple;
	bh=fqjWFPBXVrMWlgj1fD8zuGPKltycuHcX+RU/mTiNN1g=;
	h=To:Subject:From:Message-Id:Date; b=TAfbKDzyjfOAlGCuqxsAd+Zno592hUFHvbnwcjY0bjhaMU9lhJ+PmrHDZwwsGb1dRM8P75T1H1FABcjZf5kPlYzeRUQfO9eRa4/GyRLbva/SadcsZAxpBgzvvCxE6BEiPL7oZkdGaCOgM5912YdOvmiETeXj07A8GM+rIdJbfX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWOOaFva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWOOaFva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5788C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773215093;
	bh=fqjWFPBXVrMWlgj1fD8zuGPKltycuHcX+RU/mTiNN1g=;
	h=To:Subject:From:Date:From;
	b=bWOOaFvaoDdAur3cjv7pixmp2/2Qpp8Ev9i1+zttVxggAyyo0QWHFq5hiwjkgKmIj
	 hkjyDMveCyaSmXrP7CwZnsRrks/FN7ouFf0WtTrr23vnV6dNZVXLUKV/5aXQI4HRRu
	 5HJLk5HzTA1pgdAtu4OutzHZpn74E1UjPtHTZCbcgdmho5+tfmiOuAl6psE/uolrWh
	 ka44zXrJ/pO64ftf4nyIUftBvZOZ6jQuQ7PeBsCaPHaxcixRPPahjmmKxqNTq4u3Xs
	 3togO6JRRWb+2BoOwdN0YWd/bME/GwZa/wwISdgcF5ZpmNUsd4QXjdXyFlf6GRP0VO
	 XibNgtwIdvwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C6FD064E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321509358.1215.9015233458152897724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a54a900f4fa622a58bb684f892f82809fc63e3e58d98364282a06873e53c361
Date: Wed, 11 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773215093
