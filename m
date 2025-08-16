Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304C523BCEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755341395; cv=none; b=cVmMLI67UcBUmv8l057AgB3qAlwb3Xt7DDIELh6OeaUvbDAY17BsTgu4SskQvAIMam7J1y63gjbuNVetNM5PU8fmyyWXn261imGGZjbLLM9RS5bsg7ldKUoQr1i8mQ4xV2kc9BiYgPQQqk5MoFNeu6e8NqO13C3Ri8ozNPkDpjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755341395; c=relaxed/simple;
	bh=Ta2g5aJwPU6dswE1xzl6xwpLgrrNdi4nQff/s47nW8I=;
	h=To:Subject:From:Message-Id:Date; b=jndED6jQPJIPnDtd3RHf2rRBMCsh1VyxvYz3CJF8A8eOubDRHv6FuHslnlRIinM4zNCbol0jWSHx5W/l5lraZmBd4YGAi5YCYYgoJu+dm7y45Gk9mSRsAkf4F94OrpG3Bi1vMgi0MssjLUO1kCQ6bJkkenYec81MxbDHP4Nxzag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9CAHNci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9CAHNci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AC2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755341393;
	bh=Ta2g5aJwPU6dswE1xzl6xwpLgrrNdi4nQff/s47nW8I=;
	h=To:Subject:From:Date:From;
	b=Z9CAHNcilvIB7/a6Z7w4Cmf2H+h/+r8VLVqaK7VuFCGtuvtEqUYSHltV+WbvOHLje
	 7Cd5Gv2ZQy8T7zDvU/qJd2hfxtP7IfHxGnHoXK1k8awNTBn9mTK/Wpo9VHUy1RMtaY
	 AVWt/pPN/YIwfOAsfW2Vs0hItDZjbFQpiY9pAOuBuk560v4EK1c7nZNBSfHryKT58P
	 7EapWAD8c62wcNB0tBeJmcDfgWyeZ9zfqDkv9NqLhJZ2VPQOi3s1pFCABr608kfaJT
	 pGHVMPF00m8qr/sSeaPt6+C082zr3NUfQDmfJxLMHmiKA6CQUjMINbfxNAn/vZSpZj
	 PlkiGwPMEQa7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A878ECA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534139358.30399.10589426902402305328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d21f457edccf30e1a03e03c076cc940e8d8412db06ebd69286e80fc4dc07fae
Date: Sat, 16 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755341393
