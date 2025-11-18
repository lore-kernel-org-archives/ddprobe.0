Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9281EB5C2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763437914; cv=none; b=A8I3Qg7HFFyyUc8hM36zerQJLrcCzHn+s0xod/PW7agwi61QH/fkMSrif+glkpSggU5vs1PjkDTzjSHsoOCapYPppYt+o2QnxVMRrJPi0pjZUK1EC3fkWx/oFmUFCVpoUCQWunk790uW32KhHgJDzHxGiA1yBwbVPv2nLNNaO3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763437914; c=relaxed/simple;
	bh=CafhnM9EJVWqCGtWTkWrLRWejOVGNahdWYCG6ZetUgA=;
	h=To:Subject:From:Message-Id:Date; b=P/GtVW1mMmlMa7T3g5WOZ7xdPheZKg8pS4nekVNmDeTvz2akuSwpqT+sSy5LezZ769sPZR6zesxfwuHUfYxgReTobw/2P4OkEFHHpppGqEbJg/0Kz+yLT7JNFpFOpMHiaPED9QqG+AERFGdwTP0KjPCzjsArzLx3emidxpewKak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCtH1S46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCtH1S46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C13C19421
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763437913;
	bh=CafhnM9EJVWqCGtWTkWrLRWejOVGNahdWYCG6ZetUgA=;
	h=To:Subject:From:Date:From;
	b=RCtH1S46tPMbglYvEiCjWnfyfLuAfd9/QbPISVuKT8tMtYaam62sCGwvn2LGzJNek
	 DrslQUjGMwXlDVhgFXNI6ypWW3iJOaw1O2W5Z5t/or2usJnmw1LG/NG/w+yQnqEe1+
	 weCHW5GTj565UkgznnZ99sFg9Tra0dpm8C6CHUPvRmJqsK+KruYKHM66L7yV9Ae17l
	 fGQv74xwB8VvzPH2aJTlacS3scZaEasrY3Br4h905xGXbs4YedVBCUtXZQxApseP+f
	 k1sP3EheDB4/M6DKoJMoIZPVn0VhDJghBAz/zktGmGtAHLti0Uot3vr7Rfno0tXn3i
	 cl+7NrlLoAWVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92101CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343791359.26596.17445173063847472984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c6aa85ee034eb3c9eff12b017f01b760bc4ea28477f64abb458fe6628f6448
Date: Tue, 18 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763437913
