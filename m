Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618AE4A1A
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743061195; cv=none; b=Rf4lnJ36eivkqqVq4WyEfHTVFlI8FLHPvzubLVZ4P+L+3rK9TbmN5raH+kMs8nTSn5RbOKZDbGKQQCDv3n6pCw4E/NPljXIeogDj3B+UBRp3N0O847AZizaaLwyfAh8rOc2cQnXSKHqF3ulzAtPMj2F5Nm4/kfjQ7vGfoTM89Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743061195; c=relaxed/simple;
	bh=u5WG3Zw1e2EE3ctlfLtYZF1Or+F7WMr/7UbEj7Uw4QM=;
	h=To:Subject:From:Message-Id:Date; b=ACn24dxW657tvVhXaRykxp5q+NCUPZGdb/K8Nqksylc0d7E6fZF3vCsUBkNrwu8W0Yw5NlLhV2Cm1ObWcXidg+V3as+ZWNoGbkw1KMP+QheFRdjrKK1XC/dzVyrT+0qE85Z0hN/C4b98vrGbTO7O/h+ythE9h3ZIdP2ZwxRFlDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAqlgwZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAqlgwZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F74C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743061193;
	bh=u5WG3Zw1e2EE3ctlfLtYZF1Or+F7WMr/7UbEj7Uw4QM=;
	h=To:Subject:From:Date:From;
	b=gAqlgwZMs8AVzEtsSUxxc+ls8POaNkRAgr5deqiqZweuAVVFy/PERldiVn5T+XQgT
	 r8EK5fS8MFVIrVNBYihgLfHNwmVACeLE1TebfVDEVf/ZYHw+uTGOoQqZRIv1siKoj8
	 WQcxrXe6lVvlvw7Pij745cU/UY4g2P2P2D0orpW2YXUMHwyiqrX7Ugqjv5Tt6gTF9n
	 a7hOvdLc4KFwvC+FGJDRrhLzvsGMFpVfyIgLFklAZhgexJsbvkp60iOHjvQ6tA2uW7
	 LoTjleUaSOnb01KFvKZH+8oVBwaeAND+SakMv4KDxAA2NJnspN06mU8ct56XAvNpRK
	 HwVXI/WneUMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CB8C3600E
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306119371.21674.18000805467260568037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0256984e5656ea823539b45100b205f07cc0633aa1b7adc0d5acaff4126452ba
Date: Thu, 27 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743061193
