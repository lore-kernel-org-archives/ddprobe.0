Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED4823393C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783885714; cv=none; b=lkktiQqGDr7eIeO9AJWn37yZce80UWZQQfWXrgdPm3xjH1QgcVXrtSDsUVG/sETV6/AMwdMdoEurhytGBK+XDdZRJOQSh1VLfhsiNya6iYWDiyRh8MrnOC/Izywn/hfHCvlEFWyh3FBJ9jKzhqs4ywZcH35vy0rh8T4Cv/mDsNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783885714; c=relaxed/simple;
	bh=HVe+u+ZDxX9gA6K4zH/2881QBRUKh8fYkNjuu9G/+TI=;
	h=To:Subject:From:Message-Id:Date; b=DoqRDSWV7uo4UdXLzZYJ9KvZdmCJofq0IgwEnP9D+D1nzYt5o/fjD/vz6E+Y/0TMA6gO9kQuybLrpvY9M+6uRahO5nWdZI73+s63N3OnsTdFYHsLjOyrmF/MKndwMfAfIfzN3dOQQRoMgPTetgVp0S7KvBaMUtJaPKTVCr+LnOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7TcMAbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7TcMAbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC89DC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783885713;
	bh=HVe+u+ZDxX9gA6K4zH/2881QBRUKh8fYkNjuu9G/+TI=;
	h=To:Subject:From:Date:From;
	b=u7TcMAbtB/Av1+AGqwZIiIwWwR90rRFoT4438O0ROb+VzJlHHC6eBPlJvIxKKBIe+
	 0zVawXf2dMI0Xz1kZC48iifQ+33dCrDEEaV58N3WPCBQ5mkoGcqGg2hQmbZjhyhOCF
	 F6j2R36EIDTx1m3Fcr07becx1bVIQBikQ7zZIZwM7TUZF/b3IhVJRayj2UWp+KFznD
	 Y0zfFWBcHkLieni4UpZoEYZUwtyTpmVJl6tUJBmOFojStIuo8qkYaX1CQlpdG3rk32
	 a19ziHGNFME/iD+Kat2iE2LrY4h5+VUD3JmnOcIXNxCdq4HZU+wx7sngsVdjSqKVNQ
	 AWA1VijQnVgjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB9CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388571368.12352.14886260266093918822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cf45bfc52ce54122afc3aac6202b6b155021d22d0311c4eb7236435f58f4ad
Date: Sun, 12 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783885713
