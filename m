Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3447B1862
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737765354; cv=none; b=R1GCVEbGJClKm5aZmH/DeJI6nXCNuJGwJJeBv/KC6I+QC3pNnD2wiWrpMMXpELiRfLdi+2BOYh8uMvfI08Hxd+fgxrWl1iNcfDJS5aVhZPWHbYKOg326ury7kE3sqU+LgIp5jG8oFF482+XNghvzTLDd+nO5Q6On2ZqGda5Oy54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737765354; c=relaxed/simple;
	bh=baWfwIqkcbDOXmq9MiusejczJ9HdTJ28vh/6P3Qfl9E=;
	h=To:Subject:From:Message-Id:Date; b=rXzPgsQDDu1YxAXUoXK0uTdENFvAK/ZRc/FpCXcffVdY5rQDIBPAI47XS7QmHP4nOUR42wv2+iIZhU5mc1J19vw+jZy0Jjn93bKhh00KzJiPUh/dTLSSlz/8+KhKrFHkpPkoe8/OsFGa62usOHtqCxbxu3pGmdvmJY6JBziUFco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/rxp3LK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/rxp3LK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C9C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737765353;
	bh=baWfwIqkcbDOXmq9MiusejczJ9HdTJ28vh/6P3Qfl9E=;
	h=To:Subject:From:Date:From;
	b=t/rxp3LK6Q7b3+NVPF9rEcPnEnsaDV0IjU+IeBtuxRPIeX4TDN+PUkB+LJ4lSMJO0
	 OXrmg+K7GJz1PQmMUbrYYPnhYUzNArkUfkAHSWDny461juH8bQZVUqDt8ShrEXH5ou
	 6vHwc4eLUhSkFa2U2zFQnyKPKIm+pgKdtWXusynvn/r4nKLssJOrWX5eKnpG08fORT
	 Vaw9ZGsHi/zECKTSzqaRpjlNaMO3pIX674d9WgN20bBRZfwVJMe2fRa2CFNlKga3fM
	 bNfWryJ41PtZHmDrkSdvh/sxjjSaRXwwyHKDaWAootD+0SOUD4Hlye53TaFebKJCXw
	 8R6QeNvFMfqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91649C02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776535358.16770.16707992324488940516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131b55b33687324f3bae4ecef91785f0bff461ea322def2533d77f54c981162b
Date: Sat, 25 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737765353
