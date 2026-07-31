Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3451F94F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785456634; cv=none; b=cnWHDAzThUDF48Ec7j52vBxZi2ubOhQnWUiKim0vcEoZ2vTS1zTI8iAOSQ/3T6rs250zonRhv+TpSCcd6fixJwntpuJ1/m1SzJJOghywzGZQv7YlI64F9GeLjYdxYcjCxpfCuZpxgp7o4G0iHajvmJdTMGRxBfGxCibpzL+AsmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785456634; c=relaxed/simple;
	bh=qXSkOvGxZ5jU0d56z1LteZ3hE9wl/1meabifiNd+Hfw=;
	h=To:Subject:From:Message-Id:Date; b=BkGVaV/VDO8mkCpKWAgcBA3urFTJ5wlglgjS4K1/0800phZgZwOk7DtuFec3RCGL9jceY7Xu9/ebwjzIroChDFKDJ9cOOl2r0YQfHlM3ugzMem8s/grGrNUm547sSYVz1I82G9P09KBr82SqNOtmu3KEyabxtlh7N9OGzcJzIp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1neKhFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1neKhFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64B8C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785456633;
	bh=qXSkOvGxZ5jU0d56z1LteZ3hE9wl/1meabifiNd+Hfw=;
	h=To:Subject:From:Date:From;
	b=G1neKhFbdPT3R98OvqR7KSkg9GvRlyyfXPbunUpPwLUZD795l667Tmtz8WBujRuMs
	 C43rri9eHdtoy/3gWCtDuz1Ijl+YoH8igaYdAu7/8JA5xh+yd/IbC8zReLBBVgrW9k
	 te6tYeOFsG/kBNnMYfS7W9FEO0CRN0Nait++pdJ8ouYYWJNcyfTjSjt5aAChYHhg+8
	 64HFJod9+serk9sPvpGjIBPCYU6cyax1wYn+i01N/KUL6CKufeWLZRx/Ce7tMY5+w7
	 8RbSCZ5htjz2Js+ZJKhAvr4I7n1eap1gmTCMQuopctCgu9tsTa7Yofp9EjdBL++KbH
	 R0PftFXWQK8Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E43C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545663368.24151.17962978967242929440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d78b95316a1557f71e4278a4b068b9bf6a38cc4a2e318e6369b0977dfdc514
Date: Fri, 31 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785456633
