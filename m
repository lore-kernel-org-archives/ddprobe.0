Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E44231A8F
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715236343; cv=none; b=W4Ge0GUsvRnJ4ppTSEIGpeawA+LQx/zRjpeVD3B8T29Dnclh7R8FVBQre9hW+2NtXS7BlUyAmIZnf9IiaqVOY/2WhP3NhijwSOySQWRDGcSukiJUjg2I5zWSp9DEKEEYEO+4TapjB3Hrq5UcMsxEct2C5CAGMOWcqmkeoMSOFww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715236343; c=relaxed/simple;
	bh=+1pnqVlrxlAbNuPKGNXT7Qp6RHalCMQ5CNYesBuNJ8Y=;
	h=To:Subject:From:Message-Id:Date; b=lH4BsR8XXf2vbApLN/MywMBUgH/7N/lXQQOVJUz2tqakNX2/WlRKidy7/vk7pKmbQtzfe/H4z9x4kuNnRdr4rjFGgiB8Z9F/XbtE8htOpmYEpNzBbUes0pDqBtiNtsTFbUeIGjmWLUpLbVUhP7j/R5kmcbZI+K/ii+7gnAqmRHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHrOWZq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHrOWZq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DFBC2BD11
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715236342;
	bh=+1pnqVlrxlAbNuPKGNXT7Qp6RHalCMQ5CNYesBuNJ8Y=;
	h=To:Subject:From:Date:From;
	b=JHrOWZq9cEWOC6s7b0YAahOtfQCA+OrgygEgwCDg5FhiJBB5EbmRCTPpu1RCMeNE/
	 Cax+TItTAMVfNrpGpPj+Bc1N1yyCPSSSIWead/8PLA3orTZK0VvkfI0YxtjlEhSAhH
	 iiV4jRiVFt3jJf4ychdwz4+fCnDxY1Ck15UWCD48uzcN4z5GPo/lcYe9JAOlHJSIao
	 GRr12j73fZXvNtl1HeNXOtv9s+GTPvAganZfdiXmikHr+TvkTtGNuDplXnHZzbrBxi
	 yFZCmMHyZh1GqUtsC/0Sx8la4M6ZTupYDbdF8W0u2z47iEHEUBTgxyhctb26jIpoCR
	 LjBRAIZRQg+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DECC25B74
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523634278.21249.13350001544899588790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db26802e91df18d590bb8118e4e3c93e074d42203acdb4fe384f8267598292f0
Date: Thu, 09 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715236342
