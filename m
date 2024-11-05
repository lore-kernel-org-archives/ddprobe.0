Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B1870837
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730796354; cv=none; b=lM2RwBfeqp+D0rT1m3qHDS0oNmNhUkyvnJydTsWdyKGNYHx2Agg4XheZ9cKZfThHJjyQgR/Ol74Mh8IByiCetoSaOB2gj0tjkbIpRnNkfOD7TuzicsL0Op2cHx5bycSLg8p2J6G17Ttdv/Aq63w8QYCMXYVPMecD/AFH4Tc6dq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730796354; c=relaxed/simple;
	bh=wx0Y+8Q4pCCYGDDj2L76IlQ9zQmJgVTx2pLSXg/S+ug=;
	h=To:Subject:From:Message-Id:Date; b=l4lE2TET58z4x9sB2VMVT0NWVv9ufTI6Wt/BZJPZfxWjLYlU5bMh5+C+aPue+1pawcsAbdM95wgNkeMg7Tzs5wpeZSIs/gVp4klCiKEQFDpnDyHKwIE2NEwkSycZAPJzbstagRPx0/oemmRE4wxpA/JNBi6Zc8CcGChWKyFqXaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvstzhMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvstzhMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F4AC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730796353;
	bh=wx0Y+8Q4pCCYGDDj2L76IlQ9zQmJgVTx2pLSXg/S+ug=;
	h=To:Subject:From:Date:From;
	b=BvstzhMt7uBtSIh18AR/TUrthgLOZx4waVnPr4to+7lDLCd8J9dZVu7Uspsg0N3VE
	 cf9NSQaP/AZkyY+87mFxQucUjaRz4ZnG+qEVaftB33O50vDojTHj98SoEhJ/trxUY6
	 o34SBX3AZ55JjiooIh5q7VHwErcHz4KQiDqIQ+Y/i8vErgLuTpwiwUoIEm+MukwnLQ
	 4ot/z601Q3aTAL7MwxJNcqY6e9wxtGe/5NgvXE1SQCoxHQV5sgzc/Tir0IHpgS6Qw9
	 fkTe8jiHaAb2t9s+xqxtUI6t9GGTLlPBNhGw1yO+nJYWyjKlggUSWAY+HXIktr5lhs
	 /ao23BZpiylFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936F7D1266B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079635359.15654.657122483703166766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c464bfc5c44d9bfb671f0a6c0d75604ef81c249cea338cb2296feb1ec2a3fc52
Date: Tue, 05 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730796353
