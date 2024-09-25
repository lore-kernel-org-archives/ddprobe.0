Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C75E15990E
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727255154; cv=none; b=oKV/zpw7k6gWMS0GCXE90inC1ur7bQkiRVqcGm4uwDxsz/25LXKX3DsF3TAvYRbkXHB191cPOz1negIQidnnY7HOhe6K6N3b5/U7IrIeLLWsFDXeKFTwCtqre4TEaiUvjNYvc97LXmeDAGVFkceLILbnlG28K4kF/f/2dck/IrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727255154; c=relaxed/simple;
	bh=tqucfhZv2oQ/rHB1E6+1zFWkVbXbXHwGZ2+UyunMVMc=;
	h=To:Subject:From:Message-Id:Date; b=SikWh/nuIVJNgPT6S2jur551GIsnfTd8PNLL5GfEGZz4nqKeda4OzTPIx58f8WdguMLxRlT8clBfBJoRXHbjzNMYXvR7p0ra/pwJOU4GZ3uLQ6TPEslOcsUsP58EvSLVU/uq7prBFHn3ZGLWxaHTFcdNBWITEVwE9LgJMnPdjAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTzjW3ED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTzjW3ED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B6BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727255153;
	bh=tqucfhZv2oQ/rHB1E6+1zFWkVbXbXHwGZ2+UyunMVMc=;
	h=To:Subject:From:Date:From;
	b=ZTzjW3EDLkElAcc/wDJ+sQ4Q8Nq/8dgpbuKFFHfZ4AZBCoSE2spJ1+6qmMbsqJniE
	 rQoq1UKSwBkpP0H4ruQbVSd7awR4EvOq/0Tu5ogpc+FA2ulKYTGTA0ezvF5zXY9FcM
	 WQbuw+XjXVk27t+24BYutYwCBvlvdzagmVASDk17QrwS6znnIBaIFgThHQu/GAS4Ud
	 93Ap2JE/40TjaBCQrLMObCFjJ/ymgIq6WvD3tSYVbJtxHf85S1Wb6aUci9mO1+XFL4
	 WYc4WgwGuJnZRUJW+FXzROKXkM3VzjKGgOhG/ig06zPS+NRJ7TNGoyTpKl9jvENm1H
	 tZdOEUTak/7YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962FCC369B0
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172725515360.32764.9393766553338698144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950eddb6c43f7656f72f3a0fa6f2cec215849a60799109c22d3f055696ec3d00
Date: Wed, 25 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727255153
