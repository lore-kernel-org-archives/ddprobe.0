Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C2A31A56C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784859034; cv=none; b=XYm99dmuydgN86oNnJiQB8UCZ1WAswwa9EXJoWLvWJCBcJAmmQl+EAQf/NIyA9PdZyuQo7kvL2fTG5wixXGx5uQz4aCbNA+b5z1MhUBSkM3tYW/dPAqN0Gq/NCiqvBBW1iCqjrKQ5uL+SU1Jm49bA+HioEi8qaVtYPGK2Yihtfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784859034; c=relaxed/simple;
	bh=dHuNvZKDuZ9S6BUeG/cVFhnuUfXPIqXUSmvPUS9zUDg=;
	h=To:Subject:From:Message-Id:Date; b=jCPJxPqBMWm/azRIdIZEYdNS7dR1QekBzEF8JZp6DDDRPjMFH8ZE6jCwbbTp+cWubVcSGtocyLs3/0YrlhMyM59FgGOWBWnGsmntkx0h8ikg7zQj/gX03PYMIFWY2IlP3aYKjVhNvPa4bQ3pTgA9yFDbTMFWb3rsGcOA1d97PjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9CC8iGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9CC8iGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DBCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784859033;
	bh=dHuNvZKDuZ9S6BUeG/cVFhnuUfXPIqXUSmvPUS9zUDg=;
	h=To:Subject:From:Date:From;
	b=P9CC8iGuF8OzjNe2qGG0r0KU5DOdvheOyIDdrwbGvhSArnJ/Frlh05vfKLsp62PRd
	 6hAFC+ici5m1vXhXNJW0ArPcINhb/IuWm+k8j4dsfwYWA+AX7PJWsNzZUbdea60Scd
	 vY/9yGLfia7mJ6M/ClOPzf1vJN+lkf9oNI88cy8v+JposBcFwj04pO556BQlNnoc8L
	 N1CgmiiYRgGYCc7Qbca74Je2tcWAoqnYaKFOx1ipRB0lj2Qqktw1grZWO1pOu18O9k
	 k9iKaInQ7Bq+v9kDWwtkA8OjEHur3BtPSfdxXgte4v+QA9msbWs5VTpk/AXHfrALXN
	 aoo77G4su0rpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA79C531CC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178485903368.30528.3029816197174077382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6916040d110a36b4e35e04aa833dd69838a2c033fa6d69b944af6bbb7ef80bb
Date: Fri, 24 Jul 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784859033
