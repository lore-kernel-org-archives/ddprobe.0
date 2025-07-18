Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E19DA923
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752883194; cv=none; b=KEMH79CDafhvklgrv+LOtwz6kEOz0dTjwbP1v5LLh9HAajpUuMaZuJ4e1Q6/fN8rxUh475/Ovwa5tgAz8ExM3wgl5bOlYKnGD2PYEHmUy17AdfDiE5Hy3C1SC3TMA6k9QRgu6/6jQCALXEebNB7W816vbec+vfh2l/HLDm4q6PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752883194; c=relaxed/simple;
	bh=v2p3ZpAJv9pr8+4yXoRn1xjRNx+dyapu33eLtJp/kiU=;
	h=To:Subject:From:Message-Id:Date; b=OjIh0mbxneizij8nVQPLotGfx7iMvf/C92o/l5+UTlD4TTAWCe+UEPgesEP/v1CXoAhmLDg31blq9M4+u5Erleu5ZJUF+dGl0m2T6SgcpKC1PLSq/MMTGPJpazX3thWWzX4sC/bK6aTDseUtMeYFApDdPp62czVZ7fjRWM8w7bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuT/x7tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuT/x7tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9557C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752883193;
	bh=v2p3ZpAJv9pr8+4yXoRn1xjRNx+dyapu33eLtJp/kiU=;
	h=To:Subject:From:Date:From;
	b=ZuT/x7txkdz09Mu9UuCffwhgR0GlUXyJvrzZZqsMjuLL0YjaIry5ezBhJSuhmW1Pm
	 KDs5/hp+flESy/9uNUhX0hnwyD1LSPLiOs+6U9dPGoEpuPmKi7mxx7FcDgs/RtvIrU
	 ozDrxXot7DqW2tKKShwHwgO5A/SOW3K0SE2LXeWTO6Ysr33TToH/Q01D7NkjLePDqw
	 P7h/ChBGgzGpJG6ECin9uXDgJAYRnwiCDYG1dRTEs1MbzZHUeZHhag2T/0ypGUO0ip
	 jv1+TBPQ0C8Kx4CapPkfOxMRB9VrxPHYdd7CZZA8JKirgXZcmC35RHhTqdUNr1uB5l
	 R/6zFIajn2YIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C5C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288319358.22732.10402502355925013872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed030d95b7b68076c1d5cc40dc1e0b1d3797be63b7513748ab389c97d4dba8ad
Date: Fri, 18 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752883193
