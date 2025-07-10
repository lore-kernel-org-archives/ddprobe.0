Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5692F49FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752172195; cv=none; b=ZbzLwln0UrWTC0iUqa36UdbOTNlru3iJeAp6ZpHANXB2MBRcp1AozQlxvw2OyC9p2yzok14hQWGeX9oSZ+2PslxQWR0Go2/yk9wV3d6HYjph0ZzU+73tBOqjuLg7AtdJbkIIaQaztmsg5YJss5D4KjK1wSkyQcF/YjsXTiBOqew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752172195; c=relaxed/simple;
	bh=ALEU4VZtUFNRO6WslzNA1pdoWJ9twO18CBdcehd1aMo=;
	h=To:Subject:From:Message-Id:Date; b=rMuNBxduOX5zrcqHqBenM4MEc8XAAUFoc+7xmyem4GzbrqhDKmxvR2CaIyFOeyDsz4s1vsGeSngAyglOQpv3w5RpJWD7paRZ3Z0E/w9p4dsA+JloiNenL5NldLhXBgX16LPeEJOkH/SkSL0zq3FfHP+Pi1mK1OWseZToLPVrw7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Np7NRS6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Np7NRS6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752172193;
	bh=ALEU4VZtUFNRO6WslzNA1pdoWJ9twO18CBdcehd1aMo=;
	h=To:Subject:From:Date:From;
	b=Np7NRS6F53ML8h5h4gr3nC7JvpIDXgFn88t16afN2Kfp1hHJBEKOi66MlSzyFE0es
	 wTAbDXf6jOvGnw9dbt4BwKuFeb4aMyBgSnUorjnaPfJOyzZS3huook40qHGhudMX/a
	 4zv7S5AecyUr+MS6fpJbKveS3H6yySG/hhHj4jDeGPsTSkM020nc7Oa3hicTxi/K50
	 jkkZhzoBGd+8nwfz7zwLor1wwkE/aBxNEFmu+eNMaeNeVc62alb46as1PrwcOi/CKt
	 E2BgrbIEBlP3JFCdwR8CRywCqT/a4u1USNb/XgUnmLiKQtCLJMY5JUsmW9R8IkQex2
	 hbaDCkuQn0aHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90335C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217219358.2262.4699948978402984620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66be03a94b981a94a5f5895009be828f497cca486fa5a2cfd0a0c7a87127b6f6
Date: Thu, 10 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752172193
