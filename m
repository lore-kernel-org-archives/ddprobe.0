Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04DE21D3F4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745960393; cv=none; b=X9JpCw9T7iDF+aSiDIKZPJnJVMFG5aVN48wwExTCSt2inpoLzrSM+NxAllONcGcc3b/ZErK4cuhhdEv9bXC3uM1PsDUJ1kjzO1//EaF/WJB8yS8Ns6xNN49uJJXUyCPF6+IJktYx9CVdaZuuuwvR6mQFXP08DmQEG41wautfmUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745960393; c=relaxed/simple;
	bh=VPOs2EfClOUepKMQh2neAkC3ykwg8D34TLUljZ+VFOw=;
	h=To:Subject:From:Message-Id:Date; b=ePGDiVFzqaAcKgBphYY54aHsiPnhi6gOiSU9W4ZP88ERVXPcX9g91VazzzKGMHQOZNNpxU/udcb8JZlxwbfpHcKMKbygHgoIt7BVOUpfZp5ODPUhgfDvytW3G0L/y8d9uCQxjFb57CbR4vIqLYTl97hYieFecGKjE8c34Aoqpgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxAaR1W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxAaR1W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0436C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745960393;
	bh=VPOs2EfClOUepKMQh2neAkC3ykwg8D34TLUljZ+VFOw=;
	h=To:Subject:From:Date:From;
	b=dxAaR1W1exEP05YfWDYDDPahfn0YAiD71yXjsZ5HHfyys0skmXapsJ0KoaV1xEbVd
	 jmx8iew8olWxXC668jkThbwo19BzpkyQlW9Ps+22Yc15c/8sb8GSDUdMkqnSg/f3+M
	 TgXejPL3WYh0CphpzcmDRKqiOHND+OdkisdtgOcf4B8+GIKqYok7HylQzBundxHvx5
	 GyhPbxPF9rHdNOj0fljlln2ywCWwnbypJ9shRhRnk/9xZc4S/DUAZPTsIV9qFIBWbV
	 DWraE6XvfyHbQ41bNOvUMl3whdMBH758UKPoijRBGQdgeYfWDsn6aTe6VMbTZVs4Tv
	 OoCiPWn/6x5dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247AC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596039359.15971.219625589542916478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9ff8f56499418d54135f048096844428aba9168ca709b24b5f6e4797ac1b11
Date: Tue, 29 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745960393
