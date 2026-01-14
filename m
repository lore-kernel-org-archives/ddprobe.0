Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2443806AC
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768393434; cv=none; b=TTvm4qMXC9uMiNCMXqbo+vrudzf/x8vxJ0bLSjzJpGan/loMSOSdszCEyTVaUkMGd99POGFP5Blr8+eIB2XuurxeyZnGCFb1IOPamhmMVfev8hH+cZwM8+nJsfFI8Y6Yy5r7iFM6cba0jMr7QltIzCYx54Kpwr28Z9QfRe70sPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768393434; c=relaxed/simple;
	bh=H5mGmpA/WeZqQugLl0soH847nIsID6IQyjsBw24hiC0=;
	h=To:Subject:From:Message-Id:Date; b=pk7b8N31QgM2RJxN5ruVtORjbG3sRxwuITJSizCo/OYAVPHCW4jSwTmGV+oE5E+NeWO6vfv3XOCK/Z1ho8QCeEEco9mWGuY6PkNrhKQB5+gxr+SkLXZSAwdHYNU8HFz+BWDvb9ZkoxSZZ7Y5MJMuILW2pC7AwuEokwVXQFZ/Ezk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxJzaeCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxJzaeCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768393433;
	bh=H5mGmpA/WeZqQugLl0soH847nIsID6IQyjsBw24hiC0=;
	h=To:Subject:From:Date:From;
	b=pxJzaeChXuJhZQFl0fDbSam5n0xDJHJKjLGTRfylP2vvWCcS6Ln90FtB24T1yM5JH
	 HNOwFUXsepb+c2pXOGZ7soMH5v4iCFzapUX4ibPBgnKcNoJMSu7kMzgnvqIo+DRMia
	 weLgLxMeq3gp+/ndB38JRlnG8FGQxV90B3FbGQv4FywoWHQcNX5f4Uzw9uZN9t1MCR
	 8zt2Q16V4dgq4A9VCMsyCGMGkVIv9hX8fwLsalLmAxVmmIgIN7qq5hFKZ6qCzKyBhy
	 yqo81nULpdMIu3hUaLJJ+NvsYY8C14KrznZmCZW9Lp0yhpCZCfM9UIH1JT4Sdd/gTm
	 AtSdOQHxA0z+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057FD29FF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839343358.10831.1423945665905570069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1261f3c4033972fdec939afa37207f6a4bbc2f98a1ec28b93c335e352b1dd61
Date: Wed, 14 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768393433
