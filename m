Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C392E9748
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768684434; cv=none; b=JaTmPQjMEX15ae2nHZvzseSmQ6gyVcR109hPgn/UKZuPIb51IBUdJfSxzDo8Ft+zqZGgkuxD5Cxl+KIYjHqjnhRq3JgZLdP3IPSGuO12lHP7GrygAEavkQc32H7tGCaYO11ivIAutxMGu2D5X9FY+NUAmEI54uLPALIXfBhtHpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768684434; c=relaxed/simple;
	bh=gPJh7KBCgirODrdwYrQ7BsUnIpRDbd3HsUKNF923WyM=;
	h=To:Subject:From:Message-Id:Date; b=QfXNTGkZ5ob2dC9Fpr9Pf3yG5CeXabn09vEY9gE9Vi3m5Yarszos77oNg76Y/6pJoX9xFrQMfHX1+bOk5zM8j2rPKLh3vLWtiQ2r+U93ZUctRhA+94HblB/RyAkUsZvPdseWoP6hKgJIQFlro7IseqoVtlr7X3olSufLpTafgmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9zppOvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9zppOvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5249C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768684433;
	bh=gPJh7KBCgirODrdwYrQ7BsUnIpRDbd3HsUKNF923WyM=;
	h=To:Subject:From:Date:From;
	b=L9zppOvxkbLM83v0wkuTm8Clw3T6YslghDwmWytPbe9C0K+YDIUXjW3ImQA7bNlLw
	 1/1Wq/5LLnrvWWFbTlRDjWLMAlAnulBcezbt9T0vI/H6tF6DL3s7m9DBA13tcXoSZW
	 hbcbnFiKiPMeZ4b+IZzME/nytl9aoYDrKn9MOafhe/8ZmmeqMfe7F0xEECUr9a9k1p
	 /WB25CUxPnf+EzgLVKamoJXyxb1ysFCYS9lY3/BjiseiwhDsAFAFNCCp3v8ra6kNQi
	 h39xu/xa17XDgLk8DmnGh4QLFy5hP+sabmfYGeTOTXzie0tRNuuoii1wC7KLBI2436
	 0OWCcbbhRrWMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED3C98338
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868443357.14661.3391396382732608597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954ad8750e3a405c7a15053800988ac76654a71173ce93711308df4ca731d904
Date: Sat, 17 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768684433
