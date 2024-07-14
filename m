Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62323DF6B
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720954223; cv=none; b=onL3NYBs9TJHojBRJc7VcYAs8JMkVpymmkNfCV/zCWifZ/yptEuCQarc21g0I43c59hY7+A1TotrpvzBf1Gqq65OW7fik7EyMX7TlwXNkTBAzvsBXyxe/7EJBpcx9tukEzFEw5wRdcppbxbwbNCs725N5SKCWDgO72OzDcfOuts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720954223; c=relaxed/simple;
	bh=Vtjc1jSKPlK6YXsRVNpv0VUzniplShbmORhHjEszplc=;
	h=To:Subject:From:Message-Id:Date; b=TWdqEYyOJl0VHukV6xxb1rjvPAqJJq2hmV0iYpO+u0nWR66saz9NOKWchvnWw3WsLXcKet8iwvpuPA4BN4ZDplOv+40BuY2QNg9wBYnezCkhzgzGkFpqSAPPOhT6u7uJuFVqPkWUhLBevhl9Nev1odctYPt1KzK6Ttjp0ASkuiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6yby/l/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6yby/l/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D833CC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720954222;
	bh=Vtjc1jSKPlK6YXsRVNpv0VUzniplShbmORhHjEszplc=;
	h=To:Subject:From:Date:From;
	b=X6yby/l/2D51dL/k31Smb6EVdoBldb+hAVHUDce7zAhqB+wVYbbWuKv7zKny47rVp
	 PPnmPIywXg7AgwBv4vUQ7aXHPcTPVpsoXB4DJUGuaOfvxFWOmfR9DkQedqQBFkYWsU
	 zojKjvOuQjImL63SqN5to+nkANtR2zNkYYim5qnYCdYI0W7Z5O1UfmsrDx3tKmWbWZ
	 ZxMiJSQKlMdtEBmTrRzy6NikBMo6nOXOvSs5KxHBP3r0zvLORziLfrH/9rUPJVqJzT
	 R2+iCVgDnk6zLhvMKppX38ZxggR4dDkzpEJW7XXb92z0/r7WzSZr6n4l9b1kc+UDzW
	 L8aGsUzE/3QXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FB4C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095422277.17202.15443956109409999386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3e05b3b1a2fc87386e1e47c460500a724923fdefd64d365fddb36be0c910f8
Date: Sun, 14 Jul 2024 10:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720954222
