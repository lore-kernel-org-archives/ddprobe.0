Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425DC37FF46
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784747374; cv=none; b=X4w/BkMcvNvQFfKQejt7WlDd+yaMiKtcvhegVg6vYhHBzCVLSn26KUnvow++Ni6ZXntDsCJapCBmy8UmLBoElxgAzT2IJ3ty8djZvHIN1GGRMu/taiXEyGDb/XYCxVgxUgPLMQmDszLX1r6uyf5lQYnbA3cK1gjTHOO/5EeFuUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784747374; c=relaxed/simple;
	bh=193f0AsebtFOUNYmYT9psTFFafaTEf576kTICaWzmEs=;
	h=To:Subject:From:Message-Id:Date; b=qynWOpoMOpSGEyv1gBVTHf0vqqku/f83UebTWIBFxVDRuiiOwQpWnXzyCz6CWV//zLqyOIxHBtJtnhBPuUp6K9qdm+MpwXjq2ZYDsnaz5/aIheN7sZVfwj2Dv/wcIGi9TYrHxmqCXSwm0VBDF/CrC4lIMZGzqjmJ4/CeYmh1ApI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D09aYPXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D09aYPXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DFBC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784747373;
	bh=193f0AsebtFOUNYmYT9psTFFafaTEf576kTICaWzmEs=;
	h=To:Subject:From:Date:From;
	b=D09aYPXf+uUwhlJ0shWocVlFpQ9HN3gx8fzSxgAAyotgaTsKNi93DNfWde2dHKG7S
	 3FM0n5yjAdCIKOGCcljl873uzfWyrKWvpfs49+34p+pmzixg1YdOaLRJxGUVebEIYK
	 NGj98iEQYaxZxCrrC1EnNx9KrO/vKStEeE+c+o1c4eAzz6Qwb2Lov4OT5Qq35V8l7n
	 hRh1fSxBAG1hrobyDNr5CdvrJ4CI9zyoTOSGGxtpeVycMoqjU33zvxqFbqH1g9ldN6
	 tyF7nI5E2puDdN+Cjoq7PHRDCEpzdDl4RWYzSMR7oWn1LJNgxXAm2C+4DB2NauK6Gv
	 iKiSuitmfRhMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B023AC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 19:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474737368.30785.8623794043410706182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460a8c8fd27726eb33da7a45db7a70b4b71d1cf60c58605c4fbe2bf379788c91
Date: Wed, 22 Jul 2026 19:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784747373
