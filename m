Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E3B3AB287
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784476714; cv=none; b=mR9NcpQxi6vxcyjzXWiX5OuvNK/rPHO+IzYaGmHfxNFP1oVDZEstACdgj4XqnMS8DSTW4XxBPVISYvG1g1rbZdGfoGIjKCwEdweVVfY1q+ACwEYwmHoa2mgZvY2SDfP3b4nhAr2peFoLJLvyy0OmZD+90X9up2weXzLKfB2FekA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784476714; c=relaxed/simple;
	bh=B592DGEMpZdk2gzxRHVNENc5ibb4Yh/Prt87QIolmWg=;
	h=To:Subject:From:Message-Id:Date; b=PBaDMacfCPAYAKlS8eYCX7slbtjvC5i6wF7gVHSdEtvfRXjg+NjYoz7wjSnCXR5rI+Ll3uChSa8/GX71AJbBvzRR78r7ifM0GwCAZjXoqQ7ZAlGOMzHnJv/bcBXPyNzqHu1LN5EH9PXQ97/r0AQQONnqxGGMnBB7LzVilxYTm1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hydxt3Hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hydxt3Hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECD2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784476713;
	bh=B592DGEMpZdk2gzxRHVNENc5ibb4Yh/Prt87QIolmWg=;
	h=To:Subject:From:Date:From;
	b=Hydxt3HhUM0+fl0wkOLbIt9qeOo46yE3OPFbxqSx2RIdClqWcAyd5lT9QRQTuF2j3
	 iN/HuUjk54cAxrh3+CTxKjFIj1l+WEuiaq31s2CPy3VTwUfhSbDrupMLz5QVij/6xB
	 kZvRYqQfyA2m6ivgfrAYuNmDlac3fpNmRsGGozhsHDPl8Knl5vIFgUEfQ++cRaTl68
	 YbFXMoDH3nRexpmqKzrfsQhYE9a0ZH1aD1FtJrnT3IJrcZUjxZrRekaEvqeeO4/5mf
	 NUVgVaU0hP4/arEeIOLrS6Xo/rDd0wubmVXUpIBVtMMFw0YVaCyCV/0vKrAkm0WkS2
	 Y6x54d9eMVTBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7FFC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447671369.14121.9544110851323415692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52938f14a0c2e2452ae1328ece9522f7d803cebb7a4ab36bcdfebbaeee8b2017
Date: Sun, 19 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784476713
