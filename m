Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3DB1F8F1E
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732707954; cv=none; b=p3NjBd7CU0mc3M20oNIm9nDprb//XejDk/e/wD3abOpo2oWV2szFeo8ggQ3Y3WQcaKRHunmjvHHUiYtRwrUC57srYitM1K0bsFDbcfOoXYqL04+nF+4upsz0xtCwJJzHu2o2jkdCtJwydnk0/TPEvxd2xLIxwAMD8/wS+ZlfN+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732707954; c=relaxed/simple;
	bh=CeMR+2cM5uymKsW0byasWoE9+tZOXox7HZvEyJGAL3c=;
	h=To:Subject:From:Message-Id:Date; b=Cvoc+RO4HKbfvlFlofoz4dBgkNzGEi47r1k7VXDR30OVJNdLmvxIuYEq0MYK9059B+Y52GHad9IpFYH+HglE1SakB7xFAm3K8tSlpX+3aoaKQ7B5lf02LfpX+FSDhTjMQLgg3FkP4ZeTawKWKuCsaM1jDAfpEqnZktxYtVDGSIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OHICRgyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OHICRgyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BB3C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732707953;
	bh=CeMR+2cM5uymKsW0byasWoE9+tZOXox7HZvEyJGAL3c=;
	h=To:Subject:From:Date:From;
	b=OHICRgypAywXovfl1H+UrWWyzbES8veCMBV/m6FEzCDGPcOi1R/8JHOybYkWPVolV
	 pqQ+YDx2wn6bVX1n9bsF3TQj/9FkuQXMDhR51Lw1tE9UtJ+d1+4rtV2viIrWYN+wO5
	 Kdq3oaRKxfUnavW8GV0LwRH2y2MGiVA/8z38fgIgl2d/4WXhB2CsftSKPrbTQVK7l5
	 owxE+GdrQlsGzRJTPo6ZYZZgVP+PY+EwT4E6AB3gguCQ6Vkk2zRucQ+2N4Z4XCmDZj
	 HcVFD8YzIgjFc+qNsX8mrtX7gvA7ZuUpwOGT4b62FUXceP7UZnvsYhPCASx6Iou5Hi
	 5YK/C8mUF6MzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C07FD6ACC3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270795362.3334.72936568607881805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f1ef1cd19f458d97c698e1bc31bbac641ba00b6c13ce54ec503879d0d06074
Date: Wed, 27 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732707953
