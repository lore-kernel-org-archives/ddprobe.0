Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8372367B5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765704774; cv=none; b=e3jWCy1r2emZjWBe/C+qO34w7rJosbgx42ILRi+wfvhurVIV3moFVjmsztWpPqMFRSld0HgeKElBqbqKo59Qn7R6wOXYTJ18ElNn9t4te0PEqjpsMPrdSLE6LNDopYBLjcUkIah5+jdXWthBKMsdkg7Cum9keinCZl+6/wHZabM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765704774; c=relaxed/simple;
	bh=FIaHLfxV5wuWVF9eBKumMEEkmjEzclBXygf6YqJ/qfs=;
	h=To:Subject:From:Message-Id:Date; b=eFoqAb8fiwDmVIrpRyncpuGJ70Y9vgSenl77uOE+NGPOFNUXaj8Bb6Ib8COY39c83gR88Wft71yLXOeyBI94HtOepvpBs8SJOh8Hyfb+gCCRk55bU+MRtYs9bbnoqk5tkhPZ5UAT87dDJJT8vAIC80BBvX0RAcbe65gX75O31jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PN1qv9vk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PN1qv9vk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0C8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765704773;
	bh=FIaHLfxV5wuWVF9eBKumMEEkmjEzclBXygf6YqJ/qfs=;
	h=To:Subject:From:Date:From;
	b=PN1qv9vksXbHnGmW8hejg6BRBuvo2gMDjiPbwN4RDKU4ZTsgzYBwdFYTqpwvJJlW2
	 prZGUYKHHsStA0ChiEeppOIFHih4RT+eSY7mHMqy3dN9gc7gPoMdr2W8zkEaauBKs6
	 68YyEMN5X8IyU7HJVArQHqdkfreYfudsvsKvMB0upa68tJd9YlEpZtOb22GEB3ioOu
	 NfnRKHzK7keRt0JXnj+3o6+4sv37KiuQ/O4wf7pyq9NXWf9/LoDAbI7dO26pzbOBNN
	 S6jp1F3KcJF4eMxduN+WKkyDIbwNU0Qv5HSkUJZpA6Gai9x0H8Wc7pqT20SKOOSuiT
	 QcaZYkrZWXZkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BB1CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570477363.30514.8550418150973134031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8904154ef2bf24a4f1c2960c606f5d47e47020dab261a4826583360b09b23105
Date: Sun, 14 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765704773
