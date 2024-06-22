Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786E4155310
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719074543; cv=none; b=CJ7VXXJGUWqcgVWV+0ib4/zM5Yf4LXEpHc5w3Zp7xGRggiDjTYf1UqIauY8oaQpNbnO82N8/rk+h/UY3y/FJmD1jCyh02/nhdyqz7dwfcE0ho0/BpOHL3ynE5qj0gHwWr7PcObVzIuB2BxQTgHLqNf4MozG/ND2lMRVgG2cQRQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719074543; c=relaxed/simple;
	bh=WlKEsHLfqHwcFZ4lFtyseCNHVQ57KOAGJMfnR0wtKDc=;
	h=To:Subject:From:Message-Id:Date; b=iMCfQ/PNVEimwGUGkF0WEOIZziwJhkjg8cx/DH+Vd0XRKjDaFOzrTyBElyzSsSZKUGondlUP7843U7msmbMPdI7UiSMsf0QnjteskypG75wukKf2D0SixBJmKoN7bSHGcUmB8kpHdvlbKlszKdu/JutU7Y2XhT58bWRP9mzIHqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV3UF9l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV3UF9l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF5CC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719074543;
	bh=WlKEsHLfqHwcFZ4lFtyseCNHVQ57KOAGJMfnR0wtKDc=;
	h=To:Subject:From:Date:From;
	b=QV3UF9l6KhKWZgYEfSkWWLHWowmVoSULkouMubDMsNAp6EoBZOftbwaPNTHWFoG2x
	 R38OVCiaIQbygsq7GBl6eVmXL0kns7NB9QpZfhVq+al+n0qqSA0EAQ2TJODL3qlgQU
	 AdDWPpKg6KO6JdNU9peeCVJskIKOYkXHzE6Hs/MdaojI5jWR5I7jg9k3/Ww0B1aAwP
	 1XcEkrZHuc4vckPioZsC1SceneVne3rE9qFfn4x7UurSyS/xe5etoOTIPZ/njZAkG7
	 at1+IhHicfXL5rwnLtf/OO1TFrmOv4jWJQsd/MAvlg4p4SYkxR5Rn+NXbCXbDbbvka
	 aneoLWwIFPSdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D366FC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907454285.31009.16625589814836038876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd9701dbca5e70778c5ba332f9f7e552fed69e3733b670d436feb59751a6aea
Date: Sat, 22 Jun 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719074542
