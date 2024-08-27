Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F6A1F943
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724793954; cv=none; b=q3T4Ba3MIhJx1SKn+bqcC8B/8H40MjwMXJwhCMHw4oZPB6egiceKaSyBfRtiJVJgRZIuSPmM7zQb+DmEUApDMiFDJag9B9Wy2f4qnpSxZ34VPkfd67zXA8abqnIMr2HUwoJ90wKQMa4Yhj4UZhGMzgWLxy6fzgZnFz2utvZk0wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724793954; c=relaxed/simple;
	bh=WFkQ5Bbh1s4WFNLk85mwRKHiD8kUogWsxKLOWujHXnM=;
	h=To:Subject:From:Message-Id:Date; b=WF9B+FLixxtiyFJ44lsq75plxGVdSl6sfGTqSJ66Xh1r1yL/sFDdeVYSFX6B2emOQ3hyppOQI0t/9pS/lDSC77k7Yg6LXuB/T3Xg7BIcxAJx1ltli+sVzKFjVAkP8k15Bd7wiTz4kb8ngOvyR7n48kUXDAj8hIUIi1Z+i2eYXQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/NnTCG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/NnTCG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69FC32786
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724793953;
	bh=WFkQ5Bbh1s4WFNLk85mwRKHiD8kUogWsxKLOWujHXnM=;
	h=To:Subject:From:Date:From;
	b=W/NnTCG0MwbSx0Cd3tDyxGvr2jGH7g8dx/gyVLgwVxm0sMz0L9rgsf9YYFfosFnBa
	 dn4tJW2aNEB40e9J6snu3LTIzXX/d2BOvKNR42ODnIyjP4Y7kXRoBX/y9CnmFEAvLj
	 95n6D2COnsK4KpHszS722PWzofDKYAE5oquDWmy0Xm6cWYEeLPjVx0aSy69kVBCYdA
	 7sAqGPS2nYRAAn9wyd0mVjqikeJ6+d4YUIIX39oCdcHAT7hzhOiXsABQjW2jXCRcBv
	 jOfcDADkZZ2U3q2+9cWYzTqBAvk0FUjh4GbF3pdl+b5dJZqGb90rQ+EE4P9ic9FtfW
	 hSIcVLmKZ+hhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550FC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479395359.5907.9504928875320917292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491747be44479d97091833004b80132a305b270187c1e464d0f359e558459dc0
Date: Tue, 27 Aug 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724793953
