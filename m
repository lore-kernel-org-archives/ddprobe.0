Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ECA3655C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788229834; cv=none; b=NXKIiwEMl5kOo1y+srFOszjSf6WuckBgax2+Gzw3OjrqP3LXGVs1+cATGlFuH1Gs8Js7HSHBZnt4Uq3dY37pBewgx2pyVjrMs50St+BO5XbGIXSCzMcqiiE91JNtZw12J4trkeMLIYFMfnkAdQcv9Ojmzj8IFS4YrTPwroS/MEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788229834; c=relaxed/simple;
	bh=iv9MZSd8Px66H+kPKtu8YBi/HQl1vv22v0stzlTBNnc=;
	h=To:Subject:From:Message-Id:Date; b=cut++nFCpA8I50WMg8jQ0nglvQ1XY0H/smL5DQHecyXQkVsn/5dTOzmKhjXxx8/u1QT81W9hl8rDPXY9w2MdXHj9hQLJc88Td/1lTFCdT/dkl8skHQI/gS/379De9iQSPGoEwjR5/kEcm2VaYluyjOEy+KYexXtRqiWA/ztosXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOuR2DQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOuR2DQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5A9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788229833;
	bh=iv9MZSd8Px66H+kPKtu8YBi/HQl1vv22v0stzlTBNnc=;
	h=To:Subject:From:Date:From;
	b=oOuR2DQ96FVoR8ZspxE1byNHXdwx3DJZjZG22jx+EtWwA3d5SiFbSbJgBa40vJ46A
	 nRgO8QHoNSrjTvEM8BCNW3X63XGmyCTRfd5hb3ji0xQN5yXgEGs5qqazuIOrkIBEMM
	 okMXijUc+sMgT+ntbLO0xTBqe2X16pQ8wrxoPWj3Q9SHQcdIK2KCkO+Wxykc3rfGVr
	 UYssrXvV5YZdcEp2TdDplcgxVq49FF/FXAdJCEb0bjvza4Z/mAviBJ8sQA6nyUzw00
	 VvtVmBcv513Azvj9vkx8otnbcRXuwjguvDYz3lFGXMA3JAMQ/lt6jkl2W/y51QtZAe
	 iP+RlejcrsF8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA287C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822983368.26239.13512609195371170372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f606ddc1e6bc38a855ebe442e1a5c2d0a5498ff4092e89f7e41626a9863b3b8
Date: Tue, 01 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788229833
