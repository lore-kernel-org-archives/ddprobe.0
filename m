Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F37A2CCC1
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745683794; cv=none; b=QdPIKcV+IZLFB5IW9ObhAV9Hvh2dgZZwVpvJ/xfyTyTXGv+myAUjCzOSzfH+NSQdszqIwo+/zr5yhwCMYqQYOvU722telTs/foEnprpHOyyakOjjwZ5MQmJbmthahJAHW5MhZ5z7js9ouYbjt7fmZYge3lIIztE9jUhcXJHIL9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745683794; c=relaxed/simple;
	bh=SAun1bMrkNEsbL/dX//9NHYJ1SNKg6nl+p3jMRnOnAU=;
	h=To:Subject:From:Message-Id:Date; b=Nz+AXy3KUPMdEAHOZpzZw1YYnG9egbNw5gOyxMRiJMgxMYxI2SqM69MXk19MlYJdF+RAJ666hOJT9J+Jk7arPUiq5jH8bhLhxVwkSvURYgl18cMGBgnsPI2ol8eKhnjvh9qsjv4dB/Pntd1GLMvaKXT2UzpKQ+NrXvbfRc9xXqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5FUgnLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5FUgnLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47BDC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745683793;
	bh=SAun1bMrkNEsbL/dX//9NHYJ1SNKg6nl+p3jMRnOnAU=;
	h=To:Subject:From:Date:From;
	b=k5FUgnLCRQXrJ/WICOUCmHgZdbTsS0lkpVFcR8xDt8M/qFlOYlQPcPpHHvTH72qtz
	 ObZwqj5sVrSC5WdYPTJkoxs6CJMozG8Ro6sl5hNaLikFcnCD9KOqvWhxDajouC0LW2
	 4BVrldYQwaELQfTXiktwqkSaZ3LcZABOeGyXyaLsjsT+kM1+JA4/WRofpcUyDNKUE8
	 uCxSS1tBywGpbzDuIHBvmMetp5dnWEbWqLI8aPu0zYI6+uYDgqVrTHibQwMSnKyAVp
	 UB6UJ43l6EuqJo7V5YviLvx01fKlHG7wHzjfxEnCWBPSchsBM6+nDEzMf0XcsAjKvp
	 GuE7pCQjNdbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D4C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568379357.22585.10887790871274902348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78efae1022aae89b4c85e45cc34cd9035667cc18b8044232b3ae6a7c81a4c25e
Date: Sat, 26 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745683793
