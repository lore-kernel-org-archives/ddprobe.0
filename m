Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECA13A544B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784921435; cv=none; b=MJO7QmOKHWteP9IbodejK0sfEa3KA2gYKN1Y1TiTBR7mUC4bTAzr+cKgus5VcA2aI13DcyQLHELhtry4+qy6lvOzpji2hE9D0n9T4NOu6cuvv6jiGLFvUcOiP8DETiYKG2BDQal86w7BQnDGX7ZtU5cSiZnRS/41HFURuhq9XcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784921435; c=relaxed/simple;
	bh=XpFf1R0IYgm1szZxlazDVLILFEZCa0ph5+OLfraLv7I=;
	h=To:Subject:From:Message-Id:Date; b=RYXTcNJNEGibh9uXB8irSFhiaFdknfaoiW5cGH+L8N0pFypAdYQWPLyRw3XK6EWq//c0RcnHNBiakjbpETkUXo57D/u04vL1AOYSKXIlbtw0VlJc0Dt/ct5IRevW8RBKlixb7vwaLKg0laxvQRfkzzm2z/blgziXAUda3s8qeYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Das9DURK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Das9DURK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ADDC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784921433;
	bh=XpFf1R0IYgm1szZxlazDVLILFEZCa0ph5+OLfraLv7I=;
	h=To:Subject:From:Date:From;
	b=Das9DURKrQ+K6yaFbOtlOl+u15MRiSEqJB+p0TYQ7Cmo0dK0UFvLiLnxHibbCo6mR
	 BtjfBdeJeNgP/wBVAbSYJSe4Of+LH5b7kpWJeimNyR4tglVNy0RVL/PWrRWb5gohNf
	 au/W7ycODLesqyAsSeBydzahqgFSkRsuCNyEp8fHj+LvTZvcYxzPjrREUSbjuuCj41
	 wWF0VVZy67x4V2uLCwjOAi2RIGquNudizMMEp8IADERbOJihk8rnNxN/Mll4t3luLf
	 GduUzwZf8RSsv9EBfKdo4FUBKoEFGRwdRTaOUrvTyOk0+/MTeArlLW9EuVBqEuPYd0
	 scxgXdSHg9qkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE40C531FC
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492143370.14652.1838955147619094131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc19dee973e96de805ba2d19dc1cbda6e09f56ee8afbd42de41fc56d7cb25798
Date: Fri, 24 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784921433
