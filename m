Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEAD1B7F4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755481195; cv=none; b=GkaCR+5SxlLdpc2TTFyWfzmRz8/o8uhlAbq0K0/TPQN+mVAQsCmKCaQGlcBfmfOl/yIfp03fq+FHG02bi48yGrabExWWeIL2cXwASQAmDdJ2pOEFMobzvAVf+sdf/XgjyMpJalPEVNwYs3UOz4zjfpwV9vO+sGh1cJhmRUkLU6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755481195; c=relaxed/simple;
	bh=U4Vx7KGc/uGy63CCitGo1gpDjv3zJ73S4vHsZNmePUc=;
	h=To:Subject:From:Message-Id:Date; b=t6cI6XhRcfqmp/QUf5SpYCy4DYm81Ixg+5Y13EmvrQhg16hrU2Gtb3NeLo8IGKr6k2jVTq9GsLVja3aYLb34llZJzr5RHYjNk03A/we39zdw+U8HCo2khGvArWQ2Lq3J2CmBtHrkcwlqcXt9SlMdqCdQS3M5ufapu8bSVYeuyXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muhr30Bw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muhr30Bw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1702C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755481193;
	bh=U4Vx7KGc/uGy63CCitGo1gpDjv3zJ73S4vHsZNmePUc=;
	h=To:Subject:From:Date:From;
	b=muhr30BwIteGX0TbyS9UdqlobZCsH/uCmkhb8Mdfv8ks5am6ZzMSHmCjKlr5e2h2F
	 4qRzpppZVByUOwev9NKgaR40V0VpU0j2HYGRxS7yrQSiq5D+340Jynw/zNZX8ElL3v
	 eOtFoRMze0B2r9NYQDNC9FhF4gMhIflugMBelkKO/2fMtqZp/Gd8FILgLSSHn6eqSO
	 taL0zk/vaZ4tjtX6uOV+XqoX93z6pwgIr7zFytjUWyZStaWPtlFDGeVqleDwRhcLhK
	 Cwj8yeAyGsbF1hJBZXYHC4MiTzV4YdLz7K5GJm73LDO1MsGoHoG+RdScAqmfOurhf4
	 fVbKMrhaLLIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D5CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548119357.18204.11108412836996182731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373a2733791401ba2a98d54296f8f2eaa9dda8ee6843624175bb781c597d1fd1
Date: Mon, 18 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755481193
