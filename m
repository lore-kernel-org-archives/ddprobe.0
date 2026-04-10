Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4133D9DB1
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775834254; cv=none; b=Fy3lbC2TfXdJn22pH2OjYxvDdJC37QDZclrwArgdgBrCKBJljtdj2QTyWWD6ESKcf446visQTgMwEv0z7ASh80naS8UArY8XzYfaSRBzHdzDGPO+jJruPAmb2uKQUaYbwdVHbBXvQ85FpsYHs0qMr539XodkllkPCAuBdjO4et0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775834254; c=relaxed/simple;
	bh=Zo29750X1hzDsbWN99BMQ84FOaF9uYz0clQ4W+ZZX4Y=;
	h=To:Subject:From:Message-Id:Date; b=s2JObeEP/MKNu3YYcPQ7hBJIF0vel2SJ5/vNd41PYgbgafPXGptKoWGz9QPkD2fd36k6XfFWWQgThA5XHxYyx/Ir3QRzLVSnyFjLPSPfWvxe7hQqojs7efd4iD/XBlY0Yf9R950rnILPw5v6ZXAX0E3csKGBZl7t7omKmgIIprs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMjNAakM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMjNAakM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4DBC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775834253;
	bh=Zo29750X1hzDsbWN99BMQ84FOaF9uYz0clQ4W+ZZX4Y=;
	h=To:Subject:From:Date:From;
	b=jMjNAakMFDoD4oHbZ4MO/1BlSxv/vyEZ15P69ajGXZusJzPA5PkTU/7iLvqyKktxW
	 3O+QO0DAFEhfIfvj4T+QsIP35E9i0NeFuMHtIlOpU6M/+csnTP/ttJ9p2Lp1Trg/A7
	 tE7wZx0pKiyeW0OmpM69ZIC30SVqzgFs1/in/64489SwlSO2bvQ+qPczYJxA40iAlu
	 /WHTj7n8fsNENI2gSHoVSY3JP7AzYF/w4Fp36nyb0SUG5+lKyh0xxd0a0SOx8/kkWi
	 SQmQCeqnyyDax9DR/KyAGs4LhT5g0gEeAMk36VtjnZ6WQHOJiSLVZSFcb/knzo51UG
	 hr+HIQGLg5TSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADD8F459EE
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583425369.12159.4779630263447651908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b846b3ff5905d0d564eab2070097f17db8ef2aa17f23d03fde4ea2517818b868
Date: Fri, 10 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775834253
