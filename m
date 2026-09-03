Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C56C3939B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788460834; cv=none; b=IpSqWbWDS1qPD7Y4b5S19FPmoxLxdSm4IL11zc4Nz0zlM78tDtB/0j/iAV3KicJhmgaTBusHNI2abt7/bOJnMJZExKimytzmppvnueO45iQzN8jQhm8nA6U1053SPZoEKfUpZ52PyRQHhoTTJG1uFfYq20GtIdwQYIquD50uyIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788460834; c=relaxed/simple;
	bh=Y/Y4H8HA9VWIJZhlusZXO68Yy5pXTi2jYIaXbbTPHIA=;
	h=To:Subject:From:Message-Id:Date; b=Wsqq23qLEJ53uyA/Nm60RGPimrKoIJE92qipFZluhTh5JzWg2sMwsi44RY/9pQ43JOSEwNBKUkYRcpoQoxUzSf+24ClCr/uLFKUF8dh661kFDk+ibRlo7JJSfekLnK/HdwaasfdDiX4g9oQUgmmylURughKvQFFzMsToRoWvcdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhzaUphq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhzaUphq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDCAC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788460833;
	bh=Y/Y4H8HA9VWIJZhlusZXO68Yy5pXTi2jYIaXbbTPHIA=;
	h=To:Subject:From:Date:From;
	b=AhzaUphqizqwlvDGeManH8FngggqAbNMn+jqPmXPsgWmDgXTja8w1x2Vzdj6cxAJv
	 d3dUgTZcAWq8FS9hHFrJeMrL4Iv1xeks0BIMvVclefmoipPsekGVdpQGRaXqhJseO5
	 WEPfii+u4ZCSGJ4eXQO+AWRDClDVV7oVU2McOZLNYfTVIS2sRaua7mjaks4YahnbuY
	 6pKjh/UylWJnLSEMUCmztbJd75efnLC15wOTmFb1WqR8e54g6tw6+fsgYleCN3dr45
	 FRfeOrNVcEre9oRmxQ0mF144YlAPBylpx3WKdi6zTEpMLanby7Hn/zYqqBUKZ9QriG
	 YUeQBqf1MmG+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A8C624DA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846083369.19696.11224091877563220447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948fa7a30850294dda584c8beffaec3a07b2fcc94ed45283a8502077cc48244a
Date: Thu, 03 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788460833
