Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DABC2836A0
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770875094; cv=none; b=KXnwaHklDokK5kdsQ8LINzOjPlcL66/Zy6tySbPMIjwtg5ctGTDa1//X0FhIYz8DB8kBcFgrhkJYRarTM+6MZ3Qd4g2DWJ+agj0AjgUipwZVyLmiT4soPuumyIWdoJLqw8WNVzjdG53XeyDRo7PqGla2Y4PJw8OGGguN4Z0OdqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770875094; c=relaxed/simple;
	bh=FVbcMAZLlbaCQlhLh7Dt1g3WSs/d9ag3cV+9hItbfCE=;
	h=To:Subject:From:Message-Id:Date; b=rbiXKoJXzIoD2/5LSIiyVoaIBHCw7NJWh3Tu7LQkOD9cHtSiirUqjLFZJAVC5VJD0Klip4wR/6resZLg3pVGJDl1TMuPnQN4hpnDcRbd2UVJOty494x7wKFnnEw6BqfzIDHOkk8e198vGdJ5crwHvFdLEk5dZ115HCvvBGIYvz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJaO/vTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJaO/vTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD550C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770875093;
	bh=FVbcMAZLlbaCQlhLh7Dt1g3WSs/d9ag3cV+9hItbfCE=;
	h=To:Subject:From:Date:From;
	b=cJaO/vTzsQmc5Qq15WBXDQ5srCHCVWo77A92b5yj8kKxtHs93/V3NSPlC7k990Vkn
	 CSsyd4tAKQzmJnf1GRnVRPJdQny3DVEIgnbHBgXq1GxXXDgeZ22stS/mlBTDL3hOiH
	 3OyMk5EfvZjZPV0h4ESJAKi9TjNow8Zv/wazSFiqpArmEXPoh2oB5zqLi1f/ZyX5us
	 d3KKgzjn9bkqnjn3qoO7tv3dcJVNuTjhNluf6eReomSdXEEhFlSgYqlXS6pXHcUCgJ
	 kWzMld5FFUl0bJvODclndrIdmgwC2KJEzTcK/7vAqRZj6d2RPW4Gd01zE3dV6FtwlB
	 A6gOm8IZ3Scpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0140EDF040
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177087509362.31617.13527258293345916028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e372ca01e482902c953e9febc99093074e45528eddb6bfc49b0ba49739b867
Date: Thu, 12 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770875093
