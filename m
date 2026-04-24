Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0F2472AE
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777021054; cv=none; b=oPnq5amHy8Js3nSF8KxDBjs1fSmZrLY+qC9X+wcOg96SUdmccxmny2VPUwOouYfq8SceS+3P5hgQHoE6gHvK7n7Y6M8A1ZieK/TicDWtU5M2aeiDvQ7T8w8TbximVRejrPjQViKVEcftl55i/gJ3ZJ7yb0S/5OpwHAjrrFYj+MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777021054; c=relaxed/simple;
	bh=tub1qWqABaiqJVsEAyx/Y7S5VJvbMl2w+0ZxFn980WU=;
	h=To:Subject:From:Message-Id:Date; b=C6wdlE8lTzUBjQTD47dfRv3pPQXxTkASCeKFdZz4NOLwmqXRDBVTDIRKuUXZRVJpbluEictAMAVOCnySB2tKCOxmdIpEIttzLnKk+5cK5BgQi5X8AP73XZdV6nANXT9bY5XiyHXDFzABHKdYthkh4wBypG8R0BNYBtKbO20ooEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEhKjNTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEhKjNTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7674C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777021053;
	bh=tub1qWqABaiqJVsEAyx/Y7S5VJvbMl2w+0ZxFn980WU=;
	h=To:Subject:From:Date:From;
	b=nEhKjNTzOduy6tuY5nxQ6QC256PTC3qI0hHktalVA3afnkT73INOPMP3p5DqbEybm
	 YoTyYUN2YzEbOVqtca7fylwT1tGSiD9GCR9CSAOQBdEbTM5AJPhaZk9x0AFR9K1R/H
	 mah6MjWEpUHz9YR58Wn6N6BN1aWJnYbfPZCQCUslgbBkkdyJx+6KNWeDD/asZlPeOJ
	 tb3how0D2gD0gi1vrLpxqmgvIA95GOj3SnjHwI/e12yqaa5grN3E6B2hgomawHnoDu
	 fQoPjntbofhHLbGUx4d/LLXR2GvsPgMYT0fmzGyuzAaV2W+35pkIZS8TMMbk0jYGCB
	 H5ZtUEfd/Y3eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D6CFE51EC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702105368.16525.11026420678612585239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1069e1f45842aa353dc1ac8c9d334e7d42c978706ca7c69b5368cb3ffe517c
Date: Fri, 24 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777021053
