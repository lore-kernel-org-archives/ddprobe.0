Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5EA17B50B
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738866954; cv=none; b=s/yxonag+2FedJLTRkNxHubicWTlzJsrT84TpVOJ2UYG6VUef5i7cA1S9e9wgcTcJM/aH6EMK1kuDbFlDvfmkbmKg+5DE++3A558pMSYf6wH3dhRMrIMxsFuYgy/nDf2AQrpJ0rNtccsmsTWO/jvvNBJI+aa8H5Sa+SAzV2aKgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738866954; c=relaxed/simple;
	bh=jwxVCJ8qaV0lSgQ9PLbFV0zks8uDE8gKig4RB1ENrFA=;
	h=To:Subject:From:Message-Id:Date; b=tNIBA88ELz18kAUb/3vd3ybMFDX7/2zMJnwIeA8lqPkTyHcLuC8uisF3ROUOtH/GFbLbcb3giqnbyIqND0+pNh8IIpZVSvZa7a8qmuo/fqL7VU+75OKTSOrhG5S7QZyJO+7gDLq5BB4O995kjB4i8Ef+BzFcTaQRiP4ame/LVEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUEtq8WE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUEtq8WE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE27C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738866953;
	bh=jwxVCJ8qaV0lSgQ9PLbFV0zks8uDE8gKig4RB1ENrFA=;
	h=To:Subject:From:Date:From;
	b=jUEtq8WEt/5zPGq04MHmrmeGhCt94QbNjrlef5hGhUIEznYQHUg2CGUhgB6q+Rbr7
	 WOxN9kS5ze3gClIpuSgxEewNMBImv70ENH3BxUn0r9DZEwd1hii+eMyXHcc5+LPRY1
	 nzi0kty4kVr6ck7mgzDMeMVBDk8Z9ZH55AvzUH1JcQRv3SHw2Duv5JkaLIsNtbtV4G
	 4eEZTFuyBiCGC1nO56buwvSsViwt3/qCmghQnoCLhW/LqW6G0MIqpi2yszAUT0peFv
	 gQhzfN5wbEr7mdzR8G2oRuv9OvlGqsYmQdbel/mc0btwQyvV+bN4v3oVYwZJxpu6Uy
	 KWNGcI2ZNioPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A32F2C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886695365.5462.7036382179530221155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50d3b766fc934780da789c0051a2608fb8bb03c390b5ddaf193e55272b53423
Date: Thu, 06 Feb 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738866953
