Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBC317736
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727523954; cv=none; b=U1h8dfK46kv1NUd76rICN0/gPYi1kyYwXc3ywOrQkZNRovfitqgV75/bORN/sfzgqWvw98pREfVNseQuW0CMEZ6g+sn0dqIDI1jhkmgx5xT9OcSUGzCl5pggyK2FRK9INGiKEIUWbZCABna+SFubkM45K0Oi4R5MpImsG5ZIU+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727523954; c=relaxed/simple;
	bh=Oka3QV1PWGzovFOL4dmbfamdFfZxgotWZZMQTnJXs0I=;
	h=To:Subject:From:Message-Id:Date; b=oten5aXwnp19JONpX6APo81Qs053vSBo8cxebBggVUhuX/f/kFyedDfGU5j3ks8+sDXThlK6LfTEvEZ/yNEl0Pmh7GGtOJxUPv2ZfTp1/nfWEhRk+JBp8Q/mIpeAhbhOt5K2OC6HZUcfJCetfWhphWYyex5qtOAWFMPsYgyOrf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sshrLKHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sshrLKHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7186C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727523953;
	bh=Oka3QV1PWGzovFOL4dmbfamdFfZxgotWZZMQTnJXs0I=;
	h=To:Subject:From:Date:From;
	b=sshrLKHJ9AjHXR4tBLJLxCKCeEKUhtrz0FDpDOBvPAVTs9/+u8gCmTZX5j7NZLW5a
	 0bdEcAmZ4i14wzOWm/1D+yQsIOsP9Bnr+Q4GVz/7FWkh22xbaDrteqvJTvF0Gaes5h
	 T2fPm6wNwxEI7BtLdEw5i3Yhnjc3JgXqita7EHcXK786JJHH3Y7drfJoiCDaoLZ6iQ
	 X75BfS6oLLzNK2kOM7L21Sk0r2ptksNjGa9lUjOhbPXTM9vvw1XuIXCK71XPdfYv70
	 2SqPsOs6wJCwcb1uXrf1heG9uRYuyUB4unNEL5sC6d8T47AXopbh9dvszk+C6eNyit
	 nDsFl6voS6z1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94781CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752395357.2787.8326389781400923441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf443f8f7799eeaa3f8cd804fb5a1a54feb45f3baf31aa8c1ab4b5ea2e81abc2
Date: Sat, 28 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727523953
