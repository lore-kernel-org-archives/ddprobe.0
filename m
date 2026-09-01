Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619BA242D67
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788306634; cv=none; b=pFcLfiARd0xzShKERrVQrlEMYJlU5PUQvwlCp+qjiReLdv4TeCtpmw3Te+fu+KUgMEE6rrbFRoSyjfS24lvp1n90lEZc7gHTNzjrHYiE5FM2a6eLC4F4C9SFxzbnLX2wphzzgoZBCbKfEKTFFy+5gUr3MsUxPPWUY9gJymUw9eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788306634; c=relaxed/simple;
	bh=GDMIPBPmg3uX/Qk58/tgAQA9GLqb8ntVr8UOkf4LJYs=;
	h=To:Subject:From:Message-Id:Date; b=U591hLZvSwQOU8xhV2WzN0jvftVI9KnqTvl8fagqD7KXF4/gX7RKzIWEDHKTnGoNTvPkHbpAIs69vVU+xHISc+TQDKcae1Yqc5UlaSepzIyW5lAjtcWSN9FOhlW/e2zU801W02sFg6L7lM8vtEIO8Mud+TKDxuwSszf/quGt+mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usyyReem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usyyReem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D602CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788306633;
	bh=GDMIPBPmg3uX/Qk58/tgAQA9GLqb8ntVr8UOkf4LJYs=;
	h=To:Subject:From:Date:From;
	b=usyyReem+upIzAq4W8kw7Dcc8YhE97aV4n3ca2hSs5R7LM3ZlJk7rVPOU5W29iunq
	 w0npq80ZbppagzXxC/scqiIupD0kkawWI2lToRJ5Irgh3zDHNP2Yk1C4dOeJ1MoUNo
	 CSRuX33ojopV9MPswhdVqTqagRZi9tyKy+tuaEWabOjuNFOT3IOARFkop72rOdiVT0
	 pzedGx8Oiv1b2G3Bv47kCr/uDNrLNpz8S469GP1JAXsyx5qnJEQzyTgkf/Zvwc+BxH
	 gjeY5GbZOjnXjvVxVgxr2lscbiXnYZAa4j57lV+fC87RC+zUP1lI5LV47i1mpio5jI
	 6dXaJtuObgkMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D6C624D4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830663368.848.17176719122229824498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98fe16ea536d88bfbe4b0568264b2624cec38af40930436c6b3e6d7999054ea
Date: Tue, 01 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788306633
