Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5008F9CC
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712469496; cv=none; b=TMQ11t6RCBmk4d7aIK30Tgry3cDPiaCNLzRPLzxUmi3mjVcFWgJKnFOvb5JLBNc7O2qEhV8xYB7ip51gPN2VE9Ijo7vyADdwAb8amDJT0dYKcpg03U4mJrmpF+gExRNgHbzhQSLyOJb71aFNEAHP+tURUq1ZOCjBJ3mQ8F7HFgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712469496; c=relaxed/simple;
	bh=R9iCG40IKh/6ildiSvQfAIowrqvsmxTcSjjg0FI8mmE=;
	h=To:Subject:From:Message-Id:Date; b=H70AmYRiOGyExRSWbxsZB2Cd/igE6VxtcYjF+iEny3ur+UADJxzyT1IhT3cGDRyo7mwUkaISTzjYIWqVSgJCAR7UPqeyFBuxkAfA9GFMkrYYTAd4ApKjubiuS2EWuRit/qvn7Vg/6ayyWQCvBQ3rbSn/9WBviyTAollgUMS1EFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtGAAPcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtGAAPcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71741C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712469496;
	bh=R9iCG40IKh/6ildiSvQfAIowrqvsmxTcSjjg0FI8mmE=;
	h=To:Subject:From:Date:From;
	b=CtGAAPcPlBCUA+ykT2rH8ZyigiUW9s3uprTjuv5FNUkAoXTVxldOCrMrIkcKjXtPA
	 BrNC+w16nFCCajW8xnIE64hmj+uhUfo7t/cO4h4tYJF57t0W3GyQmqukpqkGiUgv15
	 wELZvMcEg/Ok6mBdaRet9/Qq2eDeenmsJ+bnq6t97HnnrJ1Vjdk1F6iljddYBye8ap
	 r8wH0+AIZELp4jKhVvTXePTILwrtu+Nnqb3dH+n6ElUdZ1aF8FCCalDx3yUcq23PiC
	 k1GcJienDRW06o2PYVwGizVDVjm8fJZP5gUxqnBOONFFSqbN5zPzMAQP3oH3b6M/1U
	 QMGSttzUjHyKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60514CD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171246949637.16780.5067333999803987105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5482776cdd88b4314e71b61d2ee7e4aac772819a31ef9be90402c24d013c10be
Date: Sun, 07 Apr 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712469496
