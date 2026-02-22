Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0397DEACD
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771767894; cv=none; b=nPlTSw55xvMt8OtUl3r13bL55wfW7sT0m2Q/mZuXDZ7amhFLK4omxawon345zK+3iNp25jEhAXtDOspAzLze2U3TUTcU2C4uH8cMBBwpBnrpUUQYa+xYs63ONsvBlafMrc5NjclPBCZDyQG0Qf1+pkAvLOsx3AMX7FgormyTC+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771767894; c=relaxed/simple;
	bh=WJbSfTa70d9/qsOw01KO1diGClz406j3q8e1StTYt8g=;
	h=To:Subject:From:Message-Id:Date; b=DNSdZpSMWX277qfemUG94ZTgKfUPAeX6hSW8VC5GGpsrg9QHxeWSWcYabLzlovYvZpJ1TIMkShB9B3QNPgENA6xSMUjgR/x2EJ2zThr79gbm2aIqdh4Kc6s9jp/Ew0W+jR/6aDX6tIfEd4MlXFbVcK9T61HHD86JenDojh1+5Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvA2e5y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvA2e5y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A552CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771767893;
	bh=WJbSfTa70d9/qsOw01KO1diGClz406j3q8e1StTYt8g=;
	h=To:Subject:From:Date:From;
	b=NvA2e5y/0Pn6voxQGCsbHaQdItIZtF3xcgEXL6EDL7cTaDx74sKlhJnmUhy6hx2PX
	 BPb9GHWHyoXatqnfng/2RyYW6qc5OknITUMuBe2ORhWvqOhF/4tHjqyF65L7NtCJub
	 1/lMu3+8xuSvRTHE4VhjXh9Vx3eHvcEHx+8Dd8mZOR73D07RGVdr9rC4ZBnCWn0RXj
	 C8WhgGpCOyY19YVbJDiP5UpZs+NRG9olkFkhRqltpSfTRz7i+nBrl828Ti5X+5lV5H
	 UWBQ4GMBzsgidIr6nJ6BAYol5xwGD27x3H6HWL/usI1kmRNxUNPEfbxMaOfCAKsNQL
	 AtTawSANYeUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93349C63699
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176789357.15941.14694520914975355778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78d46d088acecab27c63fc5af84bf7a2d5524a298a343d5df3096f5ecfa05d3
Date: Sun, 22 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771767893
