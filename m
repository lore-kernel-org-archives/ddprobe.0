Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE933161B1
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772148894; cv=none; b=cvE3aFjA/DfafRLSNzDBP5aqI7kVSPOtjQpH9Utc1dpzok2u4p3u9zxq8zd9csYdt1myO17LvdUOVclX1ul/C0MYZnHOJZ6WlytGKHyhgJkzRB/cMIoV5cYrYNLZudpDdWUIzyt0XkowJFPo1ZIlwogRH2JGpuZ1U5/vGNEd1Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772148894; c=relaxed/simple;
	bh=jtInBeXbYZJGiipjELYAO237LGZeo4uynW79U5aGvp0=;
	h=To:Subject:From:Message-Id:Date; b=gUrQAzNdiHswqxBGfzBgG1vV4lPfhk9DK+Wa1LJa0EYwVAL/w6V2dN3tjVKsAkCs8jRgu7d8GyCPmpdCFdpf6CLBJv3xzRU++SfhhayNAHeiXCNJD0vhdKl0a4VTQqBE6UiGVxLGo2oExMP5/5B8WZuHZ0nohZSXgdSdK4n/8C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sysq8QL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sysq8QL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2399C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772148893;
	bh=jtInBeXbYZJGiipjELYAO237LGZeo4uynW79U5aGvp0=;
	h=To:Subject:From:Date:From;
	b=sysq8QL2MqtNpJRvEaaoKWOI0h2lo9rb7SG69T0ekRI7vyPcfSG1dChIFbRWHDQyX
	 sZ6lMeNNIqOyd1Ta/9wLa0//O4u8x7J1POCGi7JYtPT1w4FOT0pGj6HvcqaQGYlfX4
	 e0wvsSPxIklFcwEViqcTsg6ALMXHqa/tqRMxmQxDJ2YOzITOo8e87XWYD05ii4F3WP
	 Fxr7DN+nv0L4aHyTIgPlUtOCXg0IMjxLHXs4ddlXSRplMtRXkNg6z4EBJxv+xUz31f
	 NWCxD29tAa4yr7yTYJXGvi3xzUx+3qqDbrGiTZVpO7AyhxB9XyLqLP+oGYu0qP5MCT
	 kMXVKWGLZoVLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91007FD9E1E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214889358.9128.11824317304074900827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccc0ec71d16c1ac2b3dfb51b7ad7f514fe1892d7c464d2a3bfc51f77b756009
Date: Thu, 26 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772148893
