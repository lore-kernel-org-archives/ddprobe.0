Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8581DA0E1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762407594; cv=none; b=I3ej2x11QkHaGlsWLS63sr2fz+4csaPExNE8F5JwZ+0QO7gQsyQfZ95Mig2dom3iMwwrhV915bUKSmtMALitNSM9wn7eGGoXfVyPedj9O9xK6smzBSxE9ggLIBxrgzbR4P+Yw7SBUVHafLoL0uVjWdcl1AQ2IAiGumYzEengvaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762407594; c=relaxed/simple;
	bh=cC3ugst8qlvH2D8YhzHoKzIq4cLSURPmCFkeY5i/JMU=;
	h=To:Subject:From:Message-Id:Date; b=iquO3fzfZVYXw5nLD9gue33QGm98DAcQNrsSiffc/C6qxKVsFSKRs45RJu79Mc1wpewfRscgUJ4SEKxyeOxSFd+SqRf+Cw1FVOAoPuX7CXCJw4UubIixz/4OxzN1dany/xdRy0aA4kdOhvHtYttNG5UsQ7VogZW6uw3FDfu4M0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiyA0mTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiyA0mTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11BDC116D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762407593;
	bh=cC3ugst8qlvH2D8YhzHoKzIq4cLSURPmCFkeY5i/JMU=;
	h=To:Subject:From:Date:From;
	b=GiyA0mTwMzlGP5GyCAGJa2Em51XOizDl3uy26lvFnX0n9r59xj71wxrPEgJZqyunB
	 21iAlgwpuyqSoNHC9+xTvESwN/+qiuXbZ+at3xuk8k1vtyVND6g75oo52+81onL9jS
	 F0SoRRS1OSUdZsZ7ClmaQ5hABGZ+crQsAIPrX8gontC2H5+ZwNrG+Q1isuCprvbVLh
	 MoKn0GXwyYP2ZOfVwn3yi+vVu61IEhAXWC0ktqkxiqgJt2JNVb7IbzxOOEo5XGTBTC
	 JbXkbRLO1vfGtp5NdlKSjUJypK4B3LgiKHaCE91KmT2gH9yjGkHSFWCrRVW1a3MzvJ
	 5L/xAZ6pmVtDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153CCCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240759358.15029.1133221437438375646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58725746d629eac2965ae729b7c0c29dda9b8a3f7ccd623272d826ecaf24f799
Date: Thu, 06 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762407593
