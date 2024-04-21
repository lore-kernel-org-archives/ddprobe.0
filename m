Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667A21B977
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713716423; cv=none; b=PFzkNBmfrmp6Qqgs20sy7dYCzq7dY2u7+CJVew9C6M6KWtXJdnJYGzt31ea3drIliVNOO2MxvTlI2CiT9WQoyMDVr/1Z21XvQ08NCr+4EuDKc8j56mdcz0SC4byBCsPOe+03Yklj2j+xuOilO/WL6TUmmCJl8FP/eeJNgrG/0/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713716423; c=relaxed/simple;
	bh=DJn5Z6ZqhURyQKKCsC6V+A+y8qg41d7ifQFHzXBnH6w=;
	h=To:Subject:From:Message-Id:Date; b=RtAlVJS53yc4WW5166vHCD1rRARL2DNW2z9qCCHcJbpZaDrIXy6G5Q1RdtAUb/NFEaJEGQoGt567+7R7fFZTH+85761JrYhILJx9gFORkBd4WRit21lagWv3a3fWxlJ1rskh38g0v4VCJO6u/hBf/Ph3sGvL3MMIoI6Ii25xzwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dz6KH62k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dz6KH62k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BBEC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713716422;
	bh=DJn5Z6ZqhURyQKKCsC6V+A+y8qg41d7ifQFHzXBnH6w=;
	h=To:Subject:From:Date:From;
	b=dz6KH62k7cbzwQr0Wbd4d21nFaEsdk2Iuu9HP6yNvvB3SJ+fIyK9wMicPIAvETtCt
	 jz10WSXTWZx2fogD8hqHyR2nQzeaBvSW09insgPGg3v53EBEfyCQBGbN3QQIw9Kr27
	 WLKWUZEildQotWbrhHJIxUpfwA71+jyFO6uFYS0MO5RQCwhRnRIShNDxiYqVq7nVcf
	 UmZV5WVDM8j0489jthfawfBZxAiISMJHCocWrNkcufLYBCpZe83FErboIA3WJJsaBo
	 gr2dzHi4SUAo6aaF+mS8mfmd/aS7YVhIWCz7O+7qsZZ3YCN6Qj3iEnfgVOblh92M/l
	 vap8P0Q7/Toaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8717C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371642277.14431.8987925057845378069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c463371e5c9a2ac63fe02df8255da3780da75333382db28d31df52caf27c6fc3
Date: Sun, 21 Apr 2024 16:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713716422
