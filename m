Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23880263C91
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757065194; cv=none; b=a8lCcmHHULGYuUOcnFWumMa++uQpGQPy67yNj9VWemRlvC1hMXUZyd08umj/wKv2OOhJpz5I7g+0e5KKrtiXGA9RiXDHjzKHYNoBA8VUk/JEZXYzD2gMuOLst/nWJ2dEe2DFgoRzw8wIHo0JOSzaUGfxL8BPuIV+Ns0XcnB1u04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757065194; c=relaxed/simple;
	bh=02SDgT3ohe34up4INLeDXv7BOptnqdQL6iVVU90a/5A=;
	h=To:Subject:From:Message-Id:Date; b=LXmPyS8q8aWiLwzxpqGCdfMHGY6eA1SK5im+IJapCeEWWbmGfp1wQ3H7y1NZdM0m4LJH69iBwmt2YcDJQgcIOMhoMA+hUrbvL7zErSVsEUsg1x2Zkc5uih63EwlOqntGr6WfSM0gFcJbgR5riwQf+NkzHu2BV+hHh4Okji21O5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gen7zMJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gen7zMJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25D5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757065193;
	bh=02SDgT3ohe34up4INLeDXv7BOptnqdQL6iVVU90a/5A=;
	h=To:Subject:From:Date:From;
	b=gen7zMJrgDqhjLdpYFPc9PnE5cDyS386+8DTPxrPLcyTftA4HBL4339PAFDB2uJUM
	 USwloRJtbzGpfBS7KRO+nK3wuluS1dkCUuDlznPOmiEA1hxh6I2x86We6b9L9FPC1z
	 Wzg290o9k+51rlDQkrPS12mz3akio36qG4VtDEwJOxxLLQueh6GS+4faOIFgW+iITC
	 cKUTj/KCNYJJJnVIno7LFU393J10IlrPoZe1duL803rw1J779HX0BXIP94wQyjwR5k
	 jZmtOwkF+zL/e5zuC4DhB60qRGYFMPX+XpZYqBfLzX3UuWRAuuhAw5iM22tqA9ssF5
	 4dDIkKF3Ag6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119FCA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706519358.6641.16636390844067611783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf4a43f4ed3eb5d3783b2e1d305c34c8b83df4bc1adba4695b5578080a64faa
Date: Fri, 05 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757065193
