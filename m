Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C181E492D
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742576394; cv=none; b=DY9iFO1zM2E4PKw+wOUdG8BFROGUfi2SJeKXk7XaHoa68lLvNs15yrV6/9v8GQc51Ng/7FFVS0BocsrlOBjtxB3xuHzVZtFvY0FBlZYaQKqFRUlNiqXSOrmoFbXaA3dxq10AnoOf0hw73Qf4F/q3gesXG+0SBUeQ+DwzSWxfRC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742576394; c=relaxed/simple;
	bh=IzyIyjareVvvBfW0b+ENi4w9d7cNGpB983WGnIobwR8=;
	h=To:Subject:From:Message-Id:Date; b=U/XfdzGP9L1JM91wjqNSxt3pvOhfxR2JMxfRsitMGOah09a0pvzOTc9wyimG9TSqrBjZgxAkpWDMbuKe8nScWR7FCsbDg5Joh8hki8Keni0gABPoLWGd2qLsN1HYP43mmNsI1BFDtWPffEHR8OjVUFpw5vSgNRJactuWqUzqRy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HT4yqrhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HT4yqrhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5329C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742576393;
	bh=IzyIyjareVvvBfW0b+ENi4w9d7cNGpB983WGnIobwR8=;
	h=To:Subject:From:Date:From;
	b=HT4yqrhemp+66t1APAPN7Z4sjGo1mGe+yJLLMh5VEBlA8TtBABSp9VPiif0MO6Uv9
	 l426TXMCZWZ1Fddh61Ap6+/nJ4Afrj6fKsErLy5afBrmgrMxjWPdM6YUDX8L5idunK
	 i8erskGYIpFrtdLQ+guAnVHVGoTZypi2ZI3gD7VSFW7lzGy6WC/33hwqDJs5XCZg6a
	 iJjo+Y/aHd7AJA7XQjkV4wZkXbTivsggTynSto++57wibQg7vFUU7ue2hZrrTe8f7O
	 /6z/2OVgN0oPqDqAj71Nz24RgTGqCuMt9yXNr8TgNwdtOeNm5MDHeBdu8leHUr0ZaQ
	 JV1lQXwjdtX8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE08C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257639363.18013.13757781074281203520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a228aa2e6af7d3e5c2c76507e870a2834010c2d029e570252eabcd4db9f00e00
Date: Fri, 21 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742576393
