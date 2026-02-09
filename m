Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F551FE44B
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770600834; cv=none; b=n977D6SehWHv3B5eTLJfnhyvoI4ZTlYPc8SExF6P0q7PxDqKVH3WbvXOe2WZV/D5v2DqVoFHQ63pSWkdra3PJXyRXpE5mtVQgxV+ig1TgckC7l6gDvVajChAuUpod9AmXHrB7+9caGM8Lo4GygsJ+D0FoN31u39ALQs37YFUjyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770600834; c=relaxed/simple;
	bh=LysyosxtJ1AiRmLGOGq8aOq5SQFVGVfCilJ/kTr10Zk=;
	h=To:Subject:From:Message-Id:Date; b=WfBZbHa7aOF22KnbkjlCCVctCe9ESVvJAsVY1D/RpMbs6lbiTcMhlDi1JKSlOHqeFTIOzQJngVgdSrq7WqbrP4BcQMJhxln+5DeOnhN51Qeef4908BCLGyBzLyni2zvF44mwS9VPc1QnffDlrujAktRre1Lf3H9QENDm0FbwwGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgAiTCmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgAiTCmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 258ACC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770600834;
	bh=LysyosxtJ1AiRmLGOGq8aOq5SQFVGVfCilJ/kTr10Zk=;
	h=To:Subject:From:Date:From;
	b=BgAiTCmr5Ee3huKMMFBrP+sOsD5Vo5DfWWf5AO3tzo9VSewYgbhYyMWUr2ZkTgi62
	 ii19zWSmmIJOxYkYUTrbHqCXFHMcpxm0g2aMlAGFP/iu3BImoEHFIkfjmbw0pRKJSf
	 EY34ppZtIVxamlwse9OGJkcmuugANZmSecczDNS0ox9z8XPVQw7pppIjr4PT6iTlWq
	 19LUBXe0JUiCxFbwIJLZ0uwX0sEKXUDcwAmV+Mj+93imxsvVT6tcP4GJg/GLxQKgcH
	 f7RJtSFRqotVIrjSKZJsWaQZIFys6uPONdWUeBUkq55h6cUDzYzrAIUlVvHCSCjZZU
	 gQtFDh13tHPmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2E3EF06FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060083361.13880.4398708288608149176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665622d2d0b112d187440ab86d744deac867a68f8518a4e50d29c8e8109092d6
Date: Mon, 09 Feb 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770600833
