Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D053E35EDCD
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768378433; cv=none; b=uo37Ewb7y+egltBrOp8SXql3TQQeTSUuGbNUDv1EUGzkN/KDSETyyiywBp7wKVa3vQAXva6BCAI8u6PVnA/CSx/zoWCmdAexLjxpA7L72OOrqkMbHtcxWVfVmpL4XfnSYeoXz8v2iUHeJqoI8+nIb7XDGJFe/vU4f5HcjzhbyEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768378433; c=relaxed/simple;
	bh=5ZpjNv8FybRXr+WfFrlgTEGSy7kETnaxg+YtNj0LpdM=;
	h=To:Subject:From:Message-Id:Date; b=bIKYwQTNp/MUra07FrV7m7VzQS5i9nsb9MvepVLcZ8D+pl5rMRvXwbI2j3GiM6AIpcZV1Y5+5u150/I97ITCnBsPRO/13793F1F4Jq3ejhNrGZl+xyZAl0Dvxw/2hJ5HEf1+YqkDvWNiXfiocwHiwVkB5xUOanRmvc9ydNLr6iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cj+L/li2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cj+L/li2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C71C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768378433;
	bh=5ZpjNv8FybRXr+WfFrlgTEGSy7kETnaxg+YtNj0LpdM=;
	h=To:Subject:From:Date:From;
	b=cj+L/li2wV1V10Wl4ORThl68jyZ8FmiwP/YacZdjKpyf5/FW2YR5lWZL6l3HWFdqM
	 tRN3wx0kO8HTwZtx4Mf2uImsdEYRaTQZrO+e0Z8CaiUY9zDtTxXd5cSuwMGRf5xkka
	 lpA18DG3eyCnPRnnwOl0DfsSyOyzbmYSoLuo6gx8goulllg3lxXZujYAjlWXtcei17
	 TO9nEUpceFSt/gPFuG4EF0lLtA0gpst502vJvK0qLgT1QAX4Yb0AZNnJcKy/0gEivr
	 arPlJ3B4nhpf7SYZ8XYzRqQ7ka/k2l8PQz2GCrKoV4pETTQsnDiPqurvpyImvJEsD9
	 WsOzURaB6JuLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95088D31A25
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837843357.19281.2080775165347670470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ff7bc53c2d7df61d49abf6ebe721b4a6099f0679847ae33cb669d8190361d6
Date: Wed, 14 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768378433
