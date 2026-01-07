Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0933526ED5C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773634; cv=none; b=fVBKn+CsyMhaqLGHgG8RrRIA+5mgSkqyPhTUjV30HbujPi6QmVA62p/LRml1BfzdtI7NGBfhQ/NGa6yabNDJ5R/uDaOVPMySUZjwWqkEMUsv89IBK/5DY46Ixj/va2Yy3/+Ac/IZpjdCMPGIYkDFfuVcq11lojJW06WhDKcw1rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773634; c=relaxed/simple;
	bh=95aSZVA6wyLVv01sasFaqwlgz5mqLSIzo+s30fqE4UA=;
	h=To:Subject:From:Message-Id:Date; b=lBiPBIW35BLVO5aQWJK5IdmzhetYNXnALMCYtZf0tlmX9emPgqN4juZXMwoATTHxi95XVyjg0WptyxsO/iEGA/jgTmacPC3MdaAXeUMyQssOHxaQUzKP5k2ltA1XLy2IHUGOP+ZkLtbZc/5QcbHiih0vstP9Eje+MT03d8Z6L3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aItfoU1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aItfoU1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC33C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767773633;
	bh=95aSZVA6wyLVv01sasFaqwlgz5mqLSIzo+s30fqE4UA=;
	h=To:Subject:From:Date:From;
	b=aItfoU1wEGh4CEDYv5qRWwD7ljUuaoVVjcBjRhoYRO8flHrRszyXb28CsInuBEGzI
	 6DK2Ea2ODQn8qHVdkYIrSy1K21uclnWVKjt8Gj9OI0mMKeSX0nYIQwv3YKSCzoOu1P
	 vbBGXVUyEpo0EVJ5L5g6XSs2MbP5lScQtC1ugpGQ1UftCvCG/U5Fw0zrEYdIrjngbN
	 yfSm08ZxoT+pzzPLCVVmU1kBVbtmdzEDdG1g6uKBQ9zPLJWJY6UsM0K1PIvSzDeewb
	 3Tz6yfEpLHhcbQ0II4ACUaI8BH/v6/6CvvLee/xO0pzNSCLFJKMx9dim5uCSKORsRa
	 DPcfJblJJI81Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91394CF6BFB
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777363358.12034.17844310197081525003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f29349ec4704de27873654d16cef3b4cce23b55b6869a8bf4f846ba3874bcd
Date: Wed, 07 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767773633
