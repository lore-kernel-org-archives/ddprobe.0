Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3853F1C84BB
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748239794; cv=none; b=JdibDCdO0d4S8PtdsXuw4zESf9pkWGq/nKBRSwiGuCZR+JEinpHQllAqWCak/zQj8CFXXvXyKBkwFAiPRa68Op4KBkU7kIzejciI+P9aiUV3+3QY4tJVwGpRWXxKs+k4b0JKihSFzZQVZHlOGFM/7V8qXCqI7qkuyXeZuV8TT5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748239794; c=relaxed/simple;
	bh=FFYw7H+BZwOs+ToPSIo7q8EaN9YI7/xdgwMkOwICKYA=;
	h=To:Subject:From:Message-Id:Date; b=LwboM3aI9bFWrD2eyCX/OGZ4USpU6SyJLHQl8LDBr2C05nLpZZO9q4tZ8y25RCrT7QM8wPsG/47FkphqcR0IK1fgVIVja7ufI20vtt8EdKgo2rNNbdN/zVnN2uVryUpDCwO046RV0YRjCAUDiSyEhLkB6xqgU5mYtNGhmTIP3js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyPqtvEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyPqtvEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A154CC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748239793;
	bh=FFYw7H+BZwOs+ToPSIo7q8EaN9YI7/xdgwMkOwICKYA=;
	h=To:Subject:From:Date:From;
	b=MyPqtvEW3pis0apg7TVKZh3yzjox14+mulcHlJ67/lUJppbCCnqnT3P6Avpi1EA5J
	 TtuGFRs7GlObkK2L3FhA3ExyMG/o7B8YZcxLWiiWQJ6zosCSZHfNW9AD5LRybmU2RJ
	 2rTltYNl0MXBvG2KyX4eJNO3hdGG9gEQzYCqEBHkZgDxC1fbfopAfCP0Qn4/8pIaRa
	 dvbioGIEEwiklWr057xs1gZC0HTakUD46FsYodX6MXUAU2Zl/YW2cabzjXilbvVhRc
	 /QNdUh+LST7agOcelgsyCyd6RlRoEiDHYZermWcBTEagPPewnEIrJzIZB+aTLwBZ5r
	 7B9Qm389OXBag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E4C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823979358.23588.14871775108823796203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857cd12b45348108396931038862d4229866706fd568af44ac6edbdd80c64915
Date: Mon, 26 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748239793
