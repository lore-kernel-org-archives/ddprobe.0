Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFBF3F9ED
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708604296; cv=none; b=bVMIFFUU8NbgQLiBnFEKhtRCW9RVQMX+K1eH8C9S/xtWfn4uROZO6sar8fzhXHqRRi14nBwoiJaRdaGiw0S9JEFtxOeBXHsOTQLSrmYyIC/1dPacCbpdsiylAAZcx+RLGr6ltvDobdpNXb8tcaV+E2dDIxNxEkRsVwcnHpIIaTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708604296; c=relaxed/simple;
	bh=NPlxTklTlQvaNO2+TunvboPns8VaFcwNKXRCoctKe/E=;
	h=To:Subject:From:Message-Id:Date; b=nOIM5ffA3rP+a+T18jwerE1eR5Mh6sEsiNuKPSHFNLvF1KCN6JKk3wVwOanrE+8MzQLwUHYSSitheGI3pLnq8FrB452z6dL/YCWlIULBRnrgC5ZvbY9xIQSGsUNAZQGvucwcyImUKY54mXCrexUnA8R5pOcSgYWBeJV/4FFNU24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJqWFZh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJqWFZh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81667C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708604296;
	bh=NPlxTklTlQvaNO2+TunvboPns8VaFcwNKXRCoctKe/E=;
	h=To:Subject:From:Date:From;
	b=MJqWFZh5WA2BhSs6q+2dyV0E8SC3akJ8l4FXaAusfBfuexdNlhDfAgFV7DrLTKe3l
	 YtNzz27nMokPiiUeXZYaVCI9emvvy7UjzkMCEgJ9aomh20kZIURHWwzR+O3qTZGI/x
	 HewcxN/2Qvbq/fAopZ623H03UkaFlgT7Qj2P8JZh+xK6XrC1Nz20gv/D76pf5KPQXU
	 fbkuaD4fECPJL0xdn/LtMuNkt+Y0z89rsc2e4p9AgZkgrkvO4nTbROY801fU6I91V5
	 QAHXYrZYIPx0XCTyye9o5ehAXEA+DCKn7sgvIxAEw7DjxPc6v1nBy+lyDzoEDXDfK6
	 vmZ4AnTDWhd/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B52C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170860429639.17685.14803526488926987597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbec0fbc2b5ed04bf3f047fc0711c969d8b806bf524c04578addaa445ca0bd3
Date: Thu, 22 Feb 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708604296
