Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0012A314A89
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768338834; cv=none; b=pdboFxVlz2+wmGaV27FJkDm2Q3dY9liFNHKfElMcNId4DPcTo2fmTgLaO6+9U6/lFEieatT3rNGIghS9GXD0P+YL1kv/XjAOV4gpd0W/jpQc45FyciiKSL1cu/INUDWMy4p/SPUT4s2xFBrhsZAgow+0PT8OqPX+VOExJkUGVFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768338834; c=relaxed/simple;
	bh=miH0UCSIcowSv9p+mB/rPUoxlo+epmHHNknWBLBhn+c=;
	h=To:Subject:From:Message-Id:Date; b=NNpFVRUc0s2b8/vvuOW5WQEZ/81LC67vfdlsz91BSpxwtVkHfihxRmZGvt17JGvEgmmxQ7Ok6x/ndYKZF/HLkAghSQhWTRQlS2qMH6tuSCuXB7IO9o1hLOp+2wjE67dybcTSt6ZAm9brBAgXiN4Z37wZnq8OH9i6uOi+BOYuhTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wij7pckd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wij7pckd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B0C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768338833;
	bh=miH0UCSIcowSv9p+mB/rPUoxlo+epmHHNknWBLBhn+c=;
	h=To:Subject:From:Date:From;
	b=Wij7pckd0mdJyfkncT2ltKc/3lSLbSHOfiOB7Sy67nyaC2F1NIl9UM/IzCLVpD+ba
	 a4mg9fj9xivYXGylL9QNVMDLu6iYYiib54qOWaLxmSWa0wFcReD6yndbCSouS22O4M
	 4vOkYevn8YWNKWBSPfiuZuuWVQ3UTxpqpI3jF+XMG6br5GNpSqeKHQzL9KUc/wG5ZG
	 TWVxj3xzMdy+xrH1St8KzB7AZEWZdWmkYP4AS0qvcRMz4G/N9vFKw6ZkU3OYV0FHRj
	 /H5VPGr4nUqnI6YUmP9vo2vs+rzdKU+Goc1tCB6loPaYIlCuA1DcuTje7zBxilocYa
	 vtq0XEmbyYVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946CFD30CC1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176833883357.30766.7302646120744327863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1647f9a3276a0daf7be42c30b12f8a65e69f8f9a263d2b82d1533068d206c314
Date: Tue, 13 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768338833
