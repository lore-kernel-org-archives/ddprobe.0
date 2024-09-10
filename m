Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359C5199389
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725991554; cv=none; b=neAR+Q7XXkW067+ZB+Q3Ex+bvUYk3Zi8b9u7velFNVSjUM8aoYto66TJ7dnoBgKNCBOVGUjcNU+D1ZTcicVYJ/pAISSKFfOP0Q1GAfHYb2/VjanOr0uqFWw4HKqPX4zRARBS/vVBL/lZYFdF6IMaxZDcTPZKb18TXYtKcnDg/Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725991554; c=relaxed/simple;
	bh=qaaIzyynO6zgPUX2rQkvRaExNn0jSz6rMUp1Z34YeRc=;
	h=To:Subject:From:Message-Id:Date; b=G2Q03lODkMWOCLTfDwO42uW1j5hlqKikbJhbdOydHNzr0DiHR/xlhm4bM9COc0VQFcsDDsMNKXle7AzyLlxGbBoAxxOYgDZZo1x2/r2IcaZJvCGUp6+zaoJvipXeLL7CE8Kov7vqk/2KDAqEiqPplNvtuKaBpbBekYoKmiF0Btw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2s+T0/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2s+T0/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A534EC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725991553;
	bh=qaaIzyynO6zgPUX2rQkvRaExNn0jSz6rMUp1Z34YeRc=;
	h=To:Subject:From:Date:From;
	b=P2s+T0/pc87JP/2GaXbZxm2C2cscErH/GeblZZuFcnN2arryBj1Wz/RfT+hzslWrl
	 DrtCdckOKlZOkNMB9fcQ16FHAgG37rTlSjV0MsXPBxcgicJ9VpyBvPd80G5uendvhd
	 +40yDB9iG+FnOxH7HRzCBeqn+0ZL/FOmFWuHRAHvXpk+srz3dN1u7Of+bGS8ZC3wrF
	 jWRXfm5cPtO/3pdK4PqAUfDKS0Cjhkiu8380LPCOpvcz5QoM0mFstbAx9eGKRVD09s
	 H1lkBXHcRBpGfzLWOwVgxKiw/xhm8b4cRTXuB+J6iqjNgPwdNNMIs2H7EmdWwKdEo2
	 rEoRiXLEP4LkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D57EDE9AB
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172599155359.28266.2208115700107672095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c994a191823adeb37eaba396667881dcd61215451b2e6a62fa1f4400c6868afe
Date: Tue, 10 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725991553
