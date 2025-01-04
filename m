Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A22B1D5CFA
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024154; cv=none; b=gyYYXCqKN6b+SM/odkvWc4e5yJRvgUcRPzW7yDe3V9TxjxbYR7NqwgYUH3i793M15r55L23OzpcyTPBhLInJiMrGTUx75U4QtG4iOBMKLa+KVTyoRtsrKQFQ7zCt/HY/8R4eQbp/0eTBg4+qfkxHfi0O2qHITFlZ/KaaZA4ofJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024154; c=relaxed/simple;
	bh=noAzqVMmfMS1Vg3qTj463lh4CrhHSh1TKSyJFOSmDfE=;
	h=To:Subject:From:Message-Id:Date; b=LJVAMgEVMTrzcuW20o6+evS4BxrMsv3IK0kpQ5zpYYebM95zMeslFNR1yAm6dFGkJznHl5Y7KJ0TLN1Z2Pei/vzZdyPj1WqnTEUztMTKTz+YAmcZP17Pd6mv0f3b/whD8Ek583CUGxa0menCdZYiDNtOh5dITA2mUDn9p9IXZpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAC0hPcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAC0hPcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13FDC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736024153;
	bh=noAzqVMmfMS1Vg3qTj463lh4CrhHSh1TKSyJFOSmDfE=;
	h=To:Subject:From:Date:From;
	b=GAC0hPczfrJMbPbAAaQCegpnJyRhzU5JgxRFBDst9Acb0NzgyJ/qcZbfjSiuNLOU8
	 IhE0L7QPwwnMEyYV0cMCYAbF4/QLvc3LPIucygQgqp6xoNE78WkmwWeyTnQBK8XuE8
	 kcsLIbU7MG1QszsETDmWk6GqlCMK00YAhFJ7P3o4giUlXNadM4nC8duQKm4F49QhSt
	 2u8YyfT/5lhPjnA1ql285zL7lNj7CQ4Nri3wOFok6nsxat5avOT5NGQTVMnxfOL8n8
	 hqRWiXJFM4XSYeQeOF2If7Spec4Cjq6zmlHVThpSIX20EglNoUom6rnx40oqNiGmpW
	 b37J6Y0noudSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F70DE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602415359.3250.1604286219512740818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ab8cb1cc863e93bbdd326b607bb4ccdc347d8dd0b239ddad87d9af199b3b794
Date: Sat, 04 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736024153
