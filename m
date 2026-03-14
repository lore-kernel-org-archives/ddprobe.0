Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEC920CCDC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773486894; cv=none; b=SPDSwNDEXDS0aHyOqKOQ337w+exVgTb7kM9avZcSpS7xH0a4LVW72+gu5jKBod2IZOi3FXQ9keH5oXPZKUxOS1Raldv865l7+lkV7zMkOrenF2XzUeLB3ZCxdyZ6MFlVMU2iMbAYii9/28EupTFBnQOQYOgzzpR3qe+fKVQGqjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773486894; c=relaxed/simple;
	bh=RIPS6F+b87N7VbrUzIVuh2Y5VHfFm3ijodP/6lN+fm4=;
	h=To:Subject:From:Message-Id:Date; b=ciz9RgwyY/iS7HrArPLgcoi+RfHbRx2TPxpe5Sry8guZq3Xh3ozrEmRgDhZbFO82uoX74jmR3Bu7lLNt15UN8RsHDXK7H5qxkegpobTH1W/BXfDBjL73d5gPIZb3Vvbd5bzwFnDC5KbeZOIRcwFLK82sP42BamUW0/er454eHKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjSgWA3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjSgWA3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC7C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773486893;
	bh=RIPS6F+b87N7VbrUzIVuh2Y5VHfFm3ijodP/6lN+fm4=;
	h=To:Subject:From:Date:From;
	b=HjSgWA3hFj/PnOVE6TnDUeD6+u0riyRU6OyZ+WFaCsKD/6YitQHOx5EViouVfuVP/
	 9BKjqHHCf89BSjFczf83W1MmubvVOKx+TekJMe2thdlHYu/vQr0bOel3wxyqEdSyDP
	 1oJNSe2qJktEpTtfDXBIcGznIDRgd7AlR6l/3AaarC0oKv5+1MbmYoHXDIgDpuSg0c
	 wORBJrtAc5SCRe7DQIjwMSlKDGRIDcP7VmbFgEtPb2lIDbrLrL11LqVsK5bj48ZNM8
	 8hXhdT0744u/fZe8DmcnpBnfPe7g3dLx6QVTqC89IsXPgIPyl1KoEJr0HkWXFvWqS+
	 Ar7lGVQX4vcPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E610706CF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348689357.17924.2002403914106077381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61eade243cdae5d66a8a728fc19bffc529647fed10c6b012afd8a5122f583274
Date: Sat, 14 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773486893
