Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA5B285CBA
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775067934; cv=none; b=c2eiuODaGp89sDqtyj6XARBWglEppXSl1fHPEp9GOfEDHcHjlls3sb9piF7XOkJ8cv5cSyuepN1MwE25arMsFCAjU6G8R4ABvycBv2nf9jNAfIOVCW0W85o7/PO0WfWy5E2PFx6b0mexWcGxkizDovf1z9HppT23t8xF+kBtKqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775067934; c=relaxed/simple;
	bh=UQggCrru+7gK2UHF1Mt2GyL8kWXBy3q+0KxKRPUXUP4=;
	h=To:Subject:From:Message-Id:Date; b=aOj1yRKY0WVABiGP5xr5Gz5LKGBqxJLi0ZrE0SKq7vYtdXvGLIQVPSjeFJexmvD6UQL7v/iFPtBVOSf0JRVx/EcnvfpsgDrL6R58ywrVFRHARKkuqMAPWz4WgDFaR/Ge6LJ8Iei0XMPpA4PuJ6g2zSl6m3QsDy1tZAmvY1HkoKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtEOdSH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtEOdSH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0EF0C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775067933;
	bh=UQggCrru+7gK2UHF1Mt2GyL8kWXBy3q+0KxKRPUXUP4=;
	h=To:Subject:From:Date:From;
	b=AtEOdSH1MBhnrIfydfa2aLmx8opCBGj3rYnlSxmgQuNqBVehuLkPkg/13LrtTAHma
	 AyO5GRJpyra6Ub9RIl1zpjU/6tfYDJK9BiUj4T9bogzcEqAVsNCZ3vmpgRucyS1lem
	 8kjcussL/WYBPNyPcJLAf8H703+FliTXW8gTX0h6QSPKV25I+jrXNqiLNQAZLiqbVY
	 YgXbEDxO/FRza+iBO5s2/TM0g6b3KqYCmop1DLWjCsDSN4heO2Qp5+Tv++2nT7zAW5
	 KOb5LY9UPv1OWjMlqW0ctTWRlvqOkIKohvTx38kQ/y7e3RyvkX9R8PXE/M+V6URxXu
	 mdCTKpCKrvC/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC8A10FCAC0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506793369.6576.5604605876889107519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1456af29f393129debb9d230e903e62f4515af0249ca73a9e026d90bdcc52ff9
Date: Wed, 01 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775067933
