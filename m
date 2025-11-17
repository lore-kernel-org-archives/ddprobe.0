Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A83265CA7
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763354514; cv=none; b=n16tE34vKM6QjmivkO1ewMFSKzftYwMyxxokcogKu2ySAsd0pVEDs7C1U/bjOEsGvPYhxSDTOifruh2gOzB4NQoDQjmcHZ6XblRlYTfGyaj8fMVW53wtLH1XeELgmMUGGAYv6f3RlZ3TS8gFXbEbd5GryahRaT56UeVNx++8DUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763354514; c=relaxed/simple;
	bh=Wl2ikGjSlpdHfqbeKy0HEBM8v1jm+X9aKFzvRSw8+Pw=;
	h=To:Subject:From:Message-Id:Date; b=WPO7LbPSUr+9BlvnBkjYXfheJE2DcMJILEIt+5ZevAd3hfq6nVBSTO2y7w+W+wIq0GEMxQzaIAGKlVtWi4+01tAbAcy9s8FyNwuleSj2CcQLOd5+KjfmoSwHz158+FeOaYyVseN65lKUv1YiwAu3Hzmfwv1cWD4uwB3z+vvCSFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcO3U2pC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcO3U2pC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A740BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763354513;
	bh=Wl2ikGjSlpdHfqbeKy0HEBM8v1jm+X9aKFzvRSw8+Pw=;
	h=To:Subject:From:Date:From;
	b=tcO3U2pC8oFqfTvPh63vQPXggJuXahe0W99vpLFDjUYdiA4n1lbj2hKOFfuyKgVaK
	 ZUrXkU4i8ZNeKWEElSjTAF6it03uy4mb3NrU1VqlJ6vIpyyNcp4PXEL5XDTAH5n6ij
	 c7HylGpt7TAL0DPD5kVMBnlfSKhbVM8PPJPcln9F3HoTxs1I9rg3mUgkgRqTX+t0iH
	 zzLs2YShokPBLCEGWTpcRZ9IxIvpI6PwN7GtXl6cGKq9G8QmH8Dn2CGt7hcsFaSJgm
	 cLb+f7WSgzPRz4bkAzLw5A1LLp/ySjVbFZaWPMBPGM53j/mysEkn4j4AQ7q0XjfeFM
	 q4w4d3hj/5Rig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981A8CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335451358.20391.5385894560089774514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b52f9198900733d93d7ad8f3ffb4480ab6fffbf85c2588b04e19af3fde32cc4
Date: Mon, 17 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763354513
