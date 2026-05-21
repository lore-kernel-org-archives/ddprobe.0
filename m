Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D5C54654
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779335434; cv=none; b=MMLEhf41u9QRtFKvtuHXn1Xq+RzW+uiaiWJdYf/QyVi2HGTAghB8Cvgr8VT/VTPbiMhjUUzTB1viDWxD8ZaRqZMDAFGXkCwKgzthSUcjGbMfMbM7rLjUVAZD+PFk00YFxupljYHv0BVnkk39/eXhnnY3rmX0065G56RyeHQjMjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779335434; c=relaxed/simple;
	bh=0sZPFYwpbsm27VnCd9hnMVqHq3TOVCkn9Mf71KMt1qw=;
	h=To:Subject:From:Message-Id:Date; b=Dpt+2h/xcCFpfioGpVjpNdcKMtW4kMrGUbM8Srj7hvwQsnRpqmB3lIbiOFaBFPaU3U/zTp7szItyat0L7hG2Ee4F3BSeDPoUBN8buFjwFH3JBdgh/CX3oNE7D2l1nB5y8ypsdGebENmyH6ZnR9U3xpUWOJDnOa/rDfisNHy//kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7dr6HaC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7dr6HaC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C599CC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779335433;
	bh=0sZPFYwpbsm27VnCd9hnMVqHq3TOVCkn9Mf71KMt1qw=;
	h=To:Subject:From:Date:From;
	b=c7dr6HaCwlAgFtN4hEQk8AGVyLy+g0d2Za5TY7nB6dFW1rgbSwkHSVBLBxxrg5uTe
	 yhdMWL5kSbYAEOIL+3M594pG5f8whEg6QX0xrgici20wITpLCqt1/dmtFhVJlCgTUx
	 MNReYKFODoEC2KHxA0JM1bmE1dW3CVjYK7P18ulVOn8XmT6/HG+NcTyHvLt5MbAj4X
	 Ua/5uUodnepH3SOZXNwfY8MRai4zAHODAGdqCsxzevmhr5WWNvJwBOcV0SmQkT1Beh
	 naLtIdwt4KrJ9qXk+676+/yWiErAN7Yrbxf0+Mcl/fgvEegxLJiHGVH8Y6EvWzIu5q
	 9rm+1k++FTNqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBCCCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933543369.1679.6788413493476637621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5db1e6d4b256fd4c3333ddea7c6483b268bc2ef7387bbce8a4922f5f9eeff8
Date: Thu, 21 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779335433
