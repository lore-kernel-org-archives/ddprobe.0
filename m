Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149033905FD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781686594; cv=none; b=XklvHMh5Lwr6uU6pSbKKCCvYWr8lEjP+Ii4fQUfbB2Op5sixGPBE4hXcGF2LHheM/3sNUWd9lnWqNHPXvDkUaUqdGTn263jQdHh1xF+uOMZdne31xsG0mSNsu1CqHjcNGlxRUXDqIWK9LAH0kPkJEjx7MEBea3VUsQOy0maxLG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781686594; c=relaxed/simple;
	bh=fJuY9T8OzQnAEVDU27FFGysWBapfXyNBONsTg9P6dWg=;
	h=To:Subject:From:Message-Id:Date; b=jz9Cvz7bghTpzvaN4btkVGMAKm2DJMf/ru272W0n9Wm3LFu9G75tRM4z+//VLm3Hshv6Jl/rSTkaCkf7mE6AWrJz4D02e/Y0LiTPlgVGX8jmii13pBzjgRzywL5ONxuGVTiX9MdjPzzPzlcGdBRNB5QUcAxvb0lSjOpHP+Z0myM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQw48tTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQw48tTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7EAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781686593;
	bh=fJuY9T8OzQnAEVDU27FFGysWBapfXyNBONsTg9P6dWg=;
	h=To:Subject:From:Date:From;
	b=uQw48tTlkTmQsdVYo0uzumiRn76IDrQhudZVpoSMguO5XpJfz5fvUwmmCxaWkEWSm
	 dV0p4QE7vfHv642EsjR6M+AOxLAl0v/WsDIi5PDrX3M3SeCxqheI9GIsGyWn5vBvr2
	 PTaH5GawVZN1p0L5IeYm9DueQi6X7k+B/skBeVVcUv4Lp7zfwbjqq1tIcDXazFB5Xo
	 T3U82hUFxxQuLTwMmvK0gjlZi90jfdzMrKTepwr/ru9b7lAz3QCXHIThT/chRW4u1A
	 QzuP2j4Njd4BgT+4EOkqjRZwR4hoGCbioN0Iq/GQp+EcPABKjC5AYtGqcCDDLmKATK
	 hJcj8vHmbvEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF145CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168659370.21380.10868589377771639663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cc8d6bd3f5a56da8a753eb70d1c36e2a1fb5bf255ec573d32c6c2afb32afb3
Date: Wed, 17 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781686593
