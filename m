Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14A414A84
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722719754; cv=none; b=O9TnlJhtcA3+9ZZYYDvieMkPIonpxs6S+CxkpmpRm53fqbMZZwutxzugKQpBDZUw1Epist0BTwRp3G6ClEtdKAE6AwqU+dGHTTH5/rLL9he1vv3x23WSgDm88lMHkz4DUtXqbXlMfuVy+33E/WV5hLXyDOhBgSsa1CglNxpe5zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722719754; c=relaxed/simple;
	bh=7KOfV5qDdZFcZkPHkHX6a7M+FVOam9PjHc2q3Ir5hbU=;
	h=To:Subject:From:Message-Id:Date; b=a5h6Lm965SYDVq3jdRcCln6s+4oHVGlzwDBUcoVycRGWHdYFugwsPkc4K1e9j4yl4OLcK1pHKaaXlyxjypO4rFBt0I5Cz1dG1o35Vfuaft6JciFxgqK44W+5FMt3pKecVN4oTW98oKDAkqLPQqGHCukRSG8AiSjME298L26LpF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPOXeOWj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPOXeOWj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B891EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722719753;
	bh=7KOfV5qDdZFcZkPHkHX6a7M+FVOam9PjHc2q3Ir5hbU=;
	h=To:Subject:From:Date:From;
	b=iPOXeOWjZP/hcarPIanKQ8+Yp4l6PPm8lPQkyV290ueUwmKo9Of90OWgeWXfUIlQ+
	 tQAiyY2JTLfFE+8QMiX3r+J6/6EZRzfd4JTer1t1sOTY63XTzYDlukIv6pO4M4CokO
	 Hhzzzg0Nj8GC3O8B4uYqLlPXqKPSiuAlcrpHNuAQrS5gdWmRdiNJr10ZsT0wggGVfd
	 zUQCJVev4kZ3uaaE2Pdw9yS/ZW7BANccssKHRzMFNEplwVzWWEUv6ybmUCmahMN7vx
	 aZ1mxkwh5xGsP75u4mvE7CS4ciiL9lzaBuZ3XNRJYBjLCK6X2u/DlwpRsezd1SMHGW
	 1LT0lVaR0ZNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26B0C3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172271975359.2525.13300642400811161845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358f6b3dad26b51f815069ce3476a6152eb3bae4bf215751fe6ff9510c98858a
Date: Sat, 03 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722719753
