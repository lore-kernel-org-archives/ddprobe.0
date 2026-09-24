Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6715C2C3757
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790212234; cv=none; b=ilLBcUoZ2V4WOUynp4ubTDqWciUh4Tx7JiItIwd2OIORqz85B1G9Qmoe+oB0A0jTG2nWuYKMEmzuQHz9KzgJIe2nqScE2GPTUsAOkFyH2m+DbEkttV65ZagoZEwS3WgGrIlC1gf/1FfArPuKQ5H2v9+qE9SL1xKQn1FQv/z9zPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790212234; c=relaxed/simple;
	bh=ljjQO+ud37d7yMsADwYvu7YFWlPGK5Gf39aD5jtkFN0=;
	h=To:Subject:From:Message-Id:Date; b=uudXZ0gLy7JBeSALtdA40fRuOz2UPnICkPZtD++OCBkFOP8CUVhVrIGOTbrZL71foKnX24Eq3r6+OvV+glnulfvjZvOXZt0BiwXP6FpK+Dj3t3E1/JPiTLDixKmQD6b/qYcGeXT0gehcjCBvW3igoaag15yX06pWjL2G01h578o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3hlZ6hF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3hlZ6hF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C52C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790212233;
	bh=ljjQO+ud37d7yMsADwYvu7YFWlPGK5Gf39aD5jtkFN0=;
	h=To:Subject:From:Date:From;
	b=L3hlZ6hFtcY/MdhdZAKzSUl/TDjVzMnoAv/QCctovNqCm61BUJ57cZiQPL3YJSnUK
	 NMGTB8Mbgwp+bsJKY/K30TWT2/Tew55VjTMpIvf3XfvqbDVgTgWyYNa6RkW8TCR288
	 2/sT+0Wr+MA5X+188LC7Hc3g8GzmV0f2Wt1VGEcszukdk6Iw4vnbmYyegTZjHo5jIe
	 TpiKRtdnGRfwszlqPe4Bt+9QcyyWnxgb8JZarojYCSHRUXirhSeD5i8nT6uOib/skB
	 i4v3OwMcIEfmzTKQhFUT8SBoQFmXvAWo/KLljEV8ooNxw1ydYvh+QBu5z1F2RnTHeq
	 BzTX8mXh3wHng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7EAC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021223372.2784.12942171152896312129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300a9184e9db6b5e1031f3da1152818a89b80867596f27dd86ef97bf7a3631bc
Date: Thu, 24 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790212233
