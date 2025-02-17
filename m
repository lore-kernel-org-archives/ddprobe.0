Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322CA372
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 06:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739772534; cv=none; b=SdaMpdtICh1cZkbSNQ/LabpkcScTQ/2ZshOb/7FQ4IclgWYWlV9Lly2DynPo3M9zEb1kqryEXZXg3KA0UyUhA8mnkuLZLGKbyZUB9T9t2RFDkgxJWuifBw2NWkfMQAvQdUHix0s9IUxf0s8CB5RWXL740Zto6nuNSmUXBAzNPzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739772534; c=relaxed/simple;
	bh=DetKR3beCI+UtpUKz6snbCLwXmQLuzhhIEV0MJyQwQc=;
	h=To:Subject:From:Message-Id:Date; b=NQ9dPGND4+lVk94Ef540jURQ/3agIxLDTlwUaQdWlvDemz+gVb7zbXfM3XVSgCemKSguyi+utvZThCC0S7m/jzvS3R1mTx9GCJ573OIXYeD7xMAMRkQ4qS2vdl0c5oKbXcH8wtdW9VLs5FdesPcg8W0mC7M86e/mDvliwDDebcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNkrqTBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNkrqTBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3EAC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 06:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739772533;
	bh=DetKR3beCI+UtpUKz6snbCLwXmQLuzhhIEV0MJyQwQc=;
	h=To:Subject:From:Date:From;
	b=SNkrqTBUPxW/j/LeD90G0rRiev+8+1IrgrIjvWwMR5d4HZXeJ5lUHfDY6jJ3CkGCB
	 1rtfDs6oZTZQoyeetD03DZB+eRViJ+JG371cjQz4/swXrnSK7iP9WTFtIhJqZvjpHG
	 oLO3B5a/preUUretHYz0HJwKBCgF2TOouOA7fYDKGtMQWsslW8fbCZE2+EA2Zr8eqx
	 Yeu/ZOP1mFyGfo2SASxbbOZi9xhpQH4HNcq8Fj2e9HkgMYCKzVBEERk7+ICYJuX637
	 KuuOCOw3mICQGKTUbRJakDqlsHQHki2blg7olXAreJtqAdTRSuI+IswjD0FMqggRV2
	 4gIVWtc4jUwqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F23C021A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 06:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173977253362.13931.6790111328570684066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6059742ddc9e455445735295ef86c1d030057c699c2198886685a8a625f189f9
Date: Mon, 17 Feb 2025 06:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739772533
