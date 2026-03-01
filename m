Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA09632
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772323494; cv=none; b=Osj56ygmPdfLC+bsDeSoiI7uN4+5iBg0FxIZnWzVZx1gQL/eYykzpMYmRczJKpRJLbFevQfxOahdygnsITZaaU8uOyHZe2688IyeET6cvf+LUKK+OEd416QyV+CouyQM86v2B43CmPBTzYUyjDa3IH6FQuTx69iTqsuJD3dD2bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772323494; c=relaxed/simple;
	bh=M5s0he2zUWCxBiXCwym1OGq2uc7zhluhV+cBzLMq1vo=;
	h=To:Subject:From:Message-Id:Date; b=qBzYDfQrKWQ037CXOBwV/iBAaPyi4k4Rlmffl4cnIvsRih/rrj2KHbAlJ+Vc+2MXXVgg4JmA/ect0Hf1aMr+KxdP2UfNTvzSMRWfkAeE5J974Cih7CibQj8kIOU3o91yL/YcMyBZNPAJjitzHNAU5ITxYTE5EQmM/LLNB8KH2gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGk4SYVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGk4SYVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E46C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772323493;
	bh=M5s0he2zUWCxBiXCwym1OGq2uc7zhluhV+cBzLMq1vo=;
	h=To:Subject:From:Date:From;
	b=IGk4SYVl1TqV8eLTbGUZ7N0EjBMkngXKyyZtVQsR2y+YJKBxu9Q3vGq3WI4puHvmi
	 laK7wKfZFcsI83W8cfxVgqYutfEaGJht7j2brhQXJDvVZlJDE+rD84BFMM+Nkdl+RN
	 IYNPUi8YG1ppErVfJ5Txvny3pu1PlzTEST28zXUIynZ1gf49BSegb55m6PpLnEXwJW
	 7wG85P75EqxVsS4SdXrY3BXGHAQTlrdp623buXHXmczQAlf7CHQeLMHIy1A8M8fBBV
	 kJLFJWkrjTp87CHA16BYjYzuzK29fahtR1Cn4pGeWVhfrhpr3xjCrvv30oBRH4/zlH
	 5xygbQUEsT92A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8168FD0046
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232349363.9724.6554948748161099379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b23ffbc33a1b4c6ac920143fbd6c96f7d7ce34333ea74f227976cdecace300
Date: Sun, 01 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772323493
