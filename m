Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA6725742F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779261034; cv=none; b=k1l5HAqewonjrWDLCBX18HSXjlM/VUDHwhpXI1inRjYRZv3bli3YBfKaczIG8kMsbFyLLTtsrg1aJeXKvPkrVfYazOUZWsedeoo7SpdqSFGJ0DaDTRJu2L9ouL8LPzyUzEsLLg4/b3hH026TS3EsQufSPs23Yg86BrR05UJr5gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779261034; c=relaxed/simple;
	bh=KB6AQDE8BfXpuAPW5AFDY8ZdM9tGNuAOwJXpg/hRODk=;
	h=To:Subject:From:Message-Id:Date; b=RgLpM+6VIsVJ4KWfydoiSTiF8bUrZAA1H1OyptQvNWPNabQnL+hBeiat+dWIODwF1xMJD3F0C6f7zmlKy60Uf0z7bpRENbHnubPo/UXOm85mTOvConl6IlYLy3KNUJX9IHMRW4RwdaCTUY03yBD85efBxmky0+AMslO77hF4GGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hr0RVuuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hr0RVuuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3757C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779261033;
	bh=KB6AQDE8BfXpuAPW5AFDY8ZdM9tGNuAOwJXpg/hRODk=;
	h=To:Subject:From:Date:From;
	b=hr0RVuuLiZBFtTyZ+IHswM4HQR4AojMlhPLRsScc1yAcsH/1fUXMJCE5izvN7eXK/
	 QWDq0wOxW4D1lIXuNU+fvIyb+w4PHf5ccwvw74anuqjEC/jwkOa2gvImIbMbTLY5fB
	 FJV/HKjkBoOI3k6ol5XVusMQQD/BvEHUCHcetMgXI3m9et2f86UYY8dVN359pP0UbC
	 QKazAKNBIJdYav5g7kVO8sEl0fg0Km3iQBxaFQxAkK3uxPMGPrtntCGVCUJdW7rY8v
	 lHO6t1VfrIlFNFRMlz8RGEQos+mRJGeLACDxlPFMhN+yZ/Tn7+SLRWwZG1hmOVGR7F
	 HHHrKqGBJ/wBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAEDCD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926103369.25770.13047246337442599444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cd12142ab0fc4908e749f9492290a9e8955458f03966e3e31957dcd8cc7a38
Date: Wed, 20 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779261033
