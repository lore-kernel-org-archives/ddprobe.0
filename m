Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCDC445AD3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784626714; cv=none; b=PJoCgduVdIQTZlK+Arq5kQ/GTp0gakiniNlELZ+3TogcDggsstmW1UoBnUuzaJlPXGdmT8bsvKOf9xe487L7DrWBYjxqPgSRw5f3jpbQ1X+XuQffGh77saN0bu3ucsahMdk/MYn6xpRIOfwf3Cb907uF5/3gL+Dv5ytuD7rTruk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784626714; c=relaxed/simple;
	bh=zbltAMHCDM+zWa8nV27AkDbE8NVhj0GxBSV0sAoOtnM=;
	h=To:Subject:From:Message-Id:Date; b=iDO92XONRKPyeqQq+gsOFV4RBM+QMZ82oMXWmFgMt3eRjarc9ChaQ69tdtnwjBKmxduGqNJSnAEXqS8DcHeJKguVDdJU1j2mrXrke5s8osfpQvMIQuq031t3B+8mwRhqAmEM1S7VlJSHKb7wlMtwONymxs4BHktEB2HEUROs8dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0XAGheN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0XAGheN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3652C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784626713;
	bh=zbltAMHCDM+zWa8nV27AkDbE8NVhj0GxBSV0sAoOtnM=;
	h=To:Subject:From:Date:From;
	b=K0XAGheNmV7ifKDpRvq1I07hgZppUGenGsBHCB1ZqUZZvkhmGb0x9u2+6itz24p6e
	 I3OAP/cCg10VSIicqgfXMsPaLUDkQNjkhzie2r42C3FdJMK4iWoPDrvHAdI6HwIGaD
	 lFNxyRiPy3hSUYUPJtM2Rw/IDUoBux8xtD6WneBfHsmmJ7DWvQHYSiH53zfXLESw3I
	 s0Ceul9IfxsR+oRRKjAHaT5mCF+slio+KaoQSSNR74Jcz9xry7sn9u6Pw8Yvgi2+ng
	 1Flgp6oO+md0ESCMOq8ONOA5qqdOqw+DJiEcOiXsQZHiO0DfFGHUYvrczZRrJbpkAa
	 VMxnUwK4Ta6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94A2C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462671368.18011.7629314388714616814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051deb7f07cb8f86968ffcb9e1d0a28569c285ea6a3e49eb952275088025619c
Date: Tue, 21 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784626713
