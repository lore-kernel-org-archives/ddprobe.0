Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AC014B09C
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726927554; cv=none; b=Uq7udA1OYX3zaJwrV3KmgnQEL3w6/DRbbWs+fa6iiuLxUj5K5zyBSVTUjw5w1Cu3uYUDMbSyZdcNseeJpwlbHS4McxLp1LaVEkez52TmPhHdzAAqhguk+XreInj4lkN5NSrkIG/mLAj79/GT7CxS5rctqrT4ABUX9GanUxJ7dBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726927554; c=relaxed/simple;
	bh=OIC7+3j2Poc2kif2SseutLyF0GEFmqj4adlHViG3A7Q=;
	h=To:Subject:From:Message-Id:Date; b=Crjckw6oaRDs5nr23WK8S3BM624LcbrnpUiXMeSRwyMBlxKD7q3aeuIUDTn9s3gX+sif/Xl2wtw2tT8HozjS0U6dnN/0f8spwimPNhLgBYG5wHthaLq5ZewrhWZ9Is0lI0C05iYWCrVAoMHSxQMqy+I9bCeWuTjkFZj9VJ+49LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eE+CMUag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eE+CMUag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40A5C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726927553;
	bh=OIC7+3j2Poc2kif2SseutLyF0GEFmqj4adlHViG3A7Q=;
	h=To:Subject:From:Date:From;
	b=eE+CMUagW5iKbS80m0IVQX4AbHiqi7H3Oth/sj+qhZhgJi8N7U/9vJVElJ6PhLcig
	 DSkBRrTMTeO137IBKdzFF50u7xrDo3RSKAO42RqFvw0DQVzLN+OdXDlKkpXvsVwXw5
	 Lt5yjN5ynmY5rn5KoUl2atK4NHJq0c3F/ioMJ4mGnCO7sfg3YMp4b+iFC9Ibe/FuoZ
	 WnB/YusyfGDENDXpGuoYpqnKXsZX+Aqacjm8i8oegvU5UV9ICRznVTqMiP2C2ORke/
	 gjyBU8KfT3z9JylFmvp3xBc2ea3NWi7HguDvVmccE6jT46cY4cEDXtL9Aj5GT/lYML
	 cuJS9sUhInD3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983F2CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692755360.16061.14765960757397287096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c172ae25672c29f5b3cda5836ae8d429f9ca77293635d1de24ef008fb973777
Date: Sat, 21 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726927553
