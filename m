Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373542248B9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775266534; cv=none; b=I49XbEc4BFqX9KQhq4iOssU9qFgU3b1w8lGHgABZ3nkrcx71Q8NqmW9BFiJlhh4pYVluI4aKqKekRmVDdGdaKxrIbwf6EYH8H0h3GWnRR8zTX5xhffZUPlxWHelfgdjPDhUD/aS6j2zBW28gmQmR/yAxvKneCEKA2+xMqm7/wq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775266534; c=relaxed/simple;
	bh=TsLGJpfKDSv7gOV5GMz01VG7UWBFjAelbEy5AMNYgwQ=;
	h=To:Subject:From:Message-Id:Date; b=NHVt1K4+G6sfzYughGPsrZbjrTey3H6XKBOSudaFeVEhuXtWMRUuFrdaoA+e61FNoIOasPillIYooIQRDigQlC5HW8kaeIYkBd5pxTCKdOoVeBGVhV9iPFLNAckvbNYER/+8lj+NfZXi67CZKxlNOhS4HQtmdkziHqfOEi/SHkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzPmxOj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzPmxOj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33D4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775266533;
	bh=TsLGJpfKDSv7gOV5GMz01VG7UWBFjAelbEy5AMNYgwQ=;
	h=To:Subject:From:Date:From;
	b=rzPmxOj7Fi6wnY4ecO/tv/3AjOnomYSZ4xO3wfncyOTzow6nZ+aZD6cbONTG/GtJ9
	 UISrJ5lLNNQpAIFOuSMMO0ryqb39iKel/Jie+wLsa/m5bxhUlAydKCPny3DkX4QKwi
	 xY2TAEVq9+eA3mz/ipqf8h1ITowlWGjHQDbsgzOu6B4JJXxOR6Hn2sgaaloGxetG3d
	 EPElsAwJK8X7/HuN82lOx7VPHNal9htUK1Uc0asrrblPjYkgltA9hDjpubrQH5q44/
	 4eiJ48X1C8JGhoL+RtqzZobSXT032cTjxsqJXXx03wO89jU/Gnlto9k0THF8MJDL0e
	 d5PfnHlDp2jcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD956E88D73
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526653368.7458.2645403091611587319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7054b7ea6218cfadf09df8b5896297faa174126ee8611adf9957ca5f292a0747
Date: Sat, 04 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775266533
