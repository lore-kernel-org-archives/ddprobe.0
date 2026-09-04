Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D777367F3A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788486034; cv=none; b=nHxzGDDM0ddA/f3MQVfboi3pN+rCTfu/yAWXZ0mnjIjM3xVAQurPHi3GXgfthCq+cV0c5n7vCLBL6XEksiOvrxqrOZZocl3/LoA3CsCpuF9e4T8JCwbnsQfbxal5aUcUk0ia7MmmmO1o2GyVvcRYwX/LFdCycDcj6qmF81i6EkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788486034; c=relaxed/simple;
	bh=M1MOyeR6Y6GYj05dyb9HSzLlOsjqMasU1QvEJtrpi9A=;
	h=To:Subject:From:Message-Id:Date; b=JVvsR+J9ugfT8/OaH/rlUFexlstnQkghy/BNRK/J/5aq9S74wI+MjMBTiso5zDSLrKRJqUNJnxr2d7HlryjQ7TK2gTi9vKHGIKzvspWN0QBD70evvxqN0w1dF34AC/F/Ottczz9VHM0t6axJqZAAEaSHAYY7C1wMA2PlrEcCVsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPcaRVSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPcaRVSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EC1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788486033;
	bh=M1MOyeR6Y6GYj05dyb9HSzLlOsjqMasU1QvEJtrpi9A=;
	h=To:Subject:From:Date:From;
	b=WPcaRVSksKq0JZ/dxo6C3EXdbaCikJMPdzcktAILGxgZ53o2T6gAHRZSMKUpu48eR
	 AX9BPRlEJyETBv7/P9xueNqkqdMQjH7EduK0D679lyzJmIBhPfMJoisUC5H3otLO5u
	 1EeDSsAZmRupw2axKEd5QTwKstmK+EeRP1Z9aYlrpva2p0WquHC7pvGHK3U6APc2en
	 jvQv2bDvzstV4Mn/SxpVc5F6xkJZ3jtncR/Bi559uAekRONKS3Gdbf+HXgzfAO2e9d
	 N5yD/XPsgeQFi3YaFBRQi9Npv0IwmRDKwgCJXGWA2+rDuqmJgkzIhUEY8faVCXvelU
	 2htrS5R098TqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24FDC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848603369.3205.13264433187407589504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31fa19f28c38be5eedb2f3a313b41c8da5fd2103319ae8da41c090513586c90
Date: Fri, 04 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788486033
