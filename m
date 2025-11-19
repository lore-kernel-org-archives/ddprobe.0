Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101141A3029
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763524914; cv=none; b=Znh4kjPJkycpjgb1rPKU7PmSstiWONnDgGUBjSSo737V2lG5QBdBxAS6kOOvmqMn4PvYhdkeKNQQbD5SqyMTiKFHwFR798tWHnUN1ua0qT7QbRKf6CqIfeNaMlxkB23mENulUl8SNU/s+lFosGz57YhYZua3+4QTv8zVn0laByM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763524914; c=relaxed/simple;
	bh=xTotClvferds8oekgOtRpUU5Zj7CORTFn4BDtaggwMU=;
	h=To:Subject:From:Message-Id:Date; b=OaXvqvR0JHinybdRuLVE5H1CcGaTbLOkMNMXeC9NXEVEEUR15nARJjTTX0WwtsRDFf1WzYSDkrtVhLHPnHbxJLYNrhofAoFVh1jmBH+RXhdrW6tcgR3Qie86K5tpL2NL8zIhZcs5aLZ1RzRCRWrgaao1lNNGT4zwIlU782AzTco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGy3coZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGy3coZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CF9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763524913;
	bh=xTotClvferds8oekgOtRpUU5Zj7CORTFn4BDtaggwMU=;
	h=To:Subject:From:Date:From;
	b=XGy3coZtPLR8D97mdL7+YP8t7SqG3Binc1yZOzkT4F2yiclRzMivEeZ8FCKmW8ln6
	 zw88craQIoZDCMBeDsScTx/CfKtH7ORfnGxAN1KAecggsgtSf3kU5NZqBoTPX8yVz4
	 qR8XbFPOtjyckBWDG8xsOHw1Wpq0Mo152xMLpjjqKOm9ikdMnMDGFiH+Rr1IjLamow
	 apO6oB3/UM1kUksRjDl/9k1cEqkTbdv9sfVSHAyv1v+kPNGLiuNyFLqXDLoJGhxGFn
	 CKSTmuqyozJehMl6rkQ8k2rzZ5VU+rVSlGvyTCeozj8oJbk3tj+5g9Z+iOHC5ZbBXr
	 QgDH0SeFbCIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91580CF256F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352491358.31558.11817614304344827025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14f6ecda71030dc71cd72e77eb3d0113cb2765b887bed4f20ad9d9d0c8a549d
Date: Wed, 19 Nov 2025 04:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763524913
