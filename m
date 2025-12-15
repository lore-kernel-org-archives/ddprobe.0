Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A79218C02E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765776774; cv=none; b=ETAKBnjA9hxG3Jl4xhcluRytMLDnKCFo0ZwBCrjDvfzVOSly+gwtAyKr0rt3Oq9Vk4l7JRj3W4K2Q7HgGvDx+SD1SqWRZN6hfOhYaWvdcPM3fu8eNOVa1/1B93BciBxMyOqqFGLjE/C3XG0UJ1pyHNEEpKW0MmfQmfQGt160JYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765776774; c=relaxed/simple;
	bh=7EcPbjEBerbQLx7aTpcqV3Aqy4hD3WfrDC85NJtD6T4=;
	h=To:Subject:From:Message-Id:Date; b=XVhymZZlOtx1WX7uOBCCRwED9s96oU6miUkxal3xH/Ma2Il13bcZWTIGWaTgocVlrEsjoKlOS/6Cmz9/VuqFpPcW402uRzmIhup+4UOEYqjjV+Z/QPschBWjVwqUhGfiD+inLHeWnNzu0Nf2lfc0FjEB56ntmL4+GNw9nLk0vBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwKNsuoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwKNsuoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B6EC19421
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765776773;
	bh=7EcPbjEBerbQLx7aTpcqV3Aqy4hD3WfrDC85NJtD6T4=;
	h=To:Subject:From:Date:From;
	b=QwKNsuoqX8lMFbqiVfExoCBK9tMyoa/ZZmTYuQMETEuIdRWegszmRdgbzUKx25/S2
	 l92LS/w3doWZ6mQah06RdBxsL/q9RlHGy6isJJ7G7zEp1KbXLGd3+E4MUauwf1n2Kt
	 eOqe+whNQxPBt/2Ub7+RFbru3m5llgo6iU6IJKnfnkIR4pxGqlzQLp4eOK0Dqkkbm6
	 IEXBkxwLqlO0GSjBaGq5beDTAWfcWSqELz3Rp2zyan1NLjjeZkufNXxUR4s5hhK47b
	 Qo81pSjoTETGKbF2RgWBs4FuPX6dwvXuvwyd9DuMsbH9QI0BTwAUwK0EY4hM75NOxe
	 032LYiQcKZhKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B77D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577677358.23820.5210086780730898407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0aa56162d3bf6a995886e70abf4ca05cf239c3294a1fadf75abdda7dc430302
Date: Mon, 15 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765776773
