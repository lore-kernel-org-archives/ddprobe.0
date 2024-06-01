Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED4BD2FA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717221263; cv=none; b=lENTFv0C9rMGluDcEV3RqXxW/8gHLYDx1W/SqQupBp/Ats/+Str3+XAtkI/Cehhd2W4xuMXn3p+jlK/w9HDqTzlpe3lkRwZcQ6QWh/1F7uUI3Z06b6VYcJORCVsaJCowvrsk2Xfi1cpY0cd9/XI3FJEdUVHCCnKQP+Up4c+8tbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717221263; c=relaxed/simple;
	bh=/s8PUe+snNDQmZJmERDQ3b8+JLStrlfItRCWf/BIC+I=;
	h=To:Subject:From:Message-Id:Date; b=bUvzOjp+VPq0ThNQqPLN+4BS691j88B2jZVmJUcQlBo4YJLg3HIel32hG8vDGlAiZ91Ghp+VcjIjrCHow1YVGcmD1+I03gPZ4j48nFVILaV6HBYBkLkQDRB1gCpeibQGmPnIfaXuKpkgac7Hyhgk04cddsPKKpajSs+BrNljhew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V62Isv/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V62Isv/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7ABC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717221262;
	bh=/s8PUe+snNDQmZJmERDQ3b8+JLStrlfItRCWf/BIC+I=;
	h=To:Subject:From:Date:From;
	b=V62Isv/t3NpmdvS1xKmiDAAGGjTlK9sZJ0da3m2hqZyicXAvMRQMcvXHYFu1LPxX/
	 A/LmbxqNsRHIuyT3qA6g/zjgmyz2UzTGNtQ3yTlhTGxvdUoPR/3ucraC2avaucOi1f
	 Xiimyv9GWMvrbfGr0kDKPTzuanrx42wlreX2mdYE37/Tjs2UdbQYUCNKcGjBNDaGrU
	 Wgpd8MsErn9eKBLyl99LkDTioRi6E2jXMsajX2mg5/wqBQAyTh7q8krepV1GwhKH/f
	 36XUb3ct9pmOgRyA3jfAvx7qrvUaMaYhULLcky7accHMpeHeVdkNaojbpY9o76vFV/
	 4oFZkelALYqDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB008C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171722126275.19085.3163923955825847189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d28b4377b957f1d8cb18873ab277f8faaa476a93fb7f0c5bd4a60f387a46ad37
Date: Sat, 01 Jun 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717221262
