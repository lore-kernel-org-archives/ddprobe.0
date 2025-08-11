Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4E926E179
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754891394; cv=none; b=n2THb2jziAHnS1s3o0YXjtMty35Sx/cR2z6as771rRJbgBfrceOQYm+f8CvnYyzIjqhlSZXg46VunkTPPJ1jFnXijQ+O7AxZDWRrnkTtGVPhdiCQqNKQtAOI0vUOnZ41WXfwxVFuGV0F8zdj3DBsd8jeIM2sllAD3pw3W+gtJmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754891394; c=relaxed/simple;
	bh=jAhhpADNxU85ynKsl3v8rs9NjRJ6hedTVzpE0l4wlh0=;
	h=To:Subject:From:Message-Id:Date; b=HwwKdoB2gJEJ1dl71JWpYMVc+nxyC2CQP2vH7zoZalg5beX9XkmQcCecYUmNhWxidxtL5bIPJVr/5mjnEZETX1mQzQP2yLx1bgZUqimdwGPSA9EwpD9Ma8L0O1SPwPNjD+9kgCEBEFkvEebB8NJGL6HhrQ2KuHSEbJqDdevTt/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irLAy7qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irLAy7qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE6EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754891393;
	bh=jAhhpADNxU85ynKsl3v8rs9NjRJ6hedTVzpE0l4wlh0=;
	h=To:Subject:From:Date:From;
	b=irLAy7qbs8gwFHctCIAM3ZW1bwyaedSMVd7QHvZcyTykSMkwf6Q3N1YEzGXHzai4v
	 pw0xZ6D8d+CZMMBQXxgqmNRhfs3tK3gcCKMd4NcziV3Wxd7nb0bknZP9+Bg86aRJNB
	 JBanYRsv4Ug52+m0CuhcNdp8T+6nEtMxM5QLHupbUngATln1ZkfD8OUKZ56yev+IQH
	 KjkXtrgQ5OzR5K8rHmQ6gI9UFEivU/FVbx68mf3alqDGgtQabTIWDngXUMQY4RA74G
	 ppAT4jJD7yLJCC+IEfHXIe26C5pyucJXlKPL951zjYrklb97pi7ZiDIvtgS1PYJk+b
	 HlQaaYX8vjRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91495C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489139357.31891.215391713797956878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 967385da941a6c76136c838c2f126667a69535a480852b0c5a7a64d39b622891
Date: Mon, 11 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754891393
