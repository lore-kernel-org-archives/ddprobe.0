Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAD02C3251
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760533193; cv=none; b=alhbkPr/sWek8Ej/mZzM/L+5xQhfurv5/qvMOt7Bf/Zhr8XCThf3IbNGqpnAR1zeoCT81H+waGrBz9c6burawHckOyynmT+jUGTmMOhBP915Wvg8bfmJkwIXSnvSrpFhFmG2D8UNcY+gmJIwdrF2SuEuHKZ5lzEIeWmmi/XYqms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760533193; c=relaxed/simple;
	bh=Dn86gZK3nQwVKjo8Q3dzzzhupbjEtAtUj7HSvKl6+dQ=;
	h=To:Subject:From:Message-Id:Date; b=mUVkXUajEteFJdLHxuL/j/8iMxA7cqiHNZCw+n+9NbKUzwPowt93G7t4dKvaF19LB6wYrwil8x2kh4Svjhn6nBDRJjEQhGl1sOk+ihcBOkLA0BYWYsXRtiedubLEWy30iiArA+brq+M6Q3t1n0y7sgAyAaTTGC3OBITyqy8q6Bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pO6HnYBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO6HnYBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760533193;
	bh=Dn86gZK3nQwVKjo8Q3dzzzhupbjEtAtUj7HSvKl6+dQ=;
	h=To:Subject:From:Date:From;
	b=pO6HnYBLpaorhstw8pM1RHl/LhzaevgB9/dAba+lGwZNAL/X2NFRBKzRJFRQT9b+I
	 NKFazOEF37e1P9t6D8020EkV5tz8gnOTglCpfV8Cu3PENMgpLQro9d2e9L3GVZrUK1
	 4ZKl517C4ltYR3ekM5cyhbNajti+YBFuvr2Y2KrpY9OOtnBvXBHM22ttmuk+U1g19f
	 lrbyaF0ueHzMgkxM/Zv/VHDukzi9yrhdsdUZPpkQGYCb26ivsNIBZ2qUNpw6lGU6JU
	 S5BMM8lBUADqGeGh1dfxtSIrFWl43Ore+Dr6tU42oLUmb8S4OuZboXT6Vj0MQ6+h32
	 BDsBDM40sqC8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93870CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053319359.29339.904033042865888841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120b7fdeef10d1ab01778e98cc83fca884e894aab23f7c19a640cce300cc6d86
Date: Wed, 15 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760533193
