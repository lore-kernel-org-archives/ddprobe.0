Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546AA1A2C20
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715980343; cv=none; b=oga6KGAUfc7FGZjIQXPl0IQYAk8nc6I+S95i6GMKzToBXF/8jZG7BdwK6c/O+XQ7YYGCWuEHrupgxd2n6S+vO8Ie/8ax7gd7ULgXLOs978KgCbpuTtDExOzHiQYTaQj0bJBJxUH6H2knrZAR1WSgV0NWYOzKf6lKD4EdIQfIjWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715980343; c=relaxed/simple;
	bh=wd6iZgxfnoxtWrxL+jUitvDFmpCArtoOSMZEfUXbIaM=;
	h=To:Subject:From:Message-Id:Date; b=hyOh89TpmVVPidTUbhBwnz0aLIM6yDFvSd2AOzcxd1nela/owz/zrHIrgx72BhWH5DdwwfsyvVWV4HBj09NQ5UoGJWilGosht6ggDfg0MsOV2lp9rLgEEFo8yXD0aGWQzrvhaN/SPTWgTEZstxrjgF2fsNEppL27NHGm0E/H96A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pnv3AuU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pnv3AuU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81C3C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715980342;
	bh=wd6iZgxfnoxtWrxL+jUitvDFmpCArtoOSMZEfUXbIaM=;
	h=To:Subject:From:Date:From;
	b=Pnv3AuU19L5E3mGVOzATmu5TgCWtAgeAMGSJ9Wvka9kpXoCnaKfEAog6ll/8YtDur
	 O9NxUyGEJw8mnkoBBDW64lfVvL+zJ/QdQkAPAqCjMVfLfYBCS5xa7265oC5YLJSqCo
	 Y5kDo+xO1ALzMZLLRfRMNiVbbYjIjvJxer34qO9Vyi3vRp/Ffo2xjzE+GDtewOTFbt
	 3q8ixKN/rwDIMAnQgLT9+OIC65oEa8iSxuP6nRuFR32U7p92Q8sfJAjDrVa694XPYr
	 yrRwbUUg3Y1OJlLBf0c2H2K2cYSPWRaBai9SU8cLWXveMxywSGJXPNDAGNjgpN36CM
	 K0hTcSge/jM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C316CC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171598034278.31485.6965286621301370035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8caaef96735ed40cf84114646dc3361b308fb94bfa28d5068584ffbacbcd509b
Date: Fri, 17 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715980342
