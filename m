Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BF51E5B68
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786030834; cv=none; b=NhibaVWu+1eTyUngdtJH5+u5cgFqwt2Kd35P/vvZtvM+jxaHHAPlhCD+VxiZUl4gaJEQKSiOLSoGljevywBz4wjS9tBXeQp4zt0iZHIOkCcsEqlZCxz1YAE3KPBcE0gbovqM9sWpfn8M6Z6YZV8Sz0CNZaM8+lwgooKVbcsa3FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786030834; c=relaxed/simple;
	bh=896uxoo4tvYj5150kdiPvY26CRJLQ64SwZFDlRIv+KQ=;
	h=To:Subject:From:Message-Id:Date; b=fZN9m5fxkCfac+I/nRVYrdChSehfKqBzlYTSzd9zQ9Q8dfHImOS/AkG+D/vHAGX40K2ruLzTPkowwd1EQzY3Zzj+Xswz9OSXzQRk7QnDSXgOkNClkq1YnbMgK7zPDtdMrBzsI5sqE9VKSh+QAiKbm/H+GHEvImyIW264/WI2JyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzWsHqGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzWsHqGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13B9C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786030833;
	bh=896uxoo4tvYj5150kdiPvY26CRJLQ64SwZFDlRIv+KQ=;
	h=To:Subject:From:Date:From;
	b=NzWsHqGKoaq4dKNziSVPksmgZh7R+iOL40O8MPkx09SCM2HXn/0pp3x3AH3idv0K4
	 4vjIFRSfXzP9Wtw+cTDFqlwQAlG9URWcOYGVrBPKCEZ9e7EHSvAbrG1Iy/mBcfqAPv
	 7Pa4/vBsGmET0WEJyxpqb2W7cfqs6ojvd+AGqfbbykAhfuVGx+v8mQD1ajgIa2xvw4
	 ymaFKmAYliXVmH7nsiEbcdu1leObWdJdfSYbg2yoOHzMeay6saTy7j0lVbkevkqsKf
	 9B2u9+woMxGfTYI5ibu2SFskTXkI54ryDZ+pPOU0BumbEhETJJqOh6L89PWn9Rkpj0
	 d4q6G20yc78FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC80C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603083370.7216.15911799031602524925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f358643410802dbd7aee285ccf90d0de221914ab3ee8e1844e6513267e7ada0
Date: Thu, 06 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786030833
