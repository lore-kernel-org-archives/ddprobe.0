Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3225E219E0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760989794; cv=none; b=c1PJ03rwjFxYN1dd4YtafzLpNlr+UOaub68tNHINv8pVzHGlkNtaaDF0hFChZcsXeOUZlqpkRM4THNHZhoJhQIXMugH5v4ZWbdopHrVxKI73PGrXz70p0yfgx3bpS/fAPfhhYX98VNWH1s5ZQ37IybonQ10vBMHp+IJZSi56zQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760989794; c=relaxed/simple;
	bh=GYlCQ//H0Eu8acplUllvWJtlGwkArfVlOwsIw/YvrhE=;
	h=To:Subject:From:Message-Id:Date; b=IeiB95RQC89bcsvQKpMUAQH1AB3L8i3MJceTBvzkRdcVqrKNfygCx4h3rKYeiEVGpBXlUnHnMYNt1TtnZB+1lKRGmJanQUNU0hDMr6GOwfOMe+s3NE5BqyGf+luHuGD8tGRvjZyxzEx78hRra+7YZo1J2gaOCa49Xbd/h5s7O0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHTjn8Bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHTjn8Bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760989793;
	bh=GYlCQ//H0Eu8acplUllvWJtlGwkArfVlOwsIw/YvrhE=;
	h=To:Subject:From:Date:From;
	b=DHTjn8Bufef+PByPPyr+V8Xgzgr1TJ+KQOJFICxWXEBGTG2/L8OL3+Gs1oUqO1hDU
	 Dn0AL3ilKZAm7+v0j1R1pUz4y8/Vxr5PrcT+NQ0lfNAZHIEXLzRHxEf5RvRy92rC/s
	 3H6puXsMPxlYGg9mD/ixxkXob0kBD966mZdvvP0vUTu2B3PWuFkVr5y8sqzkzQW3dl
	 m5BVNKZhVXv/G22nA+0MUDV23/tN4Xe6p98Qy0qG8+axdQVl0XhjA8BnovAbaAFLfJ
	 R3DTL7nX+FFeI+vUKI3UgbQxLB+MmIAbU2gbuSg8GEm0beQNTKaeRYXIQDVdgb5UW/
	 H2LSSnEBtbN6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD5CCD1A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098979357.13973.12964446630579105177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0d7775f9bd42bf0e802e532c3926867140d4b2a6ee20f1b11b89894aa3d889
Date: Mon, 20 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760989793
