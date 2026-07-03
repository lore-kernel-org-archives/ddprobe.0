Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764C235677C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783056514; cv=none; b=i2GR8sN5aLdfaTN5S64Qy+1mIJxfgk6Q/J0zVZlEaLBJfQcM6/9joHxoqdMq+APmEx8FHZMqYDV2L4HRKxtTSfgBz047ALYbTDxLGVugEPDGlJbWe9dSVnh/+FHWWBuKTYPscbW1gvwIc+8LF6iS30J4ZFhixxUJ5i/mXe7oKPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783056514; c=relaxed/simple;
	bh=tiinkR6GZ25vQIdKX59CdCyvXEvKCpnOBfjmlbrPbtg=;
	h=To:Subject:From:Message-Id:Date; b=CQkxIUGNkrhlQqUsLBGdM4IfkgCez8RJPv+dwAocU42pWuHwENtOv9YmvgJNUBZ7M+cloLmrHltrNRpYJ5ToZfwSeSoNGnnjwtGmO+mRWuk6YzAKATnU5dcuGdyUiT3QKFcWX1xjt/p2CNJwGO7+28yXHZCyPb8DuMN3FWyHbls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryRJwJrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryRJwJrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD503C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783056513;
	bh=tiinkR6GZ25vQIdKX59CdCyvXEvKCpnOBfjmlbrPbtg=;
	h=To:Subject:From:Date:From;
	b=ryRJwJrnKgenbHHMEfply/bzvIT3fLwRLsbnEIj+vIjd95mQEcY73gFukMnymWV2W
	 WwXQmI+3DsZNIasHOB3h35GxC/RqQTRSCecuhnQlMFGMF4yWjDR+7ZacKoEvwWG3nX
	 isRolE1WlJNVaVOiPloFahNYffqDQ9h0Nq7bfDmLGuZbjqjD7L6vx+F38Jvcz2OAKs
	 184w5BEgCwnH6Oy51Jq+zizySGNjlq6Vl2PI5O3o8vPXt5dby2NOz5ufJnleCA5t2T
	 lm+o3GHlJs7Wo9oDiAjfUX7RIcVeHMeXsmpcQioCOufIb6ixFt/+derLi48jJ38S1w
	 4mGadGLDwYHiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C5C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305651368.18767.11727328751941903989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822b857ae55f64ed56a0a3fb4ec7bbfe450efc0faa66eaf452e645836d232396
Date: Fri, 03 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783056513
