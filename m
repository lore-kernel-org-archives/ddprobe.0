Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271DD3A1E69
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767597234; cv=none; b=d5hP06bim2V3sZVwXXU4WL8/rF00S8+DY1Jb7DnPuSZtGR9gnuHW00vC4BIMky8Xo4rfI0BJs/SJwEeo92Gwdwp1lqE3Vao23ARfLJZGh5DK82lMPoRp1Ju0HsW/h3nPjZ9To6t0d228qscq6rTiZpinIotlW9mKjqpsiybOqUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767597234; c=relaxed/simple;
	bh=oDbIoSvWuihDBk05HKZZmKXEI7K+qgWkCUcuozsbX3U=;
	h=To:Subject:From:Message-Id:Date; b=K9n1KQs9z7hxBEap9bnZn+7kceJfrQ+wgXOZf7teUUE4MZj8LraV3Mm9c6DHjTFrnukjM9iELoPuIArMdwMaZLlV/5Sap7g3OFILCaWZHwBmEzzj8bxPMfzVbaOU0lvoNzD8xUqwyk0OL2Jg8U61jcxwp9I0lp/f5apPRMRDQU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTXxYDEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTXxYDEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6708C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767597233;
	bh=oDbIoSvWuihDBk05HKZZmKXEI7K+qgWkCUcuozsbX3U=;
	h=To:Subject:From:Date:From;
	b=lTXxYDEcJy/YmFPQ1qrMRIyLOwECBdmBG50df9JSwXxCTxvIXQAd1OfPDr15bpkih
	 iRqlYmAbveyMsnbL0YuiYuyItx7w4Gtxu8q7T3+uvG0KHcifbdwiP/piJ41pEVpfK9
	 WjLfifxXq/29GVyEwZSQC6cD8HL8yGilUuWjCTtgWA6JXx05JM/CPJokt3/yd95CX7
	 JAxyuH4HIljKkmXjsVi1PCLfBjoDQzHh1J+TtJNqQOnEZqE4Bme79LS+PenuY/kHEd
	 mezDVXEB/vuELqGYauJZfrQVtR27xRnUu/7tXpAMn9icrPjoEaxyx+rDF05q8rXgW3
	 9QlsrqqBOOHsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF65C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759723362.13751.15214148632509269153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b81afd31072c467d7e55e3e28c61071783c9b3dd2506b34cf20606e44c6a76
Date: Mon, 05 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767597233
