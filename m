Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3125F2A1BF
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762226394; cv=none; b=WKoc59K58ca3MnkSXwNzKga5SEbdoEHbGbhUq2ALCNnZSyJVmkgSnKqzNdv8QIaD4PjAIUYEMsXpj9ukE+O+K4TvrLYX93PKHktT/bfEFZmsdtEsDGsfcPhFstSUsmdEJng3EG0pMEiuY4CTFz5hMvzEnaLDKy+XApW8YvzUq/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762226394; c=relaxed/simple;
	bh=j8fOLKOz+6yc+3ua+GWrOV7a1JN/lzpyZqpsIAi23dc=;
	h=To:Subject:From:Message-Id:Date; b=se5L2hRayelcRBXpUzhMr8lxAFM8Li6/BUVLwe9c40De7wLfCAA5NA5g8wPeypOSWS0itiHivLLoY9QPigz5qnly403OFpraiBBRJhSe3ZAU+fBLKbUAAdn++NK96xSKPhEvZwpBbWGynUXVcmfxIArOxTjPo1xFJC+d5Z05DZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=An8SUSVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="An8SUSVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E2C113D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762226393;
	bh=j8fOLKOz+6yc+3ua+GWrOV7a1JN/lzpyZqpsIAi23dc=;
	h=To:Subject:From:Date:From;
	b=An8SUSVuXcfTYTc/OvL2q2GJ3FhCNgg7n21w3f9rHXKB5XXD5L8n0nyN0eZyIBcMl
	 WYPl5fDuVMWQ7t4jexT8zG+VN57vGzmf+/Ah8INH1r2fFLo/XUkFmCSL494iidYFS+
	 VQl4eG7BISPWJ0zq/cDwGXkDeoyyPk8yPGWBMeA6fAKAT/vcp8DD8IyqZrBhMLy0F1
	 nYOVqTpydV+SQGUWumRRS77YhUoQODSgrwljWLs2hs5LI3gFsvoww9+/yWXGX/jpVw
	 YlmR2m9pr/ydRb8J0ndFsKsAP/YlmLrU4Jbo+qTN5yfHpF7XlYDnoLV20dmRpeA6Z9
	 9kPsGeuuz50/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F4BCCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222639360.29461.16460324089874244029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c8378d8e844175efdf428204b3f2155ad28fcaa2533d9099b007065375c130
Date: Tue, 04 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762226393
