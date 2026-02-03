Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225B62741A0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770131634; cv=none; b=nOvh5wIrm+BnbIy3DH8sagiVJ3eEAOYK64qvNWDp4c2LthHBvb8HNZtXPaKHpt0OIAaA8bqFVBNn1EWzzdRpb4zu/ckid5Lv7oj4FQncu8wjvLj0CtX1M0/ivU9J5/ys4jNAFHujyImKWdj7SDqdVcHZa29X5AYYZoWeOwkOjfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770131634; c=relaxed/simple;
	bh=SwsAxeBO+LG7bVE380iQYWYQ/ui8yJhInOFYYgzRoM8=;
	h=To:Subject:From:Message-Id:Date; b=iHDbjJtyCVdOvMl+jwR7+nlg4nZ0tzcAlBoTQ0J/hHgMkXh3w0J7XDF7LIEp6X3yviIXgoDTGtZWYvOnR1UMdzj+mYpNVScgHY3Ku/zpu2lUawky0RClxus7XtXyaU8gaan9ueQAh2HKF1F1Cxv1iq8F9l6zdzEea6AuFyr9rDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhrQFM5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhrQFM5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC033C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770131633;
	bh=SwsAxeBO+LG7bVE380iQYWYQ/ui8yJhInOFYYgzRoM8=;
	h=To:Subject:From:Date:From;
	b=OhrQFM5ZTA/Vf5kxuxDiGpns3RBhugIR4kKd71IsyZpTYk42x7KOHdYYwOq/FiGEd
	 cxjkzehe8ToQmnXw9e2qVs1UXVegbyNJDBcj1bxUTBlDmY7p+tsaQNkjzMeGQl/NL2
	 XwspQKqQy3JuLzO8EwxZ3BeOKnGSkxcxfrokixgGz0sjLDGtFje541jvfZHCJ89/yn
	 H7i3XBBFJptEMXJq9P7wX3ex/aHwg4cGs9H+C6BuiNn0fn0RBm7eeYyg1dU0p7YYlX
	 vsQTULSvwCUUHm0f9yrI9Y/EcqJhEjNZAPd6wffBIBs3j89Co4EH09pzzxPSwtGw4y
	 3I79j7FkOAVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99743E87834
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013163361.14526.12305990805705448595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fbf4fc59644a4507621c1f787d36d9212406dc5ae965fca91d1a2b738f47fc
Date: Tue, 03 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770131633
