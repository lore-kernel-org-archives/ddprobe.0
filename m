Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549C5208BA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 20:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721163323; cv=none; b=LcNzUUJyqw4/YeY7/SMf+2tpWmsaiAAkKAVwLUiofyIZMiKAsUOdgitsweHwycxIQhigloqGFVQHIxK9uMSO6snaHg9zdbTlHqSt2OFnf3Y4gC4ViQgQCfnTiExNEA4yikTdwFPbMYEuhcyA7+tgy75fWbqUzFShmUTtNYCDqsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721163323; c=relaxed/simple;
	bh=BV5RZNRI1EI0Wa9YFVYZmsbzhkIwXCrTIdPZRqk2zps=;
	h=To:Subject:From:Message-Id:Date; b=oMmD7oVkLYBzcK+WPRDJoeN2ShcL1+afoJ9q0ZVZPwzUGREV4nHnY7VfnArVmrh0SnQcfk1EzTitNNHlil7gRd8zH3aWhX5TaXauadByj1vHGT7GOoFPKA/cfOP5q6GMG81jY5Yy4hrPuGzONv2vqSKIHigTneZQorzS0Q5zGxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk+ps5CW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk+ps5CW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3764C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721163322;
	bh=BV5RZNRI1EI0Wa9YFVYZmsbzhkIwXCrTIdPZRqk2zps=;
	h=To:Subject:From:Date:From;
	b=Kk+ps5CWo+2rTk3eOtMBB8eear9hHWd8BS6YAzAxmrpK3PJirHYlqNr//yccphMmt
	 3SuA56K38GDBRsMmxyhonX/lvz6HfgrhC645dH1zOhdNUmIKyWaQvEKDNrHFCNx6+x
	 EGPJitKMFvsIG06hqDEgflgKg33mBMAKWLlOBYnLAPu+PLgNpihQQwR7ocfTts9oH2
	 QOtC0iY7r7ptIC1GLYEFLBydiSnYHEL1+m5sjn4gPFL586QW3zDXW3ZZJUrUmAdSEA
	 Y/TA8cR8Gux3UtNwzzECJOXkvQKnJ6J3gdK/DoqGptmbWsQ25F+jYzsT/wo9OBN1o3
	 iSqUfkrUbo0Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF484C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 20:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116332277.10694.17696107901856528556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424ef8f19486854eb87a5baaa41017f2a95550aae19715961ff7208190a0f07e
Date: Tue, 16 Jul 2024 20:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721163322
