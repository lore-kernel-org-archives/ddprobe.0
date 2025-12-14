Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAE9316180
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765751574; cv=none; b=XvRBjI5mJZ3pyMXmJFfv8Day4hWlNdeDd5nzLUypiO4dW5gzImeNjJIDW1rXcbgCMACr+j+KCtEKDlH7WJL1RQh2kWxYVLZSWGiA4BK/0lxxYiUqLVuwjySfITSBVu/hxRdJDyujeEf7Y04rzMC8xZqUzbKT0j7Z77WGFgEOrIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765751574; c=relaxed/simple;
	bh=25ucuR74vdOHTdV0ddrNbiLduO/zBhClz+0EqlLN1Cg=;
	h=To:Subject:From:Message-Id:Date; b=icc6QkwXnww4n3Is4C73taBxynIch79lYnu+4nIC63DqrL2vCUnSYE8BNLKSxXft6CRgqd4rTigtQ+0BrQRwemjftKUrR4vEML6X2e+8GfyI6NTTQhsq3vXjPzwAMyD19KNB77vNF+/8lNyI4CfSyhWsnJFKCHGDdcAo2GMfFQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oqkl21y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oqkl21y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8102C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765751573;
	bh=25ucuR74vdOHTdV0ddrNbiLduO/zBhClz+0EqlLN1Cg=;
	h=To:Subject:From:Date:From;
	b=Oqkl21y5jW8dS8KGi9e3Rl4vo6H9jLRrfflkfyz/7qUwoNSCIIhosSBQRO44+B+R8
	 816A4fBzTXbBdfh1VSj+4dkamfck0jBWOpY66gZb9Fz3U8c15TdL/ETOMn2qXTH88Q
	 Su54xv5ub8UoxaEJKrqBYMbA+CBYkRehJDvHRsLIIrmKag5jLd9lRX1YfZpZIVsN7G
	 nPl08IDob6OUnlpKuKhel3VESsYbMpY7Xhf0cmHJTmUcZigAP6W+js3VjCPVdDh3RD
	 5LBAtV22eJmwt6RM92osZUelR1/BGG8XCaSjkKfhkjzfJUC3y7fk2JZ0sHIBob9T6V
	 ED+G+OymgCdkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9356DD5B16E
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575157359.31244.11113608866357844202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc32b39caf21d433be8fb376b3f22adb7d452330ca82a42bb6d9dc588b906370
Date: Sun, 14 Dec 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765751573
