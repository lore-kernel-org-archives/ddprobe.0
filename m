Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4CE2CCDB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754175594; cv=none; b=LAO6/OiwSmSMLOnb0wYOovZL8ejpWQyLBLrfYwZPAin8NoJ8M6hziAamnay4qSz0VobtgkEkN3UCTEyA26zTL7nCOE4wD1mbcVDT2D0d6HHlFz2Wyq3bKsfAQuSDIeGo6tnJw4DTHKKno9nMRkRnpOJ8h+HbLvnQNoi5y4DYUcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754175594; c=relaxed/simple;
	bh=vu1IZztzmnornoyM/+ODWHh+t1OWpPXLHOOwzxkZNm0=;
	h=To:Subject:From:Message-Id:Date; b=uh7DTSw1nR2PlM6nkao1y+bLltn7aw+NvteL8BN66KarW3USNdDgIPnFHekFE10TX5HZFsCWMcRfRIMsW8S+DLrfsu6iFn2+ql4/DNdSDntUhsSBgrWH08wK9/C4pIO8+sjiU6pKWVmZIu0pxuDG07bGkV0AF5lFRzTXGQM+XjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJb4kfmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJb4kfmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A447DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754175593;
	bh=vu1IZztzmnornoyM/+ODWHh+t1OWpPXLHOOwzxkZNm0=;
	h=To:Subject:From:Date:From;
	b=sJb4kfmgr/OK+ZTOWqft1UfDUM73sGC6WpMlwCm7JdB9D366GYi4V8lMS7SxIunWP
	 6YDOmnNI1mBLjXUQ2oSF6o3AZ1ug15jhosKJ6XXmHQR0UaikmvU7COjhVurd/ZcQYZ
	 O/+20y134v5EBt2NpvXnp+PepdzMxJJ4Cw28GBM9t9ZoIeFLcaWym5+uRhu4mZfIyn
	 iuqnrksOBxPWYDAv5ltqDSryENBuJ1IKk898tXs74GDIbME4ubWZMl8dpvHDDGjFud
	 k2siUqf+JrJCLXsVKmCCND3vXJDkKymDXSx0tASo7R8/hDJ50nHzFJi+euoe/+yaRl
	 ddSI9WPxyjjlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95648C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417559358.19336.3117078550783432593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b0bd9045a2d16fd622ecf0076ab3bd68885a65c4f8a25bc16e6fe8dcbf4811
Date: Sat, 02 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754175593
