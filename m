Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEE92F7AB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764872574; cv=none; b=lS2yJh1SJldF/hasq2+LvyQ2+UM495JiXKffftol1+siTNJmEY5+UAHbezBj/Js+GuydY5YZB72oGUeu3FxkrwqfcsVR2znBnGf5gsXyXsAb/9bSEZBDRAfE7EWeeWvJJroJ1GcHTpHwpdyYKHEEsSyqrNCCw1R4SbsdtyAVZkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764872574; c=relaxed/simple;
	bh=ZKIlaEaU+ur/e7U1u8J8rhuULsj2+y/y7Ww/sTyZYXA=;
	h=To:Subject:From:Message-Id:Date; b=rKySUisTmryWZJwa2VCSFy0vKpIETn+1dGV6HYiljfs8C0szAv2EBwVDLOYN/IHFDVcwmeuhKcdnh4xuc0kc66LdjSAKeJzCW5kMQCnWSEFB20uTEDDj4kcieb8hO/AZLbcU6zAHb5o+EoRehcphPxGLHEY2MRGaoyERLApG0pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1r1LP6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1r1LP6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A1C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764872573;
	bh=ZKIlaEaU+ur/e7U1u8J8rhuULsj2+y/y7Ww/sTyZYXA=;
	h=To:Subject:From:Date:From;
	b=T1r1LP6xzClq3mXHfuoNIMO/ue/kOPhoQnoAjUmKWETW4R7U33l2EE7k+oO37Zmrp
	 C77E/jUjU9mFTpX9r44/m6lYHWQTeHFGA96gAmkuE8o3Sg7DYV7cb3iNxi3UNNpmNY
	 y+17Pei5R3U3fEgvHODLD5SyJRleBSfs/6mCnMjdJtzVHaOayiSPoFFaJdugNciQkZ
	 zpogKb/0cuz9zNdRXB1DT0mFt31CihStK/JL4h+tGK0NPqryWkWiGM2KrI/t+n/9jJ
	 aWYBUDGd1D5Ot5DFA0RUvEVA6Vf+fYobkeraePBYam0CmLZJ3rc60rz9EFpNxGgvNe
	 tMQ6iPkwqB8Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A77D29FA7
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487257360.24859.15958305860830664626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3bc8116945da7c9aaa713bca2e69b81afee2dce06efd0d7d91106508a5311f
Date: Thu, 04 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764872573
