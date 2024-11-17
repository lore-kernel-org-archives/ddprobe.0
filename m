Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359D379F6
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731830754; cv=none; b=ZUAbfkHhc9k0ASVzGGME92ZaY/IRI6jPXu075Eq/EGBot3BlzIn7Ks9UnrFCaaqyHPzPfGqki4hsi2qf5/vJyWBhhz65Y5AsTfzuDzxh8wJq4/ppOGsHcQbhN6VGDCPY01frw+Paa4NWZDPxA7WSprHubDCMGpujw5JVi5BXvwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731830754; c=relaxed/simple;
	bh=Sv61f/79jrF4zuRDl/4fZk5HuC7goSYXrzwie1L5218=;
	h=To:Subject:From:Message-Id:Date; b=joaNvd5xUkA9lndUvTxTLHKdmjxV8L7Qj675LJlqJP1QLwHNaVkTwoXOhPlyvlPhqFtofHvH3dTBjTMx4QVUAaZajvhLL8p1A4ZwO6pEiWnkXGHnuqH6vsmcbDeyymy98y2hk/dppvknpVku5PgcUqyWSDhi1JOerN5qonjptYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AypBaOFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AypBaOFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE774C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731830753;
	bh=Sv61f/79jrF4zuRDl/4fZk5HuC7goSYXrzwie1L5218=;
	h=To:Subject:From:Date:From;
	b=AypBaOFHEvyamE5sxHiuFDCBVgYS/aTyPSVoLKDRKZBOy6kW6ucOQn6NhbzNrYLkU
	 PvRF60NovkigcWpQh1VH9TpWLfJ57RypVbyfYiqjlQ/+hNpb0+8nGAtx9YbxZ5mU1P
	 ngTvMQa1XwV99kEDXYkM8St4vESLSIX2HIOX2xEuiQ1v88b7xmAjNxmDotskYv1ORp
	 uc7evo8IaUPduJ77EXzg9bdfERv/LI8tCSMTEg5scHGa/7Sk6oE7x+5Hm6PZJRZ43e
	 iFsq0zMgt/b9KRvBRQFD7YaodTdEs/ZsiJJrx3BC4dAqICYPzBdEPC4pi5henNXTGB
	 Hfh1ALDyhpc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C86D68BDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173183075360.30131.1056559480874546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c78829266c9df8e15546f120557bd3ad8cefff183641a0883aa4142393224d9
Date: Sun, 17 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731830753
