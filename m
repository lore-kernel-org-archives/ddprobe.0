Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71C29D29B
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756205994; cv=none; b=LMqoDJ49z+NrqNVkd12+1wrIatUHZOEH9ix8gYjB/hxy1tECC2054pv7cQus1BMMyNyyRxeP6gfp1wawrxf9c+uYa7B8BGBQKrranSJaCk7u3GPjByAUad/T09Xaf0QHXYD9py+hS0QyLEVsHhUEOiJcyK9u67v47Y94AoXXMuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756205994; c=relaxed/simple;
	bh=81VPb6Nnaj+g3cZsxixIOFU9c43YEp4Ea+DejdVKNzE=;
	h=To:Subject:From:Message-Id:Date; b=naKBIbPUx+3hJyobKfuLJFSWxZe8mXhlKFMGf8KntcH7EpvURRsPYj81vliCnwKzX65wENwAnEOEXsoeYm9tw4IxiWfPwxuiDkGL8oUelHRippVeZp9z1X29xvxUsgiy3s2AwW43N49jxKs8Ua21e1x6/NCRnydyvnT4/Ho8mbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUs17QS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUs17QS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9C6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756205993;
	bh=81VPb6Nnaj+g3cZsxixIOFU9c43YEp4Ea+DejdVKNzE=;
	h=To:Subject:From:Date:From;
	b=lUs17QS655kr8D3bm5/aBYyzZVfrgqHjTKCUm7MpQ5jM4SPaqIqDEwBzVdkq+Tr7Z
	 zVM8wcoJCanBq4eEQCg3ndXk6CjL2cZfr0FbdKcLFkFxDlPaA8dibEtv+NBpTEdRK/
	 yj8qXlk3nLhaGk0zHikSUrGWhwbKc85j7axFyfxOSr8rNg7h1rJ6KU/XIYEn88LHqq
	 QF+RcbvqZJ/owVDKisE4Y4v2wMOqO37o2yI3T4Fo1CTNKPK+16sA4LcaAW11YAyqsg
	 Y2nK2qbUboR1m9aVsWcyrg6PHjhKCqItINaKvRnu7dgO6TI+qIZ/zzxRh7BIJmP29/
	 bjZap3/ZXnlDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC83CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620599357.20011.8983341084458307732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c8e5adbb5c0e7286c12c6475096db9ea949393f28ade1106728d453053d2d4
Date: Tue, 26 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756205993
