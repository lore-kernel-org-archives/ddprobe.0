Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1268A20ED
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714260143; cv=none; b=cmxy/Epi27qguAW6xsYGnCIFMHiEaLAXMCgXTqg873Oj3zoC3ZjOeXwl/pZHAi8eP9goQ/nt9vNHHaEq+HvmnTdRNb3+t5byUqhWWrBT9Rhd53UPUNhSPnVFSwv1rJAYqndwqkvQxS6EOvZ1du3d8avrT5XW1s/s8TwdFeBDnHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714260143; c=relaxed/simple;
	bh=LOGkFTvf4eWVD2FKJOA0JNNMB69nQNRD27Jo9LsmWMk=;
	h=To:Subject:From:Message-Id:Date; b=T9WrHfCnNdHd8/T3bUUFxTC/0mnQCNS0D0j0MRW7VUhWDkxnK90DgCXXI3RedsgVDgZIIxqk4SXaAEXFr3zb61lJpzNyGYTzKhT59nj4D1hymBtQTugu0WwHUHTVcXzl5iUWWOQBMsXdc4KvgKB69My8t/VTrA474XujWC6Y8NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EprqzQap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EprqzQap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2B7C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714260142;
	bh=LOGkFTvf4eWVD2FKJOA0JNNMB69nQNRD27Jo9LsmWMk=;
	h=To:Subject:From:Date:From;
	b=EprqzQap4/Nop++H4aivMcitrfm7Qk1dBLI3+e39m7jogZO8UQHVLgMmABHSF4OA6
	 2TSuNIkYMm2XeMtHSA+GxwJO4f9mHhb9AB2aiRy+J2qIriymMRjUowrfRZ8BxSSfHV
	 +31p1gX4/qxVvZwJhKgsE67vCEhxdYJCbykNiGs3WfQXAZqu4JGicMw3pqZCXKlSFc
	 u+xzz+jrR7g6qncxyYOuxL+0W0PqlF+5U2DNiZvLURTRuW2/oLK4clhI8xnKaPXw/z
	 2d7eqXl4WXUG0TGxqsIc+2AytBOrlobhXM7R4wgtZQVAiqtDRCURHDdjhBVgvn0Et5
	 +bTZJJzGD8ODw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C55AEC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426014277.11950.13403910167249401216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc522cf9887c0805ae603174abacd138175637849d2b7a7d872efc4ac28993d1
Date: Sat, 27 Apr 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714260142
