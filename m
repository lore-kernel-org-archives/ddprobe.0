Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C2327874F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768738434; cv=none; b=IlYyZdVZ66QYXK0OKqK11b67M4NizCQvAbm9gxnuEVbGK4KBuwKLtVebgYU8+ZNlCKiAiZ35jGdS2zENdFk5SD68pS+mCBf9uoYvzYLcBWWuSUiCZ2POjk7QTP9jfo0yLsR/0cn/EIIfa2skz8FhaD2Gp44orWd1pfzEoWpAt18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768738434; c=relaxed/simple;
	bh=HkGjw4mDfGeCrDfwCnpa8gu2jHRczC+WQC4xt659wkU=;
	h=To:Subject:From:Message-Id:Date; b=g+xvOyz14O4FOxheBtBah/oeOiy7Nkd6cooGRX6emZEa2y7MDEtJkI5KZVRIaSA//pEGT6TUSokZYlAHqPL8WbtSlIfmyGMsXxFsPmxZWEJcOtqiLqRDv+V4P8H+gQOELD2OhDYqyZ7UgKx/wnuJneOt4iEqty7VBDoun/A/upc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3dT+PZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3dT+PZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A150DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768738433;
	bh=HkGjw4mDfGeCrDfwCnpa8gu2jHRczC+WQC4xt659wkU=;
	h=To:Subject:From:Date:From;
	b=i3dT+PZjfr7TlSlm4Zm3kPreCi6smKXvzBSK20LXvRha3Xlp9RQx2XZ1z8iEXFCXF
	 SGzXuqxunKpukOc0kysk8r6IrtWFWlzjDts6DGZwIfZ5FHlDZmQeVOb+pMdW4Uyy6w
	 jwjx84G1m/shAJRJBdeWTtaq4b+XFVfEUwaYkpD8dsscdre3WiRoQ/NUiftPUFaw+a
	 u8BuFwqeeemDcGFCStcQzABvrR+7Xi4tMWvTCkVJvlMOH64RceopyQ93f2C9acvFca
	 D5xF3nLDYkU/uAZpZmVMo468TXezjDtMIHkOOZHYdpFAfM09IBHKZglLRBMidoi43s
	 p+nQF77pJfDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF5C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873843358.17863.7781617536835669806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df05485ef40cdcfa75d15657df6074a448a4ef88fd146e4fa24222e778fd3a7a
Date: Sun, 18 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768738433
