Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E11F156991
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737705354; cv=none; b=ewhe7JPZ8IWVuhYWhvhS3Eym1h8sD93kmhHTczzeSgPj0WEuvMDI2ndU14eujwTu2ipX/W9vyX6N39uEhdyjGShV/wv4EVLvEE+ympbDj7sYhn6RsEwdmKcsPxMJX3zN3pIfBpqcyuLaovrVVi8aEJZl1KrZzMfIF0D9/BbEZZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737705354; c=relaxed/simple;
	bh=8oFu6hltbjVWI1qyXR41HKAzGkIVqCFpPqvLqgLcI60=;
	h=To:Subject:From:Message-Id:Date; b=J9zBrAeNwFY78EktyTlPXurvdi86qn8Yb/EZ4I1Z5yc+ep5FW6yr5dd4i7XdgSXlX/DKGLHBG+PmAEr/1oujkheQKD2B7nqv3BLlFGUGbkLxDA9lFtYYXCWqbkmWE1IOl6NDZ4NKh1d1tGge1H2xGnwNsHY8yMZEnyEtfJwh144=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLu7dbjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLu7dbjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF77C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737705353;
	bh=8oFu6hltbjVWI1qyXR41HKAzGkIVqCFpPqvLqgLcI60=;
	h=To:Subject:From:Date:From;
	b=dLu7dbjbPcbQ5CQHv9C5Gdef7bAaM3ykfF4NlOCLDbN95OzGO4FqpmIp6t/0J8qrm
	 QEp93kS81gGdzKRedRNJBIiL31dzED5nZYvq8rTq6IAl4+yq6qGrR3mVuXCzgr51BB
	 ff9CRYxu90RLynHSZltdUjgS8SU3QLH7JlnHmetfHSnQ4shi2g9DQHNZnO8XyanCBw
	 yOiAg7muNaJazs47v4UC8o87LJRX6GfMccXkygpqZvYeD5W2WyWsm7PxQAB5Caw429
	 XE401kAAAXokhfa6KyB6S73riVqUWSNnrGMv7mKbcPwf9W8vwQ+NdUFpGTsJteqg4n
	 oiP7ooNzIOfjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9679FC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770535358.12369.14479817160107549159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6dc848107f58883b465c6361ca6dc1a15fa4c1c4d5e5f976bcc55dc1cc5ae5
Date: Fri, 24 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737705353
