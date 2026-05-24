Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDA62A1BF
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779607354; cv=none; b=VKtwRuKP9sY4xj4A0rI5a7gD51A3l0FP6IONBWyXfWpPwEhufa4bAiPlIiLN64yfzsVIBR7VTWXMv9kx4ts1FiwNYlaUAzjff8CfzpucOv00noSkVFEjJO8lj7sgB9AlSTgeDOt6DUjRxeXtlUm9d65B/kzAmrycybDn59HUCSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779607354; c=relaxed/simple;
	bh=wx/dB6KIIrkwTe+f43jcCfxzBoZzgu2Foz5cyg25cck=;
	h=To:Subject:From:Message-Id:Date; b=sW2MZ2DbXF0BSC/e6klZ82o1cKuIpXbO29l5H52GLkzWMwZYO523m2WxufdShPFKKP1WzCZ4saxTepUTnz7HPjLSE/CrB0tGRqj9MWZpny9IqYyMDxrlo1S0SsIyTHgrVanituYFcDiQ6F+pHQzr/LYqL4r3X0htGLyu59xioIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRYzHn3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRYzHn3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EDDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779607353;
	bh=wx/dB6KIIrkwTe+f43jcCfxzBoZzgu2Foz5cyg25cck=;
	h=To:Subject:From:Date:From;
	b=PRYzHn3ypDhjmhxEedULe38r6fP6yi5FilW3hDAMeRmEY3K0Or7iGmYPBaZ3Lki7L
	 PU/b1IEW4YcVynXXrkATuuZGiv5Qyejbd0NGnbxpkN6EH2O6h3Ejx2Brx6wnlzyfaB
	 56yD4j12pfzM9k/BIGsnsDkLz7eEQgenYp1DlDreHoplaJYEWBaVDVxTQVWpbu3Q9h
	 br3E8KZMqDUOf6S3Q6siZozQvgNjOgMk9O8YbD/ksxiw4N9oZGkRNv8J/n1PNmi6I5
	 qHvfaPMgvTAPS5uG/9nEiiCUJTt9kDRCngdLoOzuUjZcbll+4hWwwypnfMR/R2RVsc
	 Z557w5XLIZgzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCAECD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960735369.21952.13977983799063468744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980915b04e7c72937c3e4c5a11a4f6cc289dfa927be8ff018be9d68e4d63cac4
Date: Sun, 24 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779607353
