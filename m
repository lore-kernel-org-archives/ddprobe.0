Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE88152D2B1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789656037; cv=none; b=K99hpwThsTtmxs2zVZ2RbSxrBRX9DO3NkBsJ51JetCsIhPdO0za+X1shkF+WxFlVo5xXgLUqLsXcKdN+2hNHW42PV2UBiMe/W2noW/btkXTXwRvnLN0Fl1/kTylS8htikj+RRbV4Wr5Ye9vE0oV9ZhO+Q8KbmPX5EEHwkUPEN/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789656037; c=relaxed/simple;
	bh=YrnTGuQVwFeq/1RF7FM+DEJwiLRgTzC17zoJ9uHmy9s=;
	h=To:Subject:From:Message-Id:Date; b=X+STmnAU4dboeMSGqILu51wpAXd6YnmZ7LSPff7p3BWVDwCuyK4pld7BDwxl2sABCv9d9bEhZ454G1vp0z3Chi++6bHTNeesSx4mnm4Kq5rWdrg0TSJbpiPVlDgtXqRhQQqVIUHHeapbKmJk75yNkYlov6aslPtOGSkFrbLJtPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLsWTkXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLsWTkXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE707C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789656033;
	bh=YrnTGuQVwFeq/1RF7FM+DEJwiLRgTzC17zoJ9uHmy9s=;
	h=To:Subject:From:Date:From;
	b=aLsWTkXGxsLcF07QumHCmaXaVBSkUa33O+PzhfvwjyaiNO2Cg1ToIiLuxkv5t2XrC
	 sjZrSmXCC/jbN9Qk4PxNZ6F4LPxvylJeaipwnFAR22FxdtP+vmLMCOre7+EIkmJjbg
	 I7RDHRzwxAKch8IXzwKhtuLXeirlQMhPHuN0iasX5zpEAPGHF2gSCFkthaLl/fRz/M
	 yEJuuhoHBKENDzxKYjX0ugmahouJ9nKUXss4PnLJjfVnR69kgegUyhkiSV/2LLV65Y
	 eOSEs0o2bHZ5xPADk5GSUVjXN/cyCH8Sdq3AWX1xvBfqE35oXNPgDufjY8SyXbSWCH
	 V/TqE9B9JaHEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DCDC982D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965603374.32090.11121052111866380787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335399dc4b918f329172faf93350b578b02b5323a0a70c3bec8d5348e0eaaed1
Date: Thu, 17 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789656033
