Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D16B1CFA0
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711475297; cv=none; b=dsPplXcF0ORM79QUPpcr9tuBjk8Z7ANQOi+rvX23kiGLcvwxee83TsEgAViT4aAxuBB/KeivV+0JbOkgapZGPcc+33uCBJQ8jZJL1OwnKGAv+e90hbbqFchEtRr4oBLUmp71hotEwfrGF9vx26bpMyAQV1MNjCg/FNXL4odFcAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711475297; c=relaxed/simple;
	bh=i2xchrU0de7Bs3pRDLJg83lcDgSw3J/yXbW6/gZgRyo=;
	h=To:Subject:From:Message-Id:Date; b=jfYA50z9+GCVzwNR5uRDuM7H+yXKzbKvFa4XKLU8GKSgobsh4mElsB2e/vG7V0nL/N2P+QSrIPYG8bN064bIw8G/o4EUMEu+oSP4JyBZm7tPEdZ13gK3a4X0Bo9eCKDLu1Ge1iEjEHF8AOXLRGz49EGFXUSxgy7ysLqzrtMBEtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAhNSW6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAhNSW6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F34C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711475296;
	bh=i2xchrU0de7Bs3pRDLJg83lcDgSw3J/yXbW6/gZgRyo=;
	h=To:Subject:From:Date:From;
	b=JAhNSW6cWwn8J5IJJ1OIh2Qqs0cQAqPi13QB070sCrLTPVEYCe/3hCUFjd057S888
	 aW+KBYZBXc/yHuKEE1+GfB8SsK6iZ8sTCrK3AcO7SfttUFsLuzNTTQldgeMZnpimBo
	 3Wp4cTHuI7BdjUJFgETQM54+kzNRwSSk2+HLZ8F4CwAfSuoCXHx2APgW0u4OymMVfY
	 6Zb9xzDUBNmEK351k7+bZkSQIm7KwfmRrHKrgTBJqqzbmaBDksF0BLAjoArLCUR81D
	 usqKfYxFccHUvrt7MYz8w/ya7t7AU0ZpuPkLoH3iOW7a3XDiFZ6/HT2dIM73LKaQKb
	 e6Kj23EW5vkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 700DCC6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171147529644.24911.12921515040482054108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07204504f7d68ad600294ab8c072a79037a299cce9e92ef366e0808c847018a
Date: Tue, 26 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711475296
