Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B59352029
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790712034; cv=none; b=o8f1TzXIUe9xksiZpaSQBnTcRVgqq1XxC5NYHWvsXy6BTLkgRJRzeIHcUlu/eR4HiehYTf6gvli2j2rJy9CpvIL0pGR6Epb5LMTI0mWucvgDz0iX/nIZm4LSFAHKYznbt0H7ArNQPHVOonl3bOh/HNw0qS5ctXXsAHLz7/Le2BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790712034; c=relaxed/simple;
	bh=kV5st2fhAnPToMJ/TEEK7X/A29eWI/aMyEK2haw1RQc=;
	h=To:Subject:From:Message-Id:Date; b=LJXf4T+DVGcqzR1wmFak3QogaDVswDsOHalkrChFZY8UrSdghVpupGQz7fJdzd31fMx2eKgXQJEDWSkdmaEhjbySUfuZNyXWz5i3Nuh3t8nbsbD8vpN+4JngXG6aFTgeKVLQ5n8WSaMI9ZKwURMGcsPfUjFdB1vH4iYFcavRC+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFI1HFA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFI1HFA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBEBC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790712033;
	bh=kV5st2fhAnPToMJ/TEEK7X/A29eWI/aMyEK2haw1RQc=;
	h=To:Subject:From:Date:From;
	b=sFI1HFA0Q5eDW5eU69TTKgQWR9q2fRTsJGzChtFG4mVPu5B3cn5Zt1HHq5T7YCEdA
	 ZQKgdoq7yk9aSSq89hpmirfEKdvK7lQTVI9MZe98svdmxm7/Wk/SQyGuMXJw27yAxD
	 uCsEI6t3RqAj2qlgK1DWYT+vUik/jMQDxNsmyquLV0e1gvxo6RzNP7ulTF6risIpGv
	 mL/M/WcnBf/UJx7meNDXVZD73AkYIgIxYHH7QhS9FkSM3PFOWkF7vnENACMRqm/DMQ
	 20MfRZudnD/DhNeilUPvsVDbaIWB9yr0Za3d2z92XA40p4qvMXscmeYZlikKE8CGNm
	 yN3xpDtHSxkzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E99CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071203368.9841.1068284491723891262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c23de81f0e6eb93c500e2218fdabcf57ea7b80817bb64bce47c521c088ddb26
Date: Tue, 29 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790712033
