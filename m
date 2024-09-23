Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB2019E97A
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727116554; cv=none; b=NPh6OBbFEMnN9XZLFBsI4Acc0D8UBqePXl/L6x07hoTWZQBtUxQ5YYB5by15UAgSWemraXx107f7QbG9JNL7X0r56ju5/2FI4LPPbViO+V0t+O5jFNXOyvx9ZqTxjYu8kSme+rula6iTpOcT46xTkFV42PH/PbvAzuEw4UECm8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727116554; c=relaxed/simple;
	bh=TsYEx/cqs9TJf1C4Hhy32YcXAmW4FSei+Ys75LGulFY=;
	h=To:Subject:From:Message-Id:Date; b=CmEcwoN6VP6O+iQHczuKlGH76jsomAOjET1urKHUa98nVYbzIj4MXC8RK7QH1XNSGvsCNZwRgzyU0Je9E2//Hw/ELqmegBKW/SHF9shBUPbEDPFeSPBDk58w4DwPseS0X0Y1VI/F/owVIBsoLIbSHcE6/UxwztFmzmDeziT6BEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqYaRwTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqYaRwTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C5C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727116553;
	bh=TsYEx/cqs9TJf1C4Hhy32YcXAmW4FSei+Ys75LGulFY=;
	h=To:Subject:From:Date:From;
	b=dqYaRwTZ1qCfpI5YYWrIQC7PI4+S5zWDldnNnppFKrtq55FLGlNvAL09cXT6jlQEL
	 GogLhGLCxxbBYZqzftNU1/D+WKsc3CoZkb27nRNqkHsjoO0TweyQJ3hfsN63sVFcPl
	 1J2fjyS+ksKRGsNOiyp8n27SH7fiyIXrKIa5G27cvxg83nTx5bRM/PXd1H8IEcNTvl
	 Kr7wnafQRaprclwwgnsVJJMtHZiVtQUSab0Z1R1aMEVmPfnLSGY58e/R+0O+vVP/OJ
	 5VvYAe3nsSl+BjKbyV5npl7yFpyHjLQxRkn2CNaP4UKBCg/aL08CsYZplUGe4CGPoF
	 JfpzxUH9MjzgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92442CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711655358.21781.8181646254613794844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49f20753522455e6a44d4e8bacd886ce18e5932c00cdae42f53bd930e6681cc
Date: Mon, 23 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727116553
