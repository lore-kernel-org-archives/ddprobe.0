Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA653064BD
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765384974; cv=none; b=mLrKR6QpUL6OnftBmU+GcXQ08jdMDLmJeDy8/UbJtSn3E1OzumdEu+zYSWrYh6RpHoBwIrEtnl7KOKuwmN8HMifBfgt9A90nPXXMJl1PHUw9bxorfVNOa7f0OGLltOx9+4b0tjREeWsr49h7tNxPX7E7CNozd995guG4E65CyXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765384974; c=relaxed/simple;
	bh=+qN+FNx/9A4HCpxhaROM1yy0bbMJQj46ThJ/Y/Lgy6Q=;
	h=To:Subject:From:Message-Id:Date; b=SfmS1pbVE2KlM7mEnwV+DFYx/8Gjo0j7fuTMhasDtZT7kIEZFOcIlibOa7VddQrrZ3mFYR7BmZIcctayT7+mCVI7IoL5dGef0iJrHKWq34AjXdYwy0rvXGGXFuZdC5m5o6l8LoaUJIWdUShmhBIT1jdd+xPhAzkGNfopXXqhBE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSGZNp0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSGZNp0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD22C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765384973;
	bh=+qN+FNx/9A4HCpxhaROM1yy0bbMJQj46ThJ/Y/Lgy6Q=;
	h=To:Subject:From:Date:From;
	b=HSGZNp0HWmp+6TVCHq6g4HgOVPTEmLUjVM4yivRkcyokhW+KllzZHsm+v2472yuhy
	 7Lw018mVdFqhYblcwxlO7cU0zH5/HL/R4ZdqkapiD4MYhVlla0yXB8J6PIE2pE3qKd
	 h+nTgh5IgYE+5lGQ2OkrTHCL5ovo0Q9Wg9bWdp4cZv4ylZk7DXkjG545pgBu0CgNVy
	 Ah4xpiEzBuSIRnKewGSZ8Ua8IaP2FIvjDRjnTFItVkoKkJfL0CZAcY5P12t9nk8omZ
	 QA40lCY0257OBpXJp5VydgTQwbYbeulOsPb+CIvD0kmT86b979rE3lG3oVgLc+KHbB
	 X5axx7BLIiRKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A6FD3C928
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 16:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176538497365.17307.11882674150707533685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2526ad6b7d5294a2372d77bc15733109c52a95dd4b99b1c8ec6614d02554a5a
Date: Wed, 10 Dec 2025 16:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765384973
