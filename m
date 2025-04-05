Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380451C5D55
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743839394; cv=none; b=OE8c0SDXm82WZwFtnrYxNvpB333o0xD1dXaDcx88PYma+WplE55x/X4oQXn203o0u4+aVfjzcvyCCJh9Wxj+C42Nhr1E7UnyfuWbQIW4rBqrL09GZr8rQ0ZQzYOVLjQ0swmMDhKWM+5wEn/XISED10XTqsN0adwEbBN1cVGPkOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743839394; c=relaxed/simple;
	bh=yPODl5Kl8R+mgmQrsUaCKra/FrqxTVdweGpdJfBcpjA=;
	h=To:Subject:From:Message-Id:Date; b=l0hDvhJJExX570Q4SBRhaVV8VaVJAWfwaHEtw7key/0DfJ1rE7sm8dqqvqzuMYbTQfsXu/X81c/1cWc/5PZk2eOtxRBg+87rn2cGDVJDOSo6Jc+hqjWWqLN5dMNpec/8YaAt3glTjdBi/itd31Mrd/oN/6oyvnJdxACzKFIp6OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLr+LLd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLr+LLd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743839393;
	bh=yPODl5Kl8R+mgmQrsUaCKra/FrqxTVdweGpdJfBcpjA=;
	h=To:Subject:From:Date:From;
	b=kLr+LLd82WQrINITughFxseWss+FlDeWOilmPQGC5rtMy6V3jVqnLjtJL8v5pCMU5
	 qCs3DWdgS+AO4pmpF/IjIhLNT2OXn1eNflq7inJ7vt7JXunQdoBNbVKhG8p0kf/PcY
	 uF6NfiwCef5YEYcaNbuHyDBeGcVu9ArK+7VRdyAMcmyHjtRtHDPs8t+t+7tpjFnMlk
	 7r4idpHzfVXVsHfRVLPlttey03kclJpuk54K+4DUzUKNEjknSth/3Loli5xZKjdpSm
	 t1IR4RwwbIFpEaEtxpm6AxsOazKD+ssRHBr14dv1IQ4oVbzHiqSzDHkJpZf/wMzugd
	 mhhf1sznDzibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D3C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383939359.23992.4959590072703984061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9140045e5df5d545dce4fe96360e85f417f8085a571845c4dac411b62b7c73
Date: Sat, 05 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743839393
