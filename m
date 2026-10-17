Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54389358367
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792237834; cv=none; b=d3xUq11nnptDajKhSzsuvSpyoTQyQ2Kv3daWRmu/88fGdvG1J0D2xQFUw5yhohUj+855ZxyJbv1+T6vv1OCaf2Ab5uQiS/kykpWNN8NeRW8dGvZWlV20OjrxWIu2/wEk156St7/ly2pzQCX900FmXYMKKeLqu3IoRu/Pf+ei4Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792237834; c=relaxed/simple;
	bh=j6OH7UgdWwJ35BU7vpbUtD9jqfiDh5fSUzqp/Wn9j4g=;
	h=To:Subject:From:Message-Id:Date; b=GDRpCo/q8mSMSsesCoip9nvRS4LLwGuCv5RnODmPE5+ZxKPaccvUQsqw5ARphMqcUYPpMJN+PbJ7dveNkM1XmVcuNPZC+XK7qBPV8GKtv33zhTRIcwYJZKGhj7D8xs8cHknx6G3k5TWO2mIEe073UkQLZj0AE8jgcx8tGLFg6qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZbKPBN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZbKPBN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA05C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792237833;
	bh=j6OH7UgdWwJ35BU7vpbUtD9jqfiDh5fSUzqp/Wn9j4g=;
	h=To:Subject:From:Date:From;
	b=lZbKPBN5GJMruBjtuEOVHjFry+vbAhNWt5u5I3xDrvZfUHzwuyTcLozBa3nRY0syF
	 j42JnmR4O5vCFNxO8kjhLTg/52rgqIyuF5kbuSRgEWmr27H2TCZ6aRgkXsOwJ92wEH
	 KNEmATRwen26mXNH204ZkDmalXAV6meqvKyKtQvcPNHYf+ChbPzMqAo1CiXJJr69Yb
	 3JGBZh7LrSzYMZqV9qBobKSxjGg3orblAiz1LE7u+YbiKOi9RM7IWFqVzP4x9uNfdD
	 FEMOPjr+tUrs86q0x6932qI00oqexS2fw3Z0cSDj809xdHJwJ4duKV7UR4Z5EaavmX
	 8QVfZD7kvOO1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4D3CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223783369.29911.4325057447417110325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c3336b8f23e804c580e2994fb5b25c503606248d7e289d91f2c3a4247f0e54
Date: Sat, 17 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792237833
