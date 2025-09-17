Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16453225A3D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758133794; cv=none; b=hDbzxgswY7SfSw7A/eeEiYaBFrH+fSH4mQO3p6YQKrWV17C6kbfOYzezislwo4T1IGX+a1xtbZxZMd6JmdlXdsn7FK6y2niF+kDn0YAdSe0z/81+QNPIcMzvQrR5iVRQEhqiAmfuWPK3+1+rx/8TMYAQVG2jTBHIx51/NgwBLwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758133794; c=relaxed/simple;
	bh=Uvzjx82E5c6TvZ5z+swlkmpU2u1a3F2YLymMOD8EmjA=;
	h=To:Subject:From:Message-Id:Date; b=qsszaatlL32K+JVZ0Hybu06ewo7W0SQKw5zAhc2eYpbansIftcQbAhIzXo0Mwe39u411ehRm3JKOfsHSJckNdW07wByVtFHA1odYYpyRw6hZbSvGR+3hSkLe232YDJLyr0MAUD1DQXc1CWB4s0tIpHdtM71tbYcn0m3w8KgNPZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFohKFfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFohKFfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758133793;
	bh=Uvzjx82E5c6TvZ5z+swlkmpU2u1a3F2YLymMOD8EmjA=;
	h=To:Subject:From:Date:From;
	b=tFohKFfdIERq4qJv7F5nDlvZnDyrWUgsdSLgNUy4vh7iI9N3YoavdKFD9Jj90eFRh
	 pt5jXnqLovvMb+jSAQoZoGzZMFPoLb6rNr8AByIeC67DzBntunpy01a32AjF71Aa1H
	 Q3V6y+mPr3IxiOmiXlIt+5vQzn9qtHlg841HVuld6t/cpIub6PRY6dczgrgH3/0CWQ
	 0DzTEOtHio1uFc/dhU10MPqtnPuFrgq41DL/eKkIED7Lgp9zmQoouJrdnZwtZ2jlff
	 5D69HicP3lZiRAFjjiEu7/d6RPI6el7IC7z/Jwy23/3AmFwFoiJN8dIc+5R8x/IXLv
	 0i6IgvwLe48sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6CCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175813379357.12848.12896210081296853722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9267e59e2dc8bbe3e84b97a0709831e04d2f0ef4bb896079b105ed72ed535b1e
Date: Wed, 17 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758133793
