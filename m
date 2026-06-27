Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99DEE388E7A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782557914; cv=none; b=My5f1IGCXGUMScaPA+4X2ejh+8gT6WZI/05x5ehJ+C86Y5W8DUzzrzrVSZwlqK6EBZpAOQlz+Jq2ZS46i18mHWNBBmRRId6rYFOmulTbL7HVAZ5CANtaXZFKwUHJBrctwPXt75m7JEVSI2TXOsFhms946PuXxXttVFcWBxOyEIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782557914; c=relaxed/simple;
	bh=FbzzzmJmmH4hXtBW8r7utn8ZnJZ3vRRERpaCXtyLnAY=;
	h=To:Subject:From:Message-Id:Date; b=kyNmnhxXAyxt6uY8NedznV7VhM3YFsNqK2GCka48agRAJulkLHQsKsvw9w2IAlXzEOHzpoGkWtaDSEw7aP5XvrnkmfGvFW//YARrVJ3A7URyc+4uAdcYZdejgaHJI57NUCzG7vTgzD5s6RGlZWU89VDfqmmoXYhapFCIWXC4+ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8NCuSUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8NCuSUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF225C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782557913;
	bh=FbzzzmJmmH4hXtBW8r7utn8ZnJZ3vRRERpaCXtyLnAY=;
	h=To:Subject:From:Date:From;
	b=X8NCuSUD21SjMvgsTc5t5T1GVzbo77FlALb+7TxPhz6MvWHOKcnPIMQNz7w+SMdzB
	 vc689kG6uvpVMX0XQshvEhgYZMJxS16QXc1/Gfqa0auDV8hXROBtzRmzRycreKib0r
	 e5ly6DnNPzJPSygrvRoalUlQW5szpUX1wwHYVBz1Z7TzUeqFfZI9G1CWctRINhGsDw
	 YMOjtPBbHzXR2csRA6pwRv/LLWF+hks2MUr7dhHSuNhdK5gYH+nXeAcxTwb/If3NrU
	 WLoO5P8ZnqeVMSG+KzOnLi0qW3CfE67vPLJFMr2jgAtfDpGrqGQ+Gg7EzkdnZ87KyX
	 QkqYO4cJTtMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E11C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255791373.17592.15293668195442408640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96856f4474ae7e850d0cbbc7cea3d337d364861162f278f9865f415407622f3d
Date: Sat, 27 Jun 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782557913
