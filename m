Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4291637189C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788212434; cv=none; b=E21BaUwG+vrxV5kzjEhz+TiHoWRjQpoBose02xM9jWUJ1l7BNNT9wTINIVZyTCsvfHLw/xCXya7gRpC7Q3bN8cez0iuqtxRVXXAju4Jc/MGUQofZ+Di1X2kilb4aO37nm2x/+y8h9+yFE2DUCOoL6NpxtAw1dEPX4FHMxgvHvUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788212434; c=relaxed/simple;
	bh=OFZTgv3LkwWQDN2YTsx0YuIsinOhpxFvZe87Bk40iEw=;
	h=To:Subject:From:Message-Id:Date; b=uSi8z7GpfCHur6aU4yTqbwscx+l7x3Tu5T0JZonXsSjSQhdMnTDtqyIX6OYwrDb783aXlNidZ1tq+mXfMpOoW3Pd4f3mhMPcuc8nCFISl4dUrHFmf3Gnf1iiJgFFXAo5lFRdEakFYZK5Gn5jUL0SLxKb/KuUaQLyRLJyydLRW9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWJej9TH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWJej9TH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CE1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788212433;
	bh=OFZTgv3LkwWQDN2YTsx0YuIsinOhpxFvZe87Bk40iEw=;
	h=To:Subject:From:Date:From;
	b=iWJej9THFRCQ3CuAfmxi4vAiAe+2lIPUvu9zUIPbpD5Sy+JOsViF8TCdzGy+goW7D
	 +s01HjpHh8fMBgsAZnS9+LeTQLkhuqUK8dKiEYkdj9iqAdyJU6tvz4DGFQhtjuvlr+
	 xSZmlyovGhIb0Y931UxF3EIWfEoko/SytjuF2bQf2p0HLx/QOglX0B412Jes/X8NNA
	 xvogVx3VAcyFd9/f2Pyx4HhvZt0N4b8W34JFgI+CosNEEH/x0Ebf1r8GqjjSkP2d/J
	 4ytckHKe8dnZmXEMwlQncasK9tvAP1qf5oeuH0pyIDDJQFphfyDz39Lf7QSIKLEER6
	 kgMhc8Npu7baw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1417C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821243368.29039.8453896257564603703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb8471c25515402ebe819521254f91107b6b3b9068ec60c5b3176a1b39c6f87
Date: Mon, 31 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788212433
