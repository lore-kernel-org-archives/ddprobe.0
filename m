Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039455D468
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711126097; cv=none; b=Wh/uMgJJRNToOrBh9294QuFTYtJdEVX2RaCoOM+W0RyMjPL0G4BsNnf4fMLiSwR++MogHMhnMUzJUlA461JYbjrwFaRQOz5FW0LsFSvRa4zNKCPsDw+g6jgmkFpsW1FfTwimq0wl1s7aXTeY0xXjanpt1Q0ph9UCUySYbeyQRb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711126097; c=relaxed/simple;
	bh=7aJKDHVWGyBPW37onelJ2ClCBYg+/tIa82Z/TyhONOo=;
	h=To:Subject:From:Message-Id:Date; b=H6kbuHMzrJoIGrauk//f82Z22WIG4WWNolvWDbH0nuppHt4GBsEa09+LH1G0kXZuhFGf9nxa8e+y+lyAlS5UKTRWxVa2fA0SxcSP/5xElgfR4Wa0Q66sj8kBP+bk+nFLkyTBw2g0eSqnmvpxEibwLmHiPmVsPEhwYYdwwjLk64c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFCxQ9zc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFCxQ9zc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7377BC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711126096;
	bh=7aJKDHVWGyBPW37onelJ2ClCBYg+/tIa82Z/TyhONOo=;
	h=To:Subject:From:Date:From;
	b=hFCxQ9zco7c5E1+z6hl0Oo9qIL8M9JDX+fmeZqfpaK4pGVfEnwrRk4fp/wCWRoRMX
	 0JvT0xGfh86SeRKjEKvH+ldoNqUfe03oltiKyEG3nkg2//eM5yFuKsHSonpwV+TZ43
	 3aG3l5AJ+YO3sMPAGEgveYpoauNEo3+LbjbZcc2op9d4ln9X3NZZpVLK/F8DW8QGOX
	 5kiUyTG/qI4qEavuYnAnsJ1dloO1OQe4S3xeFEvl/hQaIK+y7bECoJ2ssz3uccMW48
	 3hIlEEu2Kqi8aTwV3O4HFWUuYhgbBwmBxRxxYiEzFq/bpVBLpy4xg3pn+QVhkxlfEx
	 nBP8d/hdI5EYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA3EC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171112609637.17118.12797954215731150796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f5d4f076f567e067f223d31f95b1c74f242086dd2ca06ba52f7886cfabee27
Date: Fri, 22 Mar 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711126096
