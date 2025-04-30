Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E50E1EB197
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746008995; cv=none; b=ViaGincWBJj0FlWJybXe3hxLmy+Wei5lP3av/lMisbuif2FtxooZf70ro8dyTMh6IhcXa8Fl5KqZ/XWvtKk5bYdSOx/oban0nvgC27QDGqV1XQX1Ub4BDa7g4zYTI2k+I3D1K5SEfbo22fqj1nZC8Ro/g56HklNn6f1lN2/86WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746008995; c=relaxed/simple;
	bh=7ubTA7oQYuUk4ZetFUC5sJXEcKz3SrlNw6VR9be3+uQ=;
	h=To:Subject:From:Message-Id:Date; b=IGe+YY4B2+QIhb66PjmF/XCGF319XM/lZETAeV1hzCpWEabnb732THhbcmKcePSaMgSsQMwKKhRr8LnkgrMTB3gmhTVEZDzF23NtEVHKuMJXVYCDZbfNcgBjuYigTpfualAcmE0iCZbz5iHBzqwBoP+kt4BeA3BqXrNCn+s0q+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaxbQSh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaxbQSh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E622C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746008993;
	bh=7ubTA7oQYuUk4ZetFUC5sJXEcKz3SrlNw6VR9be3+uQ=;
	h=To:Subject:From:Date:From;
	b=aaxbQSh1CyIBGlnk5GavPdksVoWIaJgDcGeJR/x4xdcfZiDFj1e3twvNmklaWtAC0
	 DJs6owMO2pz7pq0L2PPWfCV/f9JGyBeoATvLFQK5kwcE/5WBHO5F7/I59P5zgagMgn
	 3GQsOTVD0uRWPBlY4kK2p7FkcsuV3rRiMlL6ZaHT11adF3m6N2XmjbtP9KaQupeRHw
	 zZOdT8vGXBCZTG33vgODCAm5fCrjyFp4jKCGHxI4YONhwrDoe76dRhgUibvD58F4Um
	 0QYdDqBHTUrtg8cQ5zbM2lYyEXZXEa9KKGsGcOEv7fQjPhrdRvQs0g2XdRzW7UiDRM
	 lMUvPnEiD+0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA16C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600899358.14882.15421633802574120039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbe1271c2d27f62e083ebd6453d716572095285f3bca795bcc3b234cef172c6
Date: Wed, 30 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746008993
