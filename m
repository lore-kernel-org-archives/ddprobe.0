Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB6D13BAE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751085594; cv=none; b=kKNWqxR6tARXNEYXB5Ky9KvNzLz0lyEY2LRoQkJbtVWGwbAFWK/eOMcad/YJqeVt4XexyoLYXre/sbmcZRUQfyzgIoq38ToFXKLAdOmBAio+Qt1J7CvKAZ1fGdzzFN/kcJGzOCwljpekmkZMltNNhX2ntCspo4OY/Onnam8WCpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751085594; c=relaxed/simple;
	bh=P47+NWF32l57ioQHCr7Acdd5S3DN1KwKrD5nmRuYpms=;
	h=To:Subject:From:Message-Id:Date; b=jURLHn6iceiNgxThDzDFa1tQyJxZGVLEZrlmGimkBc1LNitZ2tAOaFpVxnKa5iYRoetUbHIxR8TnaA1XC0tmJ+XSOQKsFaeYoIxyEgRFWI6e5wM4R96zk29DmrdlZ2AGfD7FsOkY76bVc70KM1BETfSWL/js0cfpGhAR5YlyqsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0CYiCd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0CYiCd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 027F1C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751085594;
	bh=P47+NWF32l57ioQHCr7Acdd5S3DN1KwKrD5nmRuYpms=;
	h=To:Subject:From:Date:From;
	b=J0CYiCd7uTZIypeHqZrsH3i/93tsD2RaXdYRmVtwc6iUTxZK3VC+qquhdHFliy9j3
	 DXS48+VE/37rv1BPYAmn2SWGxRIR0u5/7H8G1GdFqL6mSlEwjk21HqIt4PJgtrKujP
	 fBT0VhnvTJBQ1iO8oKJg2A2H+Be9hjJ6bGxroFVFSh4qhPRcRVYI8ZADJPq+G3qK8Y
	 m4rddX5FeTWVGW8QBG83+R2IOYCgZ9aqh5H90KDZDYbG9In1iTSW7jhDjNtMa0iO5C
	 R1Poi0VCGSOkgoKnmlGdK0wSIf3IbWDJ/4NXz74Dgux6gO2FwkryyU5NwuiZJ0+bcL
	 J0uDUaXRGRDzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC590C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108559372.7704.14937078017245838558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0a5a8a0e687d7cac028ef09b07de90a95a695a58e0a824098c79c565165422
Date: Sat, 28 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751085593
