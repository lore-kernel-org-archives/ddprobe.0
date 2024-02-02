Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0814B144632
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706888897; cv=none; b=Kq1wNf7g+UH/pqfE8pqRIFTctDUldeSfxGRGg+YS9ts46WY39R9zq3PHNJuvWRW7qX+UfAdd8OaimjTq938fbhM7YQjtudtj6zEQmDUuz5L1iZaDe2xPEVjXbMOIXCjzjZKUmMpPJ4MDIafGsUeblv5rPQbjwo5f+mzcKTFrbyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706888897; c=relaxed/simple;
	bh=F7yGsp7KQtSfw6+CMbOm5AIUIqld7WviGN8111jzfJg=;
	h=To:Subject:From:Message-Id:Date; b=KRPgDv2/6eXD52eKlVjO4QsgRxVZwTqFYERGDmJ1DBj+eMJrLc9VFagwWb9vJu0o4sDxt/q/i52LpP9a8Ru+lkeWntr60HSR8QDxK1Fv3d1oHuwvLmGvwZTCBURdZUxR6/LEGiaCOcBMPj5HpkojKpbJZHAwNWTC0QoedDqLQQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKWc4JVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKWc4JVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705F1C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706888896;
	bh=F7yGsp7KQtSfw6+CMbOm5AIUIqld7WviGN8111jzfJg=;
	h=To:Subject:From:Date:From;
	b=AKWc4JVw1rgt4qVKc06LFOhRJQ4XT079CWwMTqfQnvOV3c3RQJJlfKV0eJ3JWxLVy
	 9pGEHXvg4w+P8WwurRDnm172vbh/Zx0TMeEnkxHje+p1+Us/AxRSldMfeceiHszFfP
	 DOnnlotp+0KzZd8zSD+BJXXseDWRTrbDHseacPQIdvj3LuJJIzPAlWSOsOgUSbzxwl
	 VoQi6HHjlX12wvMg308Sp1hoGhWe26+kfU+wyV0VEIqrXzhWJFWbrw8zTCVOC4PZNf
	 DF4M8W5IFWK60g/+WsZPWzcaGExSZXR6dixj8VSjGvPwPyk5SzkZ3IrKT6Yl4yykxf
	 90VUqjq5tpaUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C78DC4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170688889637.16924.14054963020053520278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 956efbd04249569114256034ad7a80be04702b8c105a781e05e32bc608a38d48
Date: Fri, 02 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706888896
