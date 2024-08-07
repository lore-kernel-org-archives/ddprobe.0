Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2524653A
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723060554; cv=none; b=dPgMtZXaJxYSFx4zbVFaun+Ea68wena3d0fPjnUtsYDmUjb+fF8V4MWEOvWHTRHfp+bIpZ9A7J06DajgHxE2+vCfXuqSBOMOElePZ9l5VX1R0h59GRy5G3AS4BhGmJnolz0iGBFrx8SnMWiwkIujFzac/Cw3eonDt1nzxcMWVC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723060554; c=relaxed/simple;
	bh=ozDbFumy9GeWkN/yxuR4irEbhIVxiPjMB8Rvzw4Ouug=;
	h=To:Subject:From:Message-Id:Date; b=P/sIDipO06fhII7Of8/HnlFcVNMuUXZhLmMECOAIintxvb2ici+blOmMp1Jpf9d8fyIEL3V2eIhgBYMkNJVSDRLIdByv/3lkL66kKuPWdlVTnF2M+B2I23mME0SwjSqt4kPwtxQTU6l4gmZd55pDL/nvsWTtW37S2N96XAwiR+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0hCleTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0hCleTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E55C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723060553;
	bh=ozDbFumy9GeWkN/yxuR4irEbhIVxiPjMB8Rvzw4Ouug=;
	h=To:Subject:From:Date:From;
	b=P0hCleTc0c8OEwsVYgK2Ej1IOdsvpdkMgepHl/dZC7NiRz3nR8T89vCnrO1bOEM4u
	 quC+xTkVIdp139jsb6B4Dw2/pvoDsiNcHqJDXwCCaVSCA4EKk8I2lgH+w+Mbecn4uv
	 JzI98YtKqPfTu3BrmIUEOhCwxZEtQ3Z4hHNuMqDng/xrncAhvTFQfO3DTCWVVBFYKs
	 CgSmjnqe2bILBSmC/juzdKpl/kRfIOnVX7i5ePcyt96F5IXjfHAOjCocoBRnIqZoqJ
	 AgvONKGLVYMnEzpdZnXsgzKxiTJRAWNrVODephmS1nfDihARJcAnczfthTI7DgMjJO
	 ijGlX6s712FFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C7C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306055359.26894.7222622789104011334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41229051b82069ac51eaf410d052f3514a354216753a00bd3a3a676b3f86bf6d
Date: Wed, 07 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723060553
