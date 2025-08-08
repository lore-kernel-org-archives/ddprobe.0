Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141AB1B2186
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754689794; cv=none; b=EPoa6WFwRN8msWhbdhnf1ksK7eIwRUtjrqLvkDNT05Co/COocPbWi1NQlmbXVcdKXPF37TOSW3uN4iHJNaF0UWQ0iQD/waXnG/QwmpLptI3j6DfUaIsi9k1Oj36K1lrIMAThOnQOCAhn80iqiNtxZzR9MdLArkXe6E6UkuTuPwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754689794; c=relaxed/simple;
	bh=7BwXfK/Gw2zVVPNwQeIomiwGIe/ReQehTmrfz+XAheQ=;
	h=To:Subject:From:Message-Id:Date; b=lWwODqO9WHrY+uLogQgFdTy+nc9PRes6BQrqIGn3dWhSBmUedOvTbJ+CaOxBKa15Jf83HDXhUK5b/FkUBmXe3o2Zf9nIBKT8FeaK/6nRqhJr214LTn3NknOMvszyMITcJFjuMeWxjPgmyAhcEOYNXi4kU9brvPb5SGLKCcNtSxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+uwuoMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+uwuoMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1436C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754689793;
	bh=7BwXfK/Gw2zVVPNwQeIomiwGIe/ReQehTmrfz+XAheQ=;
	h=To:Subject:From:Date:From;
	b=B+uwuoMbBh8iEOreyUTe3cAl4GdG/C0bYiGXAkYSPsarzYche1GfUpZmDSlshal1v
	 jmbF2a5c0G8zVIF8NsXzeevHyTR3vLxubTj3Bs3KK1dEjehKDx/KpP5D8byNnB5hmT
	 PRDwQWD8MBbfe8r27mnApk3yFzy4MHx8iBFs2fdvsiYritiWKqO08VQSqbIWsBPd4H
	 UhUTZ9FbSAzV8EgiYGIIchVpejMbcU+TALzaAFq/lFOVdYhip4+fNgyw3RAbNDtGON
	 pUdhcFNXC+K1JjQaPBYY8htvCcjtNJ3uGTQgvk7+2UGN4k02qDhZFQC8az4wc2atX0
	 4bwg8CbHNiOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED24C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468979357.26711.3391430867786291713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aad48975b6dcf7181edb30e7533d4623a873e574c89377e539faf9647e6aa79
Date: Fri, 08 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754689793
