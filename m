Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB7C13AA2D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776221254; cv=none; b=C9TIIlRFgh1jMWFc3F8WqIjFlYWYXE9T5pJmsvw932xvmsDfks9RVjiMvmpDbYHH/ZkuJmxw35WJlq8KRuwTQ9iFFxBgzkEPw555+JECMGokYuzNIW1/eNRK/6JLxwdrWaNUL7s2OOVzwSJg3S0UCZGrIk9+1JKvy8DIs6xJp3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776221254; c=relaxed/simple;
	bh=VVATELgQO/bPXWWaw5ytUq+zkjLisk/pFj/i20861tg=;
	h=To:Subject:From:Message-Id:Date; b=m91CgZ2C5uU2GFMEbX/4ImL9B1e8ERldk0cAHR8Bz4cJ7mkDBK5kOBGEf3rvov467vDSfL/Si4CUgywWtV9FsSCDqUmZ2UV2SHtr8SauPbIioCvC5euR5MZTpJG6nx3EOW5V4z0rVewx/FtxpMubJN+iP2qXCbTRYgE6xDij8AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgGGvseY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgGGvseY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C59C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776221253;
	bh=VVATELgQO/bPXWWaw5ytUq+zkjLisk/pFj/i20861tg=;
	h=To:Subject:From:Date:From;
	b=DgGGvseY+K2u9T1QeiqY/wbUhO83E4pP/DTwbBoZrIy6e09zvqSoxMKTY0TsXGs6o
	 Zv/PnKPet/CxEj51biN3m9EMB1kxZGfU7Ek6Ct25M6B2Pz3eLIDixAdYRImdh3UGTw
	 UGEVyQsb+aWUJ00N1njS6/I5Tmeb8sZHuz0pa1P1ntYXsCPdMiDVP+tPso0ufyjA4M
	 77QeoqWxmI0t+yQIsG6ZOpRKoV2a2o0LTpGJ3TUDVfrrbaRZG79stNwEJmPgF3Jiii
	 DdorO4LRU1WbMa7dT3gi5eZZAPZ2Ck31w7lt4LfxRr14Il8rtQbN+On1PodjRq9meU
	 GFN2mQ1TuGq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99E7F9D0CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622125368.22865.3266682743863342572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6aa50654bbc257f8f7e49ab0fecf4a4e7e11f8a897497262763873b8581fc1e
Date: Wed, 15 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776221253
