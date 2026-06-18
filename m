Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243ED3A7593
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781778394; cv=none; b=SdaEBdOz1WKCf1xoGJi2fZb/9Gl+ilJgDk3aHLUyZsmYtF3VD2Nmecliw65/vaehDZ2bnu2hgNgJqBVYoFG6tAc0sJSD0ZCajrNSB3rB+FjAvskVyrH4bkXCUj29Qdcomb2CwPot5n5yzHz9X2JFwr5MjcwSTlqs0OSGTG48Kvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781778394; c=relaxed/simple;
	bh=qo95HaFrgPVqpJEtzmXS/JecmeSI6t+Ur40kP8ldQxs=;
	h=To:Subject:From:Message-Id:Date; b=A9qurXpw8+NV4bZeXHU6ffle3f28Q+ECwfvAsF17b/741HxkukN60crbZ2BD3rvUCI8xN0I7JmQiQBH+7WF6iLAFii41mW4NSpQF4LebwKVm8np0WMDmSA7MiLnLYh3fHpaA4/rtNjHkrdkahD0AKXHROGp0rB2anAWzYfJ4mKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQFyQRWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQFyQRWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA536C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781778393;
	bh=qo95HaFrgPVqpJEtzmXS/JecmeSI6t+Ur40kP8ldQxs=;
	h=To:Subject:From:Date:From;
	b=XQFyQRWal6dSyuo7G15PF3o1gOWWZxuUk64/abmbqCKdMH/+TF+8j51k/iyYsadFo
	 iB174jYYZZ+EVqhEKUBN5EAYwjtixAcEgzCwnqWvVu3s89IxAUjVA5PFPJaxRupIyT
	 St2TRhf+RhdrBtOWMbVD8amM6v3EvAYz+lq9r3RUOPdZDeLlT1ddRHjdhWi0sHZwFp
	 XApn+JyJK41QMXDDAedKjYbpO63haPZ9hVz70c4oCNGVXO2R1jJjyzacm8nxg97lyg
	 Sa241bSgurCF7ORu5abo/DKk59SlzD67smwGHJfRZxWvOv4q/CHLANilze9mPEvVZr
	 PWKaY8/y3XeDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD42CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177839370.23960.12142545775393257523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e2b250d0cd480d5b8d8faf7530a0974a186ce273bf2ac5cafaab8f67f274a4
Date: Thu, 18 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781778393
