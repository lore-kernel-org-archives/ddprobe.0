Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2933D1BD018
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736702154; cv=none; b=LwGKsEOPH+4KWBPR3gFYOAA0qs0D8/K2BYnyKLahGTIph/sQ6uvgaeDzRoqC//YC+Z8J+bhEHff1YdYr34NMgWyetblUGzha8FdmiNXiQsvtKdpuqFkcBYyZIDorCV3+AZcbPqXYsbJ7B+YPwEoYZGJznPgTXXyDPWWOSg2rslw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736702154; c=relaxed/simple;
	bh=xaJvzufv674GzsZV+dhciGF2j1uxL1S/0hWiiQJFTHc=;
	h=To:Subject:From:Message-Id:Date; b=hN8lJ8cZsqCyXU06UV8gKtu8+SVWerwus+gpZU44bNlu1sq6KEO9+X4/4hETE1Xty68laLWRwgAu7aAARHgUsxYSuZ7OFxsgHZZPayesGfMyxa98HbmMVl37BroHYn8AOXXPuDEYUkvqY2Rvx0BxCOeskOfQkYexmQFGzFu2L6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOnfRVya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOnfRVya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92C0C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736702153;
	bh=xaJvzufv674GzsZV+dhciGF2j1uxL1S/0hWiiQJFTHc=;
	h=To:Subject:From:Date:From;
	b=gOnfRVyawhY3A7X0SQx5NVluWvlugRsxAG9N6AKuyrpV7p83kfLB+NaWexqUGZQvP
	 46KgR2aVmozUhk/fHEl9lwv1KZcM4VuKxcIlj+M5V3ss2s2dkmKPBpnAAcHaoJ+Zfx
	 QNsnqzaH6pnNeooFHhSNYZBqcMnJ0iDiKpdcmY9jhB2lALUvUjbsS0Mn2o5UZdFWtS
	 lZ/u6GMkE0TVvdGNsB0VBM2rVJETsWkT7qAXkcMVqrjCrMRK7vlpmPkYMjrSwcQ2MU
	 qY1uCWIq4QODPcohecl//Zdt9Cs3ZJ6wGsMpT4mIYQ4WUMkdsbYgS76U21znrejd5Z
	 TMIsCPqHvEnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933ADE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670215359.11912.11195729558280293161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9297dc9d7b5622abc0aa15c2065a3d6e4816949d57f25b35b7e4b59f05868e64
Date: Sun, 12 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736702153
