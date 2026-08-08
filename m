Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689703B3BF0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786178434; cv=none; b=thbHs3SgU5dTCuv1u/25aqLyYf0gZAl0Vc6yDCknmOT6xJf4qonECngAHxeO3yLEJAikuJKmkqThPeop8PUBzJBrzn8UbZDgoxKvsTzhNwIl02ocYZ4DNiU3WTTM8ZFZBFHTc9d+g83v1NWRvHekdUrMCo7QwsrHVkCcyEKSAus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786178434; c=relaxed/simple;
	bh=0X0SqlBzYt8sFWkorPhSsY+/BjKx4COitQ1NFa/5CJE=;
	h=To:Subject:From:Message-Id:Date; b=Etd0v/FTVkGSMTI1TDYHhItrYRc1LMVunGP7Ds1+4ABmWFNXmjH3BSek6q3ec1i2dpFQj3/BveaYVjjOQ0/Yz/1CJSOJ3inLtyc8CkRveLq3EidAFTOmYscdVJAjDM3dTgnOFMsJ1r53/jP2Q2uFHqJdeOqK1fbMtOZvile+ifI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0Mqtkc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0Mqtkc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D533EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786178433;
	bh=0X0SqlBzYt8sFWkorPhSsY+/BjKx4COitQ1NFa/5CJE=;
	h=To:Subject:From:Date:From;
	b=f0Mqtkc7oWjWJKP9qNwaOL6swew7VKzMONg8e1AQc8ZjqvmDZ37HlqF+45UOsz4aL
	 1V5Sq1W9nJxNUjal5PDESX5MNZEAMDhiohkoVr6SngrifaVXtp3p+pvpNKfRMEWG4E
	 14kA6Hgk/X2I7wW/vg57VACdkKdghw2A+OxAkgio6joG9mHSLEf4JRDYFUWf02ve18
	 KtrAYGHa1ElDmpHlGLt8Gv20PFnDiq/WJlyqsY1K5TQo9riXdA2PET06vFHwydC9LC
	 mQz5SpYyaISEeZJMSXLM2MXQC6P5vT8IsQu73ukC4mbmPd5FpmfOrYA3SMK4x8WM19
	 ML9sfdV2SLUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1360C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617843368.1186.16336235101657086819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15447da4d57bb2ffb9e701a3bc724c055cd084cec350cb7a8ec29635f66b5b5e
Date: Sat, 08 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786178433
