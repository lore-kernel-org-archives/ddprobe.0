Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289653B1EFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784245714; cv=none; b=tT+EQlmlBdlv9TzF3/f+QSI3X+CFVHC76JTldACCwCclGE2bWTYJwGW9z9pKQdGdOrljiroBJyhlc7TRCIBnE8lPqFmkw00WzN62BvP+EgT8fSucGdCkqyho8hj+1JcERE/hMzzqas42ddznoh5/62xyNrSzHxasL70XKKyCfD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784245714; c=relaxed/simple;
	bh=zY3vPhlM6Ow3UuONmr/CnylnbnT5JC0oaVB4WL/1eKE=;
	h=To:Subject:From:Message-Id:Date; b=lnw/M2AF7Y/ph1xIaWIce7ppRhtwDwZOJlopQQpq7scIPonLXw8NSs3r8LVNkCISLa9YrTWBm/LfKFEnzpDefiqO544EhjzeyDiu0I1uw3NlJGDQA0+wCFDOePPIGZyF+DZFz7EtiF5unQpXRL+kTiyx6qlTzQXN0jV7LIS7+LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDK8GOcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDK8GOcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BB6C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784245713;
	bh=zY3vPhlM6Ow3UuONmr/CnylnbnT5JC0oaVB4WL/1eKE=;
	h=To:Subject:From:Date:From;
	b=oDK8GOcQZIgR03I4OtXCSJl8po2osb3dQIIwOJ9t/4PMa+Pc9c6mWOji4HOZgccHQ
	 wO8R/u9jpylCGY/SDHGcnVe3yGJh4eD20Vm0/ba7Vc4Ee5mTjT/YerS4/XtrHACE5u
	 vybnfmc5sbnSn+KQWwn7hCL4/NnGRt9MPHkzfOmIIKsum8AN5Q4BZeQ6V5WsewGWbm
	 EN2jTviRRI9IXsWq1XXGfBGl7mzI3vM1DU3Soh6kWx8Xc0UzuDY5MLV3im2AYFkdZO
	 AThdwZJavJ4dTM1ORDnFLqG+Qply5HsHYx5lrkgxFItO6Bt8ii9z8OaAgfMWIKrnVv
	 2pGu7JkULzHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8360C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424571368.10019.8122737950170451766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e65c2deadb50b2d1f23cf439cf6c78ced628a5fa92f8f0bb3a8d5066f7bcaff
Date: Thu, 16 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784245713
