Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185241CAA68
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771824294; cv=none; b=QWu7Q2NQaeBAeGsqzqiPfr2hkKsFDz04oLvC9E538LXSI/x8mkgYCBYtIE73YvVjh4XTFe8tbeMRTSpAG9sh3vYPAmZHThr8ij4T6v2/I0JCw1m8Wh5URqQSUiH/13bcPzGMaBySgQB2xO8g+IcHo4bppQSSQJIm/NPmTj53sIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771824294; c=relaxed/simple;
	bh=51Aua9YWhCqMnf+WXYeRM6IQcmD++eGE3C+JHtgHMWc=;
	h=To:Subject:From:Message-Id:Date; b=URRIPMKoqLul8cPhiBRe/5c45A6sFNddyUwIc5116FY2O6SilWCkGYHWhNj7UtTrgVMV/EA4LywBVcotxJypeu5iwWVWC5e2Nn2QwGcYOG7IDAeyTZKqpSc4slAjxaFo9j6zwgkPvHxEI4xQy/WZMl0AKhQp6B/7UfTnjgX9X8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByLuhVoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByLuhVoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91D4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771824293;
	bh=51Aua9YWhCqMnf+WXYeRM6IQcmD++eGE3C+JHtgHMWc=;
	h=To:Subject:From:Date:From;
	b=ByLuhVoe7n4SELS7ItujV4S5fcwAAorPL0pMlS1rgmBSNsfFzIxMFTGTb+NjlxfRd
	 hnVCICkqelXxBo8sFkKXRz/bpECDJQrD4epbr1Gm+WjTeK2ZeU+eyZ5wvBXzavIRLs
	 mwvyBZZAdl7lLUk5p7c99QkwSvUgK75y1PiV79+EWzGeeA46Zz0OB2MT2gaAPK+RJ1
	 otXEdpxQwaxwSL+W9+qpwammymCyGn/GK/F9Y7ICiCaARDj0UWL2p7dwJ4RGHC46dT
	 +Z5F6oSDjaOFlEFduD8fU8lEemjJVLGh23RkG2rPVoKmpTQQo5s/GTUhjRaosBLIhA
	 YRp340uMjf4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C58EF5877
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182429358.26805.15636299431063544658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc1fcd54b8baa250c6243b664bf0d7aae4de8e800b37eb731f7cfe80df83f0f
Date: Mon, 23 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771824293
