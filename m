Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F1A38D407
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790357434; cv=none; b=K1GJxfqLozIsvEs0m+MVd/xxL4hl3tXPfxZmWo1g1Xg6yB0OFxy2S1QmaAzQyMbdJZK0fqtyEeT+YBpJWolGkEmHR6sRaKtJtY8vHwbgP2bbwiMvNOvhUXVN/EIIeOdRniNNRhvXgo4Ljvm+2F8n13GCyCuItoq2pZ9rDbvLKEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790357434; c=relaxed/simple;
	bh=tHtUKIPBkpprF3jH2+93PYZX1VepzJDbZrCn6NLXlIk=;
	h=To:Subject:From:Message-Id:Date; b=kjTV6NmNowQGUnWVuvDohm7piRRH0bWqRXDX4pJeHLZbQx3D+yGJj5RAfs95uixVyXNrrrguWjXx7O81QjuokR70HI6VW0zK9YHAaGtdc2fKca2KY7xyCx3KQp9pGe5l/sNfgd3rNwMMItfW0+XiKz2lFbJ8dXN+izVX0tvVDiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHAqU9c0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHAqU9c0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E14C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790357433;
	bh=tHtUKIPBkpprF3jH2+93PYZX1VepzJDbZrCn6NLXlIk=;
	h=To:Subject:From:Date:From;
	b=iHAqU9c0DNxY0HSBLaPGmJAa8ikymaiF44NatedC5pEnOt0INPIIpHfFKiO5kaf2Z
	 cFq54bwxGNYlqg6SNOkwjfoIL8ftUSfMZmjJcNnO1iHvdbpziJdj+zQyc30qr5yOj3
	 QZaiIo9/lSRZ2jXM9aa+VW1O0V9psNYkwY6Wn8vAr6+3/ezjsYWI2aofUq2+90Hf76
	 PvAj2OsjxNx70h6z/U7hQQKmMfAp8COGMKsld5AH4wFXC3p2fvWl8xfJt4ORPqk3ym
	 +x2LrbB4fCZZeD4oh70rbaFF6DZB6xDQLeUqik5UoCkIWPeoAlNGbABfvMOvDVyjZF
	 KogDBchkXc9Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE73C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035743369.28228.6292627039284288339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace4409c08de66f18505b9179d2f766c6b2a5a3c8f57651b4e0d898bab01c8b5
Date: Fri, 25 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790357433
