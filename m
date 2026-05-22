Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CA3271471
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779415354; cv=none; b=AB09ocgwKj6AmqSts5QsBuu7JjkEY/F8kVINZmxvb7Ycf8RadBvzSiQxOf0HGmJurh0pGDv2Dt/GIanRyy2gH57UoXSvKCCOi9bkZ3GDNN1opE6z2gIeLp78IxsBR9PqeETLQRbgL9xJ09GpwXg0czxQONFCaUvf9o2fE1Qw4og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779415354; c=relaxed/simple;
	bh=cjfzs/Drh9L1qdIa5B6D2I9ryfd2sZi+1qHFJtz0rUk=;
	h=To:Subject:From:Message-Id:Date; b=hxMRcrTWxtiMhxRQIFL8t7KBzw2G+ERaeUOHP/mlhQnSwS8V8WvmQq36jSfLeL7Jv7VB1zsEYIHQYQNoQ1enhwde75yi0eLmyVAJ9LS66ldh11jugR3ISFPiun+iWx6qvHETfpshMRptT2LmVaKWd0qsWmTKK05/+Mu3F/0m8MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUeic2nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUeic2nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40FFC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779415353;
	bh=cjfzs/Drh9L1qdIa5B6D2I9ryfd2sZi+1qHFJtz0rUk=;
	h=To:Subject:From:Date:From;
	b=JUeic2nMadnWyKiQuFPzcm6quQm4z9g8R1fmD7mkkDngrecLSzhIbXCh9phCL0ZMI
	 dW3oWkaSjwNGm+7S5XJrgWS4K9lUkivk4b8FOXUllXcXC6vLmgigoalM5CBIflbA35
	 ipf0tPMGpvgnWIU1Kdjnv9Zyfb6SAkWZXZTfLVe0PKK3zHWTbEXACYNwfp6TmpFrjo
	 to30x+aZcSEe54p8pqUnXJjJ+cPDHG6N49krO7ZZGyNYxP1K+Zhd7nFrBgFoLykP/Y
	 FpbyFVibIAXcAvILYDwLytRO1Gl039/8MiXQQAdv7lep7hNGBJQ6T7u78NcgINxsN6
	 JPdrDPqKZeWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDD4CD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941535368.30454.15401439894439182117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802ecfa687cc0013ea8c932998d5d6cb948a7ec6df23dbfd753d0d21cbf3595a
Date: Fri, 22 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779415353
