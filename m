Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AE95349A6
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792066834; cv=none; b=aQrDbO8ti6LMRI622b5Od3psqqMWdkxAumtMyc1fzVLGgU7Kp5sijKkI7Unr4yisDWW64XgnG5+YFO39sFVEi91hbMwLSxyPDzJ9JbedoSPEKw9AoC/2KtvCCSIKhLvrViZw1d31IvXzemi5Mw7vpCPF4Ba6btxXMwo8jn8uT6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792066834; c=relaxed/simple;
	bh=AoFjxhWxwLMauxrSO4S8nXhbTUTimp1v6bnHuSRPeLk=;
	h=To:Subject:From:Message-Id:Date; b=fYhx1GAth0jXhXTJmvGAkd+hTRfe/M67bveT42L9w57Srht3kJnIF15l10Cc1Q/eAb2L5Q4fC2Ug9nb0ABDvcgac1vETd8L4hHj85NVbbEuAEH66Zq27LQCHpuxhZPTogD7oeydAInbQ0vx+FXd3fs8Zs5pqSqsFqWvBVRQTyPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3KV6ZzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3KV6ZzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1F5C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792066833;
	bh=AoFjxhWxwLMauxrSO4S8nXhbTUTimp1v6bnHuSRPeLk=;
	h=To:Subject:From:Date:From;
	b=S3KV6ZzPGSYtKTX8h9ha6e+4lYiwM1Jm6nieORkOUax4EzRq7g2ACqWiq6HY6tjsc
	 DPUhtRIrpsS5/WtaEEXI0cmuxXGr1bv/AcK9Rl4UVMUFmGF/YFWBz6XoLoeWTAhXO1
	 r8yKNnBgSKpnp+hK8Cx5GNicLoqDpVoJMRD28k+9GWZEwoE7k49tIv89vp7AqQl0qn
	 G0UG9Qhy0uxy2bBmkM9YuNJ6s05MTy+MEb9sugd9/+WqnNYlZKGWc0glHy7cOOmNQE
	 O0rWGXSPampMheTALeNKKydVfftXZBh0U3pU6uGPsclIYuRp3z+9ciYxGru0U/PnpD
	 deMf1sN71cc7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC80FCC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206683369.21665.11513455317123464994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31cc4202388453ba1e16b857b3bfee68e9c38c597cac46738fb110468a55e9e
Date: Thu, 15 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792066833
