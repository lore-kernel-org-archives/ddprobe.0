Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5096E165EE2
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728294354; cv=none; b=W2Uo4p2z3d39kKbtFWP9KOsz4H+O9xV3SN2HIhehm9RRgp/DqcDzb5VY7O1bJQJpFToBQhexlt7iy3NVsk8DtngWtwDoPTH227kDYRViyeE7QpD0+ofpHbVubRtWPuBEAxjp0QoAMwcACjstf0TMNXdY6wkXMsW6Sq6ImyvLT3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728294354; c=relaxed/simple;
	bh=TLfdCquOKg0S2WErq3cV1i3LyCguy9pGlN0ZiU5qgCw=;
	h=To:Subject:From:Message-Id:Date; b=EGrEijCG7vEOcIsPeld1O02Lde2pJZ2R6Qn9Un+7NnmFBI7mgsoeHvCVAT+kKgJ9hV727vzXJOXueIghcOFGULLtSSrGmHUwcK321LutRoeTz417ChnYGm3X1TVOWInH+EYravhiPoHvKRv8OJTdECKT2oNei1F/VJDgjrQ217s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdH96MKP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdH96MKP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F99C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728294353;
	bh=TLfdCquOKg0S2WErq3cV1i3LyCguy9pGlN0ZiU5qgCw=;
	h=To:Subject:From:Date:From;
	b=IdH96MKPsKvIMoiyVzl2jnoOZOWFy/b+BYslUcn8qY4S6QKKn5JVo08/e0TW5xe98
	 tFvKsPEkaH8Kx2yZ/Rut1xGH/H3c79CgBiSjHlzN2tI4swxs3P95tk0OQnKJuKyskC
	 n0KvmyvwRj8tydO0O/KAwjVZD4+nQ6Qi8dsSjbeC0F6Jh8R4Y6vTfUJt/61NnarmuW
	 JbvVHw4B4egZtiQszVS4aQKqtj/lFK7CfSapfrsQOo6PIb5tqlYzb++QbyHeqpptUA
	 Hi5MZhUXJzzvvx7S+hDM1EAdm2K0L8bImakU1hOFL1uDicJENY3mFIfSAmAxYTvLu3
	 b4shNbO/BX5Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E840CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829435363.5636.1107797663195631356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9007c6c6205fb10652cbb2efbd1092e84582b3ecb4629fa8837ae65a59c3ee70
Date: Mon, 07 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728294353
