Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32053BA222
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778735434; cv=none; b=D9VcOBC4J/PVA0hmKRXnUJGpk3yh+mAaoHOA/PPoxPrLxwxF0/tz4Y3vflYf3XRiREthq4z2i+Az19wXV63od/rivQV50vZojU53bIiX2Xb482EhCGD36f6hOmPGQgvJeEWMKAx2ClYibgHON+YZ4RXjsys+VBWVP77gIDKRTy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778735434; c=relaxed/simple;
	bh=p5N7AerVAiV/wmvGaPwC7doGW75zZUzz/sUQJiuPnqg=;
	h=To:Subject:From:Message-Id:Date; b=PLkXBdm3Hpe0IwoH+Vztxb9vc7Ji69WnR21+NlK87KaAWaGcotATIKIU817GXYuj2Sy6/FDvSflr3XYrrv/qhofWqJMw9PuiLNDvgnIhUccJ0OjLxBHcxKNJ0nT5PFpJp8HXt1aLL/wjYWdkh2pYFTk3c0otqhMQ+bo0NwPFolU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7aNrQkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7aNrQkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF32BC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778735433;
	bh=p5N7AerVAiV/wmvGaPwC7doGW75zZUzz/sUQJiuPnqg=;
	h=To:Subject:From:Date:From;
	b=u7aNrQkVIiox6Tlrkn6j8gXljaHjJvNVbfHzO9cHr1CWkvsS+yBFfCBTz2POUMpVN
	 NR01fTmHPFSr7/RZv17TSZpE2R3P1wA7exJRm6h9y0MCkvQPRzX7My6fieXbQlC5fY
	 Q1LwnLZPyPe/Ob7KOx/CbRWm6ubWWa9EJe4xijrcyuICNDnm+TlJGfTR03Gy6f0w+A
	 +yCIg6h6NWtvwXm9QuwkBWvQQE4XSphPz3IX9s77d/xwWegWwOSIXim5eC/055gvQn
	 38drnuO79vwDTveacYJC82Cs7Q8+lzbG/CPFB6f9yiaJlHOzIjqHpaJDo3P9ucgsIh
	 BOhO4rcQ3y/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD87CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873543369.13513.3616790700914359671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc9edb228d03535a524b7acb720839ff58fcd4edb2193d5f3c1047098764030a
Date: Thu, 14 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778735433
