Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A08A156C63
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746197396; cv=none; b=sN5Htfjv6JuBY0gIRPKPGzIn2eMBkfgllADodSTz59K2RzhQRc+qP5e5kak1sZTAPSq7zChbWKuQc+W9Gn3akiitXh+0oH3Yd5iqSajJG2c/hfar4ab6xQTJFa/QCPtq9qJ/D9gHMtqmYRLo0f5X8IjYGo0HPRTJpGGquIZAhkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746197396; c=relaxed/simple;
	bh=2VSV8LVnTmm/sjRLFreNStZn4Ey6FXtvqRBtz5t0m6I=;
	h=To:Subject:From:Message-Id:Date; b=a3qxTlNlScC+2YJqDFDFF3LlVUF/6IP+AlbyT8zkyiSHCQuJIXBixh622DpGwcJj/N+wHHqv7w6I8D6YeXqS0E9QEhkrM9Y1WKRKwF3r5vuNDvly6/WP+sBrHVmxWWm4qhCAY14NhhBkwmC5ZrFmsFgSlC+ZsUiieqSosBlcIXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sdo9PbY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sdo9PbY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1719C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746197393;
	bh=2VSV8LVnTmm/sjRLFreNStZn4Ey6FXtvqRBtz5t0m6I=;
	h=To:Subject:From:Date:From;
	b=Sdo9PbY6S3bYkY3WSAvc/dOyhG4s4T+o0ijB+dSZB6bkEOkU58pVP3odo1j9ZB9ww
	 TWPbUbQKPOGa6FEdQiJsIZcd8FW57PvLLz4hzbnoIwy/i8dWmaTKevbdcaxwrtC0ht
	 AN6QmI5Xi7ycZemPrCecNj0pGRL3cSXnQG+XCu686oc4jS9GLiCaM7qv9foKRSdTvX
	 kFgx2liVL6x+7uW6EZOWL/B3XxoLBYZ3VPa4a57tM9H8KjaRxAxL8B3zSs3W04EfK3
	 OosxZbmtwrZ1pgBx9JbgAeBNT1X6eAyYnUn5+QOb5S/HD7AtRpb6/x443m/4FYscBr
	 yszTgWS5Xc5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147CC3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619739357.24739.4405616544191489145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d940ee027b9796f0e4ed7e657f9ae4886f1fe2a827d4bef8ea78a60cf551d83
Date: Fri, 02 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746197393
