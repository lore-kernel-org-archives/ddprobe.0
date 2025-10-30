Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247C4332908
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761807594; cv=none; b=lpFczYzSMOEaEDxv416E5hkSelMFjXNZzbGjdVPKItvNPanJrQ3bGx2s+3JsfDs2b70ORs35rNrs9pXW4yZTMzfnqwzxh8VOGWLX4Vd1TcDXEUlqaOXqhw1C6n+8nZn7iC61cURR1ccrfzcEPpG5fQgNZnAOBTNlMghNoXLDHOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761807594; c=relaxed/simple;
	bh=QX0ppS+00h9MhiIdSU5HLOlQHX17/w3HRSIzdg2e8ls=;
	h=To:Subject:From:Message-Id:Date; b=dkmzEUHnYf176plX7G4lskxwAts9qHaThnFxQdY6Jjkh6oaX0gjDOYt2aZkUhvJKZsgK5juQjesDlcIBR8q24LSV7X0+bXQ3DKFo7WYgr0kh1K1O/1jDUMuu3NvVZqyqKfw3hX4OxbzAY5r5Q7io10KkaiaBqxZb9B05McJuFBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K58VIeSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K58VIeSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A1CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761807593;
	bh=QX0ppS+00h9MhiIdSU5HLOlQHX17/w3HRSIzdg2e8ls=;
	h=To:Subject:From:Date:From;
	b=K58VIeSHZ7UsTpnQtTu46mN4HwkQ9L4FTGEzeswgyC19VV+0YW4czgyejcNUq8Sin
	 8HRCyoG91p8/T8bR08aHUcR22m9pWw1Lzj0bsKlGccI21HScr+G/yn8VEp7qFAwzoz
	 1eexLXsw0jbrFvzypbSmFGFosqdTY49QgBTc5PImlYEUrXHb67OIwwPBF+vE0wuLd6
	 g2+hUq/VhW2nZLFYOuYCnm0ckxxtKJd6NcuBdH5gkousGuvULVsebZ+O5mM1OCvVll
	 s+VoY+6Ku92u9+8a1xzkUwWDbsP3ep9vTLTr2cDPlI8V7ranCmqSz+ffCsQVBxuKFZ
	 Gw/+Mdw0UsQgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90598CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180759358.24869.13556758369509435190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d04afa800291dd68b6aed8f43ba64bf50abfb816c8289c9dc6112740d9915d3
Date: Thu, 30 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761807593
