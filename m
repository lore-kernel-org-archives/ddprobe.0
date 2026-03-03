Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07C917C220
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772496893; cv=none; b=oIZYrrNmFyxYAZRY/qjQLizas5A2BlXuvFAPSFi8gkwKx03Eob4IcueGgqwXkvfZOfUezrmSV9KHLkPuGqVq88hkRR+E1pzyRS4zoBihzsLSenAqcAYvUJdRGvyqzC37UIVBVIlZrRelm/wvPlZS5Vpu4+4+kVRy3rB7Pvl//3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772496893; c=relaxed/simple;
	bh=RwT1VWjJKSDz41OgDxpoeFasku+Hy0ocTMJGWjmSur8=;
	h=To:Subject:From:Message-Id:Date; b=SYNykqVZgf1tblwWMLk8+e6kFZJv7GTtV0tq2RRo7hSzV3wJWJi5T5Us72Q5a+nJ3AIlXyPVvUGrQma0onejm+DP0RTvBCk/LqizIsSZZqvE+nPERZt7l0EYGhAgh2zn/6kH115MpA3UBifE2n0tBF1WlunHhd61G3Hd4F4vmcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNC0BX6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNC0BX6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B411CC19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772496893;
	bh=RwT1VWjJKSDz41OgDxpoeFasku+Hy0ocTMJGWjmSur8=;
	h=To:Subject:From:Date:From;
	b=NNC0BX6WaHBFuzJJcdYO615lSehrntefPvTVNEkaJIoi6yiZa1f6wjYKPpOXaddlE
	 WWQFDXWS4RG1iKq3+w9CuXkZy8KRYU1QObBvNsH2W/vLVtGZfCoeA+xSVOg95OMpBH
	 MNZpKdnhJBaSDkqive9ZWQnxIwVI7m99aLOAsabkv/lUQ+nmIKTUOm6/vIrK0EKqlR
	 ZAmoM/7wRVrVbBBwh+CfZeYXnnTCBh8bFkmcQY8HlSWq3fxWDfLSjzWI/mtbyL5+WH
	 fdVmdppTSYavswdmj77TljWQCPMLdC82kZO/0ce+I/k+l6IhXhC/rF9DcykhLU603m
	 URE4VWi0myBiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A42DEB3641
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249689359.26231.917827473264075438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbfe05221ecf230456db71c4d285945dfe2847744ef18f65405eed5a4a5f592
Date: Tue, 03 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772496893
