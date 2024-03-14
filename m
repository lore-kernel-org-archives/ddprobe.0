Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07B7433AD
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710424097; cv=none; b=swT1sMgmpdAkTOZ8RV7MarYpxgfsvO449M2a9fkYO+IXTCWButkuayl3cLIp2Xy9wLBMLBVvDFsqohyXUC3aiiG1JT+k7e4pTtKV6SfosYyojsad4rWfhVYQgcOejOsF3E49VmrQm0/ayFU3WPw+UbVqE/r25UJqAdFVvZU0gvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710424097; c=relaxed/simple;
	bh=vwX1jRDwZKFI1s4THLISux6espKG9CME5SThjy6/WoU=;
	h=To:Subject:From:Message-Id:Date; b=HQMeFzDXPJRO2gGGKGt5qxVQHRvyYNch1kRL8X1/3tDK4TnTmZ/45lLcxWyRjbIyFqdmBG2OJV+BNV5PG65zznC5e0DBxNiNGNHN4L+Y/GrfuX7GliXZicKf3hgWi6lQdiCNMAaercB9tBSr2kppMsjar4FYWHe6nIxXRgzAfVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBACn+gK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBACn+gK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ECDC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710424096;
	bh=vwX1jRDwZKFI1s4THLISux6espKG9CME5SThjy6/WoU=;
	h=To:Subject:From:Date:From;
	b=tBACn+gKMe5t+zeNiC/yLoHuwVQIYX9VkwEFBSvKQdwm7tv6Lg88YFkYg5Q7LBr4g
	 r3468ULSO7zRcEI2JSpcSXJqGow+hDhXVeseC8O/vntovVm5LXDXjQu3INLGy1MF37
	 Zw57q33trADchnoiztpHb9aFlEmfN2WvfdOiW49enBft/Z8jSpXmvafCcoyaLn6Xkj
	 jz19zN04vfWXv9nUK/tB3sZnzy6lf/uK/wtKygancF/0/ttd5zuspkQm6AkE9Jd3zR
	 lu6rlIOjyTnjliX6wiWg6dl82eyE7Yb4FdCmBM8+Lam92ZpCIFbaa+WZOKBb0rmxzx
	 CapdOdoUb9y9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619EAC54E67
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171042409639.9983.2226932846894506126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118afbf09618bcd8e96721810f7cfb715fb4451ab6c6479d7845fa6f497057e2
Date: Thu, 14 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710424096
