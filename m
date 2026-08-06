Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3416E3C7696
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786042234; cv=none; b=IFvbbyFyMWgUwd8fSpTIofvAATLq40r+smbPP0166nmSsIFbAAKUa/fr6VVT6v3apMsFPcAr2T+tmM29xqUld13xC21ZmZ8sChguyQpR+Wc8HwIDdTDr2nLirWbGzsytWZgARmlhtUwYqTAVZQTRHemJqXXz7o1BZ7EWRsAPL3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786042234; c=relaxed/simple;
	bh=4pTLRs+NBhAkQ5CLxNPTjPGiuyb/Ol4t1Q56e05VYOI=;
	h=To:Subject:From:Message-Id:Date; b=nNcWcwgtAM8QoD3Y4g6QmMGaU9ER90Zeitk7pqLWbQZk847EqYUtLuGpZmu7yYmlAf9cstusQbASg8ki5O+JwBsP9XJp8FLqbvoYxFGs6erIEKSrh7XI7kYlntI3WxoDZT4DhvZyOnrUFLMEzVuSZaTr9SEWzZdM0KzX/IHIBys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zuutf5rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zuutf5rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5D6C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786042233;
	bh=4pTLRs+NBhAkQ5CLxNPTjPGiuyb/Ol4t1Q56e05VYOI=;
	h=To:Subject:From:Date:From;
	b=Zuutf5rdPm9siIK7JEZ+jq2zAlqY6boxgNVuhNHm7wqpxI9xw+LH/A2u+PQu2sJ0O
	 1s0it0dxjlnq6TKwS8iAioyVH/AGdy8aejKFexyGmoMSkkdmaJ/pf3xsPd19EiWoQ+
	 BFEc+YQB59mJ2NyBeSuhX21w3dabqH66QNvKoR3Ewx5juDZOxjtw0OXlLy0hb6QMNM
	 GBXpslqi3VunBALNCqum/ahPlepwdXYEdtGHZWSge6Z+qSbAggW7Qz2WHJaML/89QL
	 5yiG6jIuP56IxUBCZ9AqWoWioSq7w9D3BmxT3szHvzPKm4EGvESMD/vF3KenFrlDpO
	 9tYGxtdzT74aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47FC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604223368.17573.18312712486224765229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a459e0d9127328d83f8e8d24e932170e412cbd14cafa9820414afd49317b53f2
Date: Thu, 06 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786042233
