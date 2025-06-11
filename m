Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21AA1B21AD
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749655793; cv=none; b=Eaf6Y00b0XQNwsizayTA+8hYLdF89+nSxRTXb724M3brBfZMLNPckgJMAOhnQJmOyR9dLfb3py2rCXVDp1HpGJuF2IS5zZztzgmBOV8hFyu/J45BXykvz+PDw4Yx0xS9phA8BlUjTyyabpjpo69d6FZfse/N9HWg8IMujSCfI58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749655793; c=relaxed/simple;
	bh=eCY9arIXFpFDxur5Kv9rx2YSW0DjhoFCIuWKP+QMY2I=;
	h=To:Subject:From:Message-Id:Date; b=njbGQP15n2/TuaavBmdGliqO3UgOxVPRv9elw/38xxkyqafI+pNxNapIhWJqagM2XPImwo7ZKY2Q4h98hDTAnjzEUR0U/1aH3iAmGMfB9arW3eOWQRQsSmLQviTDHbS11DJoe6RX8YBNIJmuYb7hSEYEDcuEqaxMUBsodjbG5H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POwmyw/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POwmyw/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7003C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749655793;
	bh=eCY9arIXFpFDxur5Kv9rx2YSW0DjhoFCIuWKP+QMY2I=;
	h=To:Subject:From:Date:From;
	b=POwmyw/cdsFRvN8PQRqGuIhynhLWz1rIGutEIN4v2gUCBPF8qSIOkgYCP5MVYw1Po
	 zdLKuseDxwYlhSSk33AgUKm6fit4ZpfMAdn1gdemY7gVXyqhpNqysyWtuTHIhz5eMO
	 j2QAzUYviwBZYXr9p1y0N6WrSMtcJPmoEF1ptC984OMHa4oLMvXNN1RyWUJHdFGbhb
	 Af7jNaUMnOpVYcNZahd0WxmcaLTbj1XzhUVoTl3IMrYlrEBU3cEfsIQYr+k21Tp+MV
	 dn3wbCmXy3Bn4bukWEFXBPt1Tt+P3SticvwiLSD7JKQ0oYwJL165Bg3m0GK5eboPBr
	 EME9zSrOSdVJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9517AC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965579360.1859.1060587228362622741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca2be7c16cd214a03e3f2708731ac42d8e620c2c62d1fecc6060be8b2a0c444
Date: Wed, 11 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749655793
