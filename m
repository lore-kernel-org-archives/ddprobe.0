Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3928C45A2A5
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785437434; cv=none; b=DVaj4a6XtX63Snka2qKy/nOyeFZl3e/CtExc9lFqpgHGod1vk3fpTHPx+lmGHs3aKKioJXG9kKM7owNc69el2RuRW1fvYfG+FocyyZzSPchTjM2hJ8Ub+ADNgGFjnMoqlugtHsrUzfTcsuLnxenTs/iF7oqE02YcrVgfKnf3bMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785437434; c=relaxed/simple;
	bh=oeY51/2iY17S52EHdrjedoSeF14IZi+t6hi3rCr9+yk=;
	h=To:Subject:From:Message-Id:Date; b=Xa9O20JXX7Ei3F/Z/l2iwOCOsKrucwuIZpWGRx3yHxWnPmmTYDpoooBXA3gtc7fmaK5opMUfzu8F35kbYFv8Fpjl1GM6Yauo76AvcqivBzP6M2dMlvZL0XQKgcN8wqeFC1EWxSdXlzPl9h382l9Beees7symO2q2rktBSaSg4XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsIvFFOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsIvFFOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D357EC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785437433;
	bh=oeY51/2iY17S52EHdrjedoSeF14IZi+t6hi3rCr9+yk=;
	h=To:Subject:From:Date:From;
	b=UsIvFFOVNU1+z4J1S5rZSz4kbvnKIoedANafRazMH44dbm93MM8/antl97BRIeoS3
	 jFxTmqL+ywyidu2KkG0YMfxigk0cBc7jVqtAwkz5havXEyzROw1ZyBdnSTJtC87WHY
	 bXxbSRRfOOJBjLD0z7Y15hhSwHK41m9M60lWLJ49DLvFY9HwPXIO4WGorBU0/F7D4l
	 DUTcL90BlciB0JOD6iYLnxj1LQYJBeK2TsxbA/nmTqcvbz7T9QjVSLhsJujUmmjNpH
	 kgcIwyCo56XEXedM31xHJdWgJOz+zH8nNnV2meWy8xwRi7j17knIlKt1me8KHayReb
	 xk9VmYpuYPGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B115CC5516E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543743371.7002.15199361680559577537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0764b506694fcafe84185e1486c36814ecb5d9629c01c217060723f03b7b3c
Date: Thu, 30 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785437433
