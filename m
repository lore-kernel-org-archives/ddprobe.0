Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E49B1F472C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728615354; cv=none; b=u5imPMWBXVwJq8zwJGOIG1OMbngEZTHRqGy5e0BBVhO8bBBGLVAdL0aATdN3UZahDmVADfOskCWVngBgclDUqn350lSlAgFVm1oUreu4SA5tKdr7XgPz29KFLQ+jPmAmobOI7h+/hnaEw5WPhOYIm0a2RDnCcU1eUbGLbf/f4QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728615354; c=relaxed/simple;
	bh=L9xz3CSYfJh3vONeKNwH5zSRbR0vJ+qu04lWUIU2Ubs=;
	h=To:Subject:From:Message-Id:Date; b=WpigoskyCZ276bKzVUsoOC7yES7AW2XVy/s5P11b0fjjiTDqBoyQZJZDT63WJJG7xjhtE3MEa6pJDUsC334YyXXxaRWtvWv1GDv72ij9xgV2IlJgd/EG3ws3KFivSmdd4lx2zwh/Raf3dDgN1EvmlwciiLGSdLTIhYeNOvpGSUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8gr7qHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8gr7qHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D7AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728615353;
	bh=L9xz3CSYfJh3vONeKNwH5zSRbR0vJ+qu04lWUIU2Ubs=;
	h=To:Subject:From:Date:From;
	b=H8gr7qHKDSTcbu1yKKj28edh3ZjjtJ8iVxZhJPdyfH4oMoGiP3PfCZQ2yLK5y/5lJ
	 krTd/4OHduNfzYtxoxNQAR0BlrHUp+eaI27TGFELgI+6IDJsgfVRr75iYsyilfffCw
	 ALazD4MNrscdkELydzcSTaSzkkvPti+qeSur+hHLn9kNI3Pi36lUWHtrd7aN0Qrimb
	 4dnc/TQS1fH23RsHmtUr6DXEbtfmGDtMKtQE/ytvDJEqadkRHc4PUyJSVAXVdylyBn
	 YxnFTVLRMa/468iJqZUWjj2RdcBBLe3DSBeMcSTYctEqw9iGX/YrV2mX9TwS+1syoJ
	 2/3a637W0IF4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3687D24463
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172861535365.31491.16152162359265395041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc58fe55d666f63fab49e4e47c35459f329c5e8a380117840af7468a0b3d198
Date: Fri, 11 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728615353
