Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E7B2E4247
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761174595; cv=none; b=frhfFCmuGjXSw7aiQVw9zr8BMAzXnUXSaU022xZZylgdMcwlzG5WFOlQQx7/DN2Ryum47QVCQwTt+D/Ii/rUk2pzvKPzLe6EYGSSAQQXR18GlE2HsurfSJ2a+zWkBB3wFJxjHlV/pN3h4ZVIdOWTmX/LwRP/zAfI60w8FIZOwnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761174595; c=relaxed/simple;
	bh=UvLwfWSEDF04CK1q297wDBG1hLPcLlpvCxAArB+rUt0=;
	h=To:Subject:From:Message-Id:Date; b=S5zRNhbgcY/D/ZkfwjOXR/OMwuQi5EJzLhlDGvfTzB/E6od6b2l/nPxOakYhyl9n1L1R64cuZXyq7KSb17bx0GMpQejFoyw/I8ncUNw6n3NQ0qoe5J3C/Sg/5g8N/ZBmzsflBPZjWekOuWSh6ylETE1eVB2f14Ofpe5BiV6ga6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Auq/4UL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Auq/4UL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F08C4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761174594;
	bh=UvLwfWSEDF04CK1q297wDBG1hLPcLlpvCxAArB+rUt0=;
	h=To:Subject:From:Date:From;
	b=Auq/4UL0xaKMN4mvEgr+54gl2L8te3sYvOesJ3MJrMJPvi8iLnvcTVPovvrT0vz0H
	 utdVtiQp0CW7RCLzlZUCM7HO22NegKPQe6x7PSkyjsOkJhUr5zRYntB/m+4iWLmcB3
	 nexpZHcwGZXoNlKyzPQoPHbHW1OMNwgGXWzPP9sa1E9qj60vmXcBJxFIHK6pb5GjKI
	 Kyc/dA6Omp7sxZ/cS72z3mG/xTWHlb6oIfjv+JUAAgTKhLlRmBo0ql5p0fDbo0eZIz
	 g8gf+k7VhWUumSyjE1HKeeaT5hZxQymSJcDRshXR6saijdTFegW7UVDkfdKyzNOFpu
	 idyJEA5EH/osw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930BCCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117459358.29164.8169907779306360603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4882b4bfdd2e3a79da6aa83af4c299f3903ab5a17ff49588415bacc97853262a
Date: Wed, 22 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761174593
