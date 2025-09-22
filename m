Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5773262D14
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758571793; cv=none; b=B1AsrjNDS55hvGstHQ8DBrZclw6ESADYv9h+k+Q+bx53hrbaCvx7CYCM5DSAX7KE0VlDD6fEDniVlfuzfSha1qsxldQA9TUkTyA0Ajez64IWXkNCNyzxPzQNm3lbGjrJg0RdMVQvzUxb2w9nhJ7vIxLINJdqWqlIMs5EITRKHZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758571793; c=relaxed/simple;
	bh=q0TKPvMCGYWOA1Xzvr2D/DQgDjReLC4qFB7ZuZQpRWQ=;
	h=To:Subject:From:Message-Id:Date; b=Z5nI2G++WkCM7q5oaEMYF4ppZdPONWEty9FcY779YUJA8R9WS0H7dvDSLLBcL5MYzE8MBvB6CP4oB5fIppRhXE0jJPpu05ES/gwj0R1meFp5QQBfx8E2iLZHbQWhSJrttUn82jeguXlN34ktFr0UVQEakNSYz3pW6rqxNIju1NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3takkVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3takkVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758571793;
	bh=q0TKPvMCGYWOA1Xzvr2D/DQgDjReLC4qFB7ZuZQpRWQ=;
	h=To:Subject:From:Date:From;
	b=l3takkVb81ga+ZRDjEgbL+8Ma6UuPCpjL2ACIQLv+vk5MlYd1lzzTREdo66xJvIGv
	 s+8KCFOYCgb1gM2eR0l/LRiBN7kZuKGfyhLy360N9mhv3U1Ab32b1Wr3cghTU6rvbE
	 rEygoQio2mj5ShlJNO0qbT9KjX693mOP9I6x/BBRuLZMZzAA8hMZ1wdf3lDPVum77r
	 xAgILJ0caGzMHgJpedkpctC5AVzM05dxT6UUIztuptZpx1vjuz/4tSXcbGAIhbPR47
	 kpyMhEObhGuBXeFH4fhVMpsHYpafWp0a0oCfGDm/8eozyEpega7+zxEj6lWp4o7Qzl
	 TKI0ECpbOlHHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D93CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857179359.1772.1844357165893893101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f99a6261f2a11d11c542e3e545f136eaa369de82751bd3994386933e7cb0ec
Date: Mon, 22 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758571793
