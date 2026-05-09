Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476FE388E5B
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778333254; cv=none; b=qF8T0JhwrfEFI2xRP6d44YTcGqsEp681+PQ7QiSWn2WfAwe3r+G94dJ7wEmb6ykkTR/tmpb0DihypzhzDJDm70OU5kOhB6XycFeT8tiUKuzYypg2YLIcpLDltp5fIbyrMyUpc9A7hT9er7TEhnpKCJ7IFHsP6RbykFFv32c0ZYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778333254; c=relaxed/simple;
	bh=fRtnVIzy8i2I6cDsT5dqhrHdHRl1klp+7vhSSeXx55g=;
	h=To:Subject:From:Message-Id:Date; b=Ctbz0dNRPbue33YipDeUk2YIhr0sqCRokSEyqvMwcED4S+1NncGhM7k6Z0gOYo04bSNHOPxrqq5z5pF62Y6MXqU4Tds2m9AzhWRlC9aJMSQ/NFSuP03fWWRY2emM0pGK2uKVQhEFewoighsA24VMsjNMKRxQaRz7li4idlBz+Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhN59eze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhN59eze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E6FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778333253;
	bh=fRtnVIzy8i2I6cDsT5dqhrHdHRl1klp+7vhSSeXx55g=;
	h=To:Subject:From:Date:From;
	b=HhN59eze02uerrJB95LT2v8dLmdMtS8wamhcXPovKsEmNzc1x/LX9yhBI/9CtlHSP
	 aI4tkkNSQhUdN7qD4b2mCwC8o2X0TYyjDEuivGmmbpCARipjzB56Mr1lN2gc7YtOSc
	 KSbvLM9yfRPPEqnidvkLmvC8bWn+nj35eLgHfzJcsFmNiK+hhnJzIVyEpp38ricmue
	 feYLTLylO1f9YgGfezy7neLkQ4XvhX8wgrjwfDSS5vrtD60fKD2pu6Xm1FG8HaQ5mY
	 +naJ5nw6yGktt4WXnI6T4PRUsDr6+9++72ZiD/nt9R47il5nVCX0xPqTVaaLNg3qAG
	 TynypIrnkNg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C986BCD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833325378.21633.12989494853532702358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035fc88ff0372217ccdbc44b54b258c530e9123d327eabe53ac43578db63b4b8
Date: Sat, 09 May 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778333253
