Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6F3288C24
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761146394; cv=none; b=ZFf5TzR0t/FA3DcfTFB8Nau5brd7fcmAKBWAD8QXCD7HbhywhDRwRgWCkG67OzbrH6eJcDjOaZgtzExzoidcPsRDjWnwoBlAd7SgI/vYmXSZGoe2+rYTV2k5wLFuIjF/lbyRgX6konANusTtO0jC5lOW9DYLjQ0LrXwfQEo8NWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761146394; c=relaxed/simple;
	bh=3SN0WqTDP+JKiEwEleAIqDcavs4RwotYexIaWZSh63g=;
	h=To:Subject:From:Message-Id:Date; b=l4y+T+YwSeynx5ITrFQ9sz9G4zGlFR5XeHC3rELRxV8/uOxoR90QjIXGZ8NPLiwH5kdjU0G06nteJzeeqGcMhyFkfFZVPv0+vqoXAEv86NTwWRWyWs4NkcP1Np+Qhdwk0eoWga+9ZscqfyTG2B03P78yBXMcPpKzK/1h0Mbv2LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7R9SoSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7R9SoSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3D5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761146393;
	bh=3SN0WqTDP+JKiEwEleAIqDcavs4RwotYexIaWZSh63g=;
	h=To:Subject:From:Date:From;
	b=u7R9SoSlDe7y72nTtcDNhfeb4Di4ZB8NQIDDwZq263HuiTVf+FIlGhTaLp5+ar24E
	 CD0+gJmhwEmcVhMSqKWb9XTgFWBKV6jzH1nC/CbgIdk2/CwCWQyfowGwab1CshRFj8
	 zkOXG/kOIVs8zKMbRAUhR1zeWX97p9NTsr6h8APLf4Bgq+teHfm2mDMpbHCJnj4Jzm
	 GiP/0Z4k3e2AYw112mW7KWogbs/NnNiEZvTvhGwK2yU4Z7CE9GiljPky770ZBgje6R
	 pTJ67qdXAYw45LyN3WaB/dyxRRPY3ik7VTDRil9+68+bYq5N2IJ9tnyHodOlBi0qOD
	 AxoIEjeIA4xVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2ECCCD1BC
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114639362.28171.1210491757840233939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcaa9d502a6200a8fb1041c1c12e46f6546e6a04e62bffbcabe0207a1226cc5c
Date: Wed, 22 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761146393
