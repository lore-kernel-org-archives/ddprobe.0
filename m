Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39183450EE
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747840794; cv=none; b=Yz8m4fUKIY5pMqdBLRE6ciZ4NeLftc5A6qXd7DbeHVaAYv1uGL+/pvJLQTGAePHhLJJmq8g3YvYP6siGZr/pDfBriclFCkEgnOZENo099fZn99nEdw6gw02ok+tT/XX8RH5tPRzhVGugHF5givsJ7Xlw6yqMbGECqH5thg1lVfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747840794; c=relaxed/simple;
	bh=r+fYsXjh+xYrBi4AjRfQKvDqGkIg2xXDh+eIu5L2W2U=;
	h=To:Subject:From:Message-Id:Date; b=FwTuw5Rggkcwx1K087Nx9IzVibHiROldJpcWA6Ul2kPuiUiG9xVIUo2nH0krRXuKxZ7W94PGBRKO+8COh6tHT7OYMY5MPe+/eAn9hR/aHppuRkzuTHk+1Du44BacpcIjrFGg6Md6RHTR4kWyhK/55dBnjo/WfnCwNMhaoWEyU3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMialRag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMialRag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747840793;
	bh=r+fYsXjh+xYrBi4AjRfQKvDqGkIg2xXDh+eIu5L2W2U=;
	h=To:Subject:From:Date:From;
	b=XMialRagyb82ZyNVfxtujXHDkZb12Jnr5T44LzExqtgva2lsdoSxFBgjPQZZUxuvn
	 dlM7AfCagm3vgO8Xw+11frgpwt8hHu9Ea3sPErPa4la7Ib9PfF/pmaTBLiiGGajBdM
	 eB9O7iz4am+Tu+ba73v4fTzjhO7SRlA2U6e+7RePZhVV1hNxCfstwi5IP0TvRCwpBU
	 CI9nkRViGfxld5YJ1v+Bojmt0Dzii+WnuiImslnTgeKNLKX9aLLw+BrWwDyhfB3pYx
	 OGJXAmlfM7D5/DEGsX6tiVTsCTigFOyOrKOAWko8YInlazv9JY6uKzTiswmS3DiyzH
	 ssqFnSiT1xa4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B5C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784079357.25484.1131278154631510121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132b671cd70a3819e20489be9fd468e7afdf1a60629056a0c1edc7991def5dca
Date: Wed, 21 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747840793
