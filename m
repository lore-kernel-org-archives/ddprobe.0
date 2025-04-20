Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB64CA4B
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745167794; cv=none; b=mF90ZrziBvrtiVIbsGTJCEHHpuRxY5hlKO3kTp8ff69lohB2ZUOd6G1Xu2orb5JnCUumJn7yaTfW+Z3FQLrcfk+84K49y3BlKKVDMQ+wodWhWBwruuHbF1AzEVJNJ87z4Lrf1r7hWDsM/oNi+R1YZThc9ZSCdEgxSzx0wnrYn1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745167794; c=relaxed/simple;
	bh=Z1CAdQYkZkLsPhhefdAiQXas3eRDTnNO8jQMpCJilYA=;
	h=To:Subject:From:Message-Id:Date; b=XxffwwWMB/yHhSz7mO8ebsXlJE7tEbW730rqSr9jEEIa+CPXNQSoFuqXMFSXe5wXbcs3IubdYPcxMu7o6aSDAwcSEnImHf1I9Xqat59J9lZM/Sm48MWN4Ogi7G5V9AtX/DJeXOv1eNaOKBCFcRpzkd/FGbIqu7uHpZxvEh3t+68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb7hizhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb7hizhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD4CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745167793;
	bh=Z1CAdQYkZkLsPhhefdAiQXas3eRDTnNO8jQMpCJilYA=;
	h=To:Subject:From:Date:From;
	b=Qb7hizhGhf3WwwrglhowjUCvWmDlZbRGd+ErZ3UFrW7HaU3yFr7DYw8Amy/vmK/iU
	 Bbbz7/lKAmw8uGwNp1oygpzqR1CaeoZwZN7y3BY1XB7ldEYRtr43kznSIbWQH7dKMP
	 n9sby8oVMOE0tZM8kPMwus6lyS+2fIIxlAWpKwIqaeUdOuGoxKur9HvfhzIlEd77kX
	 6Iqoj6yZEmjngl9fZ30YSiLavF24Wz5NiOn2EHvOe4up16DWHDLxjAgiQqkgv1mv4Q
	 susrPQ6ox/eqb15F1SzNT0KA+4dqxfvsLOxsYpq3COy9yX000KiAWmvge9COVlKNa6
	 Vl9QUEpXaMXew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99540C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516779361.10948.3462363314512593196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0502c750ab7fa14e02f29db10a22cfdc79997177cdf392ee43cf6bd7f2515d
Date: Sun, 20 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745167793
