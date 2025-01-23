Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5F914831C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737608754; cv=none; b=nvKgNuGxxSO01f5QOW54KwvxjbpzONyBAOhO4eO/0EM4Q6cO1n38laXJ08LOIqOP2h6PMqT7wdQ2JQ0EnHK3hN7dsys2eybd6DiwULgrHAVjNCB8gtiQ+7rX5w4OvUdEF8HplL5YN0+9LPtlPgFfDZFq5XKJdOcpKyhBv5g5Y7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737608754; c=relaxed/simple;
	bh=kBSmeJAFPlTNbUXs6QWbrtGWRzuWL2AW2p+fJpPNFwA=;
	h=To:Subject:From:Message-Id:Date; b=RaDReJ4mnkKtEUkc5YCm8zstsmJLIE1PXaHF9dlOrCAMaVyI51scv/smEp1MkJdYI610Uf4lwxP3Fn/6Cg+MbnGICRi718aomgcfrWxRbl2ILXgSQqTcM+k277CVFsbXFncTXnlMGmizrclp4U0pZ1ICmuDSeuqHUkvb8Wegpwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4Lj6aHv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4Lj6aHv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A540EC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737608753;
	bh=kBSmeJAFPlTNbUXs6QWbrtGWRzuWL2AW2p+fJpPNFwA=;
	h=To:Subject:From:Date:From;
	b=s4Lj6aHvDXYtZ2VbJOwOZ52u9FCtf5SGBZg6IHeC/mjqPhpoR3hvOnSHhvBopBi3X
	 p0efjNF9mvreiqnLRH/rcWp/W4HS+XPKFNFFDe9bXV4lAnlHda5PgA4smYnuMcW06Q
	 Bp7CRDRZb4MjlezKU96Tp8RHUMDs4dZfAhC1mk03Jshth+J7gLMEaxr272C+eeKkr0
	 L7Q08GPx0M+enNjrEEhRER9dAs0scTLOfJPeQqP6Rm48J2LcCWJVQSYfwGBAoPyGP2
	 BQA+PLUyqhBM+3mDODrLNEiYGSd1ZzVOgX+wZ3YsSrXd9ayw016MLIXYoruUks+tBI
	 mBAV4TQkKzX9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B78C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760875357.21813.6469929377841137354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab8628e0504a65ef6f0c5117f3f62db2befe2f1b10dd0b31cb6b6f3d58fcae1
Date: Thu, 23 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737608753
