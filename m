Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7222745E
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754806795; cv=none; b=DBrkm126ZGYaeCs2V+7VwGA6b5K73itkt3/SqdYi4KkigfyYTX+DKaOoYw+45l6eV3wrdFTNx//MJUTL42W4K8q4H12zsjGmJcKKpK95LPx4w/Jy5iOCvObFtlLjtVPspcEXY4PXrcYAwknOeQZ0cGqBcCL9y/SIMNfwkHTQgWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754806795; c=relaxed/simple;
	bh=4rGNgRKqnbI5kCCqzV2cXNr652pmimPdOzCIb7HFaL8=;
	h=To:Subject:From:Message-Id:Date; b=tz37zeUxiwt7WDKEnyKczrMG1vNlx3pfQ89JqX9EDukEL+7GY/+VVnHytC4JV5AK1x+eOwSKF343YrtwR4KlO7dIAjwwklC3L/4w0RXYSY+sKnd0gD2IrvMMXx74vdiIvfFEOMbK3tj27rGBy+k+Wft5JLU6xcCnWpKgEXYece0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TISIBbJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TISIBbJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C93C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754806793;
	bh=4rGNgRKqnbI5kCCqzV2cXNr652pmimPdOzCIb7HFaL8=;
	h=To:Subject:From:Date:From;
	b=TISIBbJCqiK4NXg3kVmj5LqKvRneKxtHWZgeJCNByf56HmJe61lukGelAYECMPVnH
	 9zPvqvDClR74S6Efi758/pSYH1YA3l57j/IuuT6XWL7Ke7vpLs8sFbDiCaqRdf7j5/
	 ENw9totuVViyaPwG2HLtqfb7lMXoZAFHNgNf5yEFztlpUfeMi11Q8rtuDgOifB6h7Q
	 4cQU+W5YxhJnctYYdI4MIeA4UjMITevf4ByQbwAO3TTHCjwWjsFyzBeYyY5pTMACEp
	 JVlGR78YLZfuT2FalFfLwLIL8qMf4gObaJf5MsKydIhHudQm2W6U3+GTY7xUP22QEY
	 2KkrTXI1xEKSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C3C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480679357.6718.7266893327178995317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ab05301861b27944950d5b3185dbcf6f6fe8465d0c8ebc6e26b421d71dc9cc
Date: Sun, 10 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754806793
