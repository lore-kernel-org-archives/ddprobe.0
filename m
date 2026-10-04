Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E712F474255
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791136235; cv=none; b=pJzjmAepQSjtY/9uEtXLWuQ3XC+sCqmk2W825y4/LoGegLHXnHrlmVSjmB++k7ESo419PFsNPGLxsXDKnbZI+/wL16qk7DfGX3F1e4Rwp1Im7fSzENc9L7NObhcbkWthlkcReayuVWMWJqi4VmZ9ZbfNhF2NXIn6iWQFK0KS6BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791136235; c=relaxed/simple;
	bh=djHiJbLfnDfItfG6VwdlFy8IRxwkQsbkTvrCxFQ/3c4=;
	h=To:Subject:From:Message-Id:Date; b=BIJKjGdUR65Zy2xBxOWo62YB25amO8PZnD2R0mBXjp+JjLZGjFJ9j3qqqnDLRvkZSD0r/p72cW0/0rrzv6UE+r5imbu0BW7L6r4cqcfIbHZitb24t3wo7v27dEcMiwmD5mtNKWVrK20ZFbzBB/UZhJXq/CruzmNi4hkg/biiWXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNSnczqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNSnczqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26E5C4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791136233;
	bh=djHiJbLfnDfItfG6VwdlFy8IRxwkQsbkTvrCxFQ/3c4=;
	h=To:Subject:From:Date:From;
	b=FNSnczqWfA3ll2QT+lI+2gbtdZuCCuj9FPYq2x5nfvM6bURgLBspnc4Ttbcq75+E1
	 2ReoQI9MpNzURWaFuZLOUEzhMDRg0oeHJ+TNpxXepoXrNgXScPJVnGNZjszCQbopBQ
	 mX8rs57cq4FYc/l3DUdLr0Bs++/p+slWPPfevCRYKvVy5EKy0JhqxQyrJIXOasqDRW
	 2HnIXJFO1QUk3YP2wROxQI/t8Xp5BpK/m6PotxhnZB43bsUMXTWGTcSPnjzAd+N7tc
	 ONLCNHEEmyV+j4M95Z+0cg4h/5RO8ZNjfbeE/7Imf8/hl67oqbeO983RyWs+ux34RZ
	 yH+B5aJOxyMmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A9CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113623368.9421.7384375765985063327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b972f90e8df40391fa1484615e642dd40d4db3135326d27852723d629aa27ded
Date: Sun, 04 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791136233
