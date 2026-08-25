Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A19348C7C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787629834; cv=none; b=m060Fa8at0peXgeTXw01fKfyaO/ba7jR3VB7AyEUeHK2/iYYSw/Mt1akySRjf3wY7tYChgo7GYgi52PpinJ7+F2zpuLuznMDJsJSs8fdKJoOVPr9feDBMmnY/Rya23QPaX2Pg9o+5pc39d8gcQ2b37eSr5XNbDGHRNRUraVZ2pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787629834; c=relaxed/simple;
	bh=jRz7wPKZVdY3urPTzl6DOeKkiyQMVKMicsZtF9F5RvA=;
	h=To:Subject:From:Message-Id:Date; b=Uql5R2OHi5b7ePZ1BNKl57/OJ7AbSrtx4sM+jvg2J6DMjT+yjvqJOsJ1W7SjKYPWj+Zlon75mtxC8WLBZhI8ueS4ZSDi/him8lkfe0tsjyoaVaAygp6LBxwiYexHwrWMzVvZOOltm818gQ4f0ccf3aoR6rH8BilWvDe2QVnLuuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GP3s7UW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GP3s7UW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4225C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787629833;
	bh=jRz7wPKZVdY3urPTzl6DOeKkiyQMVKMicsZtF9F5RvA=;
	h=To:Subject:From:Date:From;
	b=GP3s7UW+40+o8ydhfqJLBrXCfXsSDwobqqG6YewTVz3sDQmpHJk/GQpIqA6BLzFsr
	 OoA7E3B7Hunp5jXrYcsARKk5T2jFzwKAKL/Gb9vsn6WnYgjpgapyI6z9KQZnwpl4ng
	 L0oMujuMopV+PfyGVAGWBpw0jDgLCAlUJfv9P1UuENLKxcAw0EI6kgeublkzNOudiT
	 bSC7a0RsG1vr4eNN+6xi0WhuZl2ZVrM1/pxXgVDgI9IIyprvkAtQx6bTYAKWI2Xj6Q
	 CWE/PtHbag8lgTHqYX2DcaSqbqwrjF5D5h7nu6g+GJrhavfFu5S7vMFBsWpAFhGTqQ
	 WQdLoX217Q7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD12AC5B572
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762983368.15530.1088150747407203640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45719909e692277e1d0827166dcb5ec21623e73f4cb7ca9d3fced2d0534ef33d
Date: Tue, 25 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787629833
