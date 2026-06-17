Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553B5402457
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781703394; cv=none; b=mGqqy1BIx7ttZaYKYzndMrRSx5rs/TYAmKBujDHvHI7qG8hR45htqkGPrsF1z+aRSmsKVo6hGq2THktSqMtekWTsamGmifiEq2oARtmi+xsH6HCcWq9JKrS6s/5oAM8KlXsWyACSqB6zP511qFZswGZ2mq20X07XTBlOe/OOlw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781703394; c=relaxed/simple;
	bh=Smfi5MK18D4V10iS2XMgZr0jM85tqsFCCfk7lYaf66I=;
	h=To:Subject:From:Message-Id:Date; b=unEVbCmawcNm5Jkn28Pj4onV4+QfviNOXOBbfrH/v8Y9YfBoNugKfR29pOth/hgSfuJRfGI4/ZLjDEeuEdC0IqKjMGfqLqmOP5L+gc7nDWdmDFXGbD36Ju8YPRrNDrqUYyM+vx0fHa8dkBDQkt/nMbjp27IBgxXOtwDaND6njqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APw2/lGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APw2/lGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1112C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781703394;
	bh=Smfi5MK18D4V10iS2XMgZr0jM85tqsFCCfk7lYaf66I=;
	h=To:Subject:From:Date:From;
	b=APw2/lGcLVxefNHm/KMAWE6TbCbWbkN1XEEXYw93TK6HIqdpPQMwMp/8mxqhASK1i
	 AftcKPXc5fM9H100KQgh2ClSN4eyHCXLQ6SSReBSoqGYg5v24CkSnO6fDRgLip0Y7m
	 Wt10y10tB2RYe5ZWiQzZNWA0zTxnr/zzmZQ9Qb7F+E4dTuMGIe/DPt4SJ/eW/O3euM
	 rpHcD3l/UmW6GafDRd8KWc6viyyFYwfbseDMTM0iY2WJWQznkMdvCL4aVqWBt4ghDT
	 c4+l0EK7CInND+ikTkt8YmsyJB2xaiewGSwEQRtrz0mVWOhUxBqDiNOibuJbbb6++j
	 oluX/FHTyuWDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6514CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170339380.4192.10887251067594483920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26f0585ab6cd694c7ec126117ce934033714eb14974158aaaa8aac423533291
Date: Wed, 17 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781703393
