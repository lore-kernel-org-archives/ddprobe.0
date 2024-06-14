Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 720001F5FA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718343503; cv=none; b=IUlYv3ZaxM1VaNVfuZbT/m8iOGT/5v/OoU7kW5neOuYXS14uxMohnmetuf/2Z5LBPTDYeZUS5puMTmKJnwtu/O81Pt3CIgk1k0aiV2QRk9adg7tmTwGLsiQ554ffQPUaTthU4pvhb11g86iL0c8JJq/oalIabsZ0wv4oWJfupNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718343503; c=relaxed/simple;
	bh=cfUxAstw2/nYe1tzvAmCZUoS0suigEhjHvOlN+bEG30=;
	h=To:Subject:From:Message-Id:Date; b=nK7dLnPYREvgC1t9082kynInxRSIetY/8h2qcINtyRufvT3QKZIQAFs+FoX2LDQBaBtA1bUFElKeJVeP3o3apby1VQs8uwneefx5uBm2ga1PavYIINdMXEfWQ8/BgoUQs2KtRCbq5bGOEcQIcJ3ejJqQdCmwnpN+CV8P6jjKj4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eU0K8PnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eU0K8PnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1980C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718343502;
	bh=cfUxAstw2/nYe1tzvAmCZUoS0suigEhjHvOlN+bEG30=;
	h=To:Subject:From:Date:From;
	b=eU0K8PnL1SH83FgkcJyuTktajTMuOxO2l5Lc+L0zJYydVBsOAu2qBc69RYbePG9OT
	 3BQRgYiP5RaWNQ+VCZSe45UhJ0006qdYfHNmTZEP96yS/ojYQNxLxaJ0H9nCXLgbG8
	 tm4o9EdHz1D1f68Et07p4fnxINrfAkDGHbZ7LkcWN8XChF9PRdl5q10ulVKmM0BFWB
	 CnNlyN3UOz/UFqEgmM6sW0PbuTS6rn+N90e4PteA75wHQ3I8ocaqLPweE4tXS0mqXQ
	 Hs3ccBM37COL3wNqzjtYbFI/txU/Ch6pflRfK+gsOQk8dGNE6msbvzTPQzXP1MPah8
	 wyCPO2+G1zEcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70B9C27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834350276.627.5049272973870825214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0e6a0ab65ed08155b79e5189dc15782bdcee2ae6caa0d5f170b962ad0015c5
Date: Fri, 14 Jun 2024 05:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718343502
