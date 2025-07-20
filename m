Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21188273FD
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753000194; cv=none; b=hrpveAPGx2U98A136HfdXL1lYcgZkgo0EvCezQLFQmOngnxJQe4Qx7tmYL2Ybhnnbg1RAEXj2O4aT/HN6kHVo+H7GWaWc1IWL9d/QFXXEeaSlf1Rdb2HqfqiGwumWVwH3J0MVmuPP1Du1fqErLaTs+zExXdsOUuhnLB+GLvpNYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753000194; c=relaxed/simple;
	bh=snRYF2KSDwAAXx3DK4FRXm5zGRU8pZEQtzgibhuZNsI=;
	h=To:Subject:From:Message-Id:Date; b=l7z+K8Rof24dokRGNRt+pCwaUAmQ4iWYF+RqxAw0Z1ECfXwHkpeVrto+u1UkHnddfNjuWxyaVD1Fl8PEb/bIOy26hhOD+Ev/g9s0M5XOYRgpT88ifRX30qYgn3MeNEeU2RuyxsZ1m1aZYIILAUmeeJ78W0IhNAlh/UORSdZ8Tg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9bVWBc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9bVWBc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA904C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753000193;
	bh=snRYF2KSDwAAXx3DK4FRXm5zGRU8pZEQtzgibhuZNsI=;
	h=To:Subject:From:Date:From;
	b=o9bVWBc+/cH7Ie6v5sWU23FSlY614+0gCt7qfUGXNb+XotdrIfIq8qV1myCBXsPFC
	 /R6w2St1EMIrqtM6JVM4vRs+qk+TCduQtn40wnv8CQ0YMppAw8I8SB8K//2IYsd/zs
	 lpg5zmp79EbNtU8LHYrfC+26y4unlAklCfcDUNITc6n4JryjO8V/dx/iBVG2kBEmIE
	 qSMWf5tkfnvPVvqCNoThh9oyyxwNbQf8a9LOUZ3nAmHdFE5HZRd0mDG/1/DRRmnFeN
	 L1Rbx9oo/aLTyxKp68gsEWpWQKyayBqpJTBtYCgoYMQsFnBkw2CXCQZKEoTHlz54Lm
	 H/0brRha3EisQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9806AC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300019358.29556.13768411008006356863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab68cb9183da1fd0a87f242640a36f7fa6c82ffdde28dff43751a13a8c4bf687
Date: Sun, 20 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753000193
