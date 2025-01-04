Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2709D84A5B
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736015754; cv=none; b=bvmzpqolAvstTBDGtJxNLYAK/2hsMZpIqAH1/T/w+neKuKIJm3JP85mv4a4gCPGZqL3ayK1hLO3FMRUeqC24wgLpE0CH1JD2lNtkwyAEK6XyxFGSdbZ6niEcl8LhF7IXDKKqDQos5lHBMZ25httz/bGYL2J06aovcIASQEaribg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736015754; c=relaxed/simple;
	bh=1SF4xQFjF5LNRGqaBANQbqfs0obaHlMgxSD1Vb8n8Hs=;
	h=To:Subject:From:Message-Id:Date; b=hR/oz8bcYSYHSdLRE2Y7OsP3l9j3xruT4Q2zEtUQrDln0IhrAoBvaFlxSZFxP8sRs7gQmpjH5mz/KzJNkqEqFiQnQ8xv78EbQM6AHvLGk9cuEPj/3TIQyiRVPy2udqT0QoROhOq/NHmMZXW7/RidSVYxv6YzwN2j+b4YUq7tu8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJNa3SqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJNa3SqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E79C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736015753;
	bh=1SF4xQFjF5LNRGqaBANQbqfs0obaHlMgxSD1Vb8n8Hs=;
	h=To:Subject:From:Date:From;
	b=BJNa3SqJTRxBxSP+EPIvlYQ9Mx+LlivlycXCb/7ThFw2BMBji5gOudC17vF8Dt+m2
	 nkX+JezgbhbQLsxkY04K3nIXaHaA2S03i42AVunuyPHSwWetIwlkCfmnKld8dgfZZM
	 M9dSah+bhll54RlD2q3tHADMQczjC5tHEfti71ubsogGLk8qOjx58KkWmyno/wO0V7
	 ZBVIBa+PGXfC7mf50tBOhcOc1pGCHyWQ9+1TUHSDQKudLX3FKpHLOulPhHkhpJKhsu
	 c8rOjNTdfQMMPZlvgfSZj/hu4upNE/fbFWjL5DsHBaZg0cSyuVes6PXrrUEhM+q44w
	 RWUPN1TFx6/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDD1E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601575361.6911.17798702692690132619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e628b347e7fab75c2c23addf82e0864e6d9b4f31040036b64f758ac3f086d252
Date: Sat, 04 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736015753
