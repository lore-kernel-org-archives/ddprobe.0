Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174BD1A58D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767968634; cv=none; b=QSQ062QzGTPe+Z6ZKbtOnzQzAMYUUtFenVTQD6mtk47Q5sl4eLU1E3+E1gTPBvdkAco1iFwKIimBQVuZsGeRBWf277YmL/emD/69IsO/Pi/3N1zAbE47shfUhKuaZoBiOSwhAomaqxemztymPDkg4DZBXhNeI6OFNJ5AQy0XZ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767968634; c=relaxed/simple;
	bh=2zK21rLM/fotGVC1QSROLCLfepQAK61uJcfZPvb4VpI=;
	h=To:Subject:From:Message-Id:Date; b=bsiHJc1hq4nvp+RW/k0C+mHD/kEdDFEW0PPlDDCU6T4YdRhYKcL0DVka4LZckFVgfavsqbA2YFpCXfZxsEXzlz10SqoWkIBEywApT6TS5ew/COF98hzgHCfvq7KLIx/nartMc8V3zvMG0lZFmTx+QWClnguic3zSbNW2L2RkMmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2uIgeI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2uIgeI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC2EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767968633;
	bh=2zK21rLM/fotGVC1QSROLCLfepQAK61uJcfZPvb4VpI=;
	h=To:Subject:From:Date:From;
	b=M2uIgeI2nAe7yFFY8pIno8q7Y/rQBMCw9bql+neojrK2s7mldtlL3Nfp/lXOnaH6B
	 3yJ5iknMvI8Kj7GM4fyPjps4hN/Ao1P+4RJ14nvX31bfVCN1YFD98MPcWLXiS4sfGr
	 QZmZ4ZWTJJ6xTpJKYmXBgfCHV3CceksIp2dxZ8fnfFKoWoZ+rFkGcdT76bHNUvSp5d
	 pBYusZ89AVmSLLqqtv9T8y6hJDe0vcsktvSk5HDF3mO/8gLg9WpR4mSYegvWsO5y1f
	 RrIZyuMcrQrjZnmQ0ZpDGplH6AAwfgxZDIM3dxtWUtBHIDAkayY/EQSsfJMbpjnEHz
	 tgb+iBQhfVpaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D7D1A638
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796863360.22864.8101219246944721084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69c0a595a3b383bc51d0b18ae6ff1b94a8897ad128ec80d5ce4e04609ebe82e
Date: Fri, 09 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767968633
