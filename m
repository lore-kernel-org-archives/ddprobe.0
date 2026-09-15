Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E941478E25
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789476634; cv=none; b=Qko49eTAKWVB5NsUSyyi0ApvcKlshf2b8ZraUrdvanelCjn5yQWUiog2PI/c9txgzNS+PrSxlYeulrfGQ+6lKi6U8mFhx1Iu4QUHUVLEhEZF9vgchB0RwnPAhDdhjz60Kdt2f3pX+MxqjEXczJw5D+LwfcqaNuAza5U3xmc+Oqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789476634; c=relaxed/simple;
	bh=Y61zkDeS3AAziPIS8rR9GgpBOP6iq9QVJG5BGhavSc8=;
	h=To:Subject:From:Message-Id:Date; b=Kwihwavgy9fsLLy2+IOC8k9tJhat/aCfkJ+HAKyioxFyW4t6n4mEqHFxAEtBKtInh9OtM4ijNSVnFQB5SUzPFrsjW8I3LbMdL5hW6Y6Z9/nbEGUECdMtBkbKOqKYIJ9hzU09qMezw5aKYwcWjSNLOmJ8k0nBfGhwE29q+pGMb78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h352Zajg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h352Zajg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF32C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789476633;
	bh=Y61zkDeS3AAziPIS8rR9GgpBOP6iq9QVJG5BGhavSc8=;
	h=To:Subject:From:Date:From;
	b=h352Zajg2yneuae8EJLB+5vMDZCqT/tg2TYsAs2ajUx212F46R89MvoDmKLXnGjsq
	 LYP7p9q8dHh8Zy8i6fywPk5lQrpb+PJVdSvR9CGtQIkQ8Inu2w4/nyxqqW8XmVFoQG
	 lJnrzIEX5N5a8f7yqwKtCjS9Tyo5MRJ30nxL7RosUhieRKkmFKWLhPMZncsrziZ/f1
	 oN6nLvyRT4oOcLQYJ4jzVif3s3Rny8Dd6Zw1fuu7mpx2l86GAOjXa+tk+hmTgj8Jsm
	 mSlJc4tYjQ+Ps8vcE9oqK88QYkeo3zcjfTanwMisR5qNoa85xvpftGJXO+Zbd+Sr/e
	 76sw6J66LIchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D9C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947663368.19824.7894434237996369874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6889e0a44355b9c6cd0ff240c029006eb4c8576ce6d123a39c383773a99f5b70
Date: Tue, 15 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789476633
