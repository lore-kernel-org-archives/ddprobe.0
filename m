Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75D91F76D7
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733243153; cv=none; b=ieQ+rEsHBKGI+uS0/39FN1P7SsHMY9kUSaaWmVGzt8wLf1uLh9hP9KzKFFwt5hpC1hLvGfKzYI1VvpSt+aFSXa9f6OpG34vfRGMwF0GtNmNY3G0+jVEA2WOl6/Jl0+nNzpdoAtExj96FUlVXDv1cCelk8qTEoW85kWUvuFV3nq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733243153; c=relaxed/simple;
	bh=aQH3B1ewdDBeJWluuXNCAMM8i6dqx+aq7s8pMh7EowU=;
	h=To:Subject:From:Message-Id:Date; b=lceO+62z9UkxBqJGHcMUc+UZneMouN8IfCthH7ITN1e5I+wLAjE991xWqJYzX3HYnB9Sj9QccWxxXJlOEIwAptoX0N3BCC4lHl12v/76yp78l+hSxnG0S86tjytqoRN2/9E1Ub65ySJEvJbmfYOGteR+fHCVr+MDrLYBEx0NyS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfVruzGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfVruzGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFE4C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733243153;
	bh=aQH3B1ewdDBeJWluuXNCAMM8i6dqx+aq7s8pMh7EowU=;
	h=To:Subject:From:Date:From;
	b=YfVruzGa19wR1CMRkN6hXoGUjeE/c40p0Mzx0FnFaMIwQItdyf42Oq46gWLq9xDra
	 YPLgrMk/LzfCmtxFxjUKGBBx4lRaEhZ3ULDlYZgvQRtQlYPNofNwRYr1CufwRGWkOr
	 RiWQVcGjjr4oExAolFpDZXfJoZtzJNe3sMkByVJ1L6+P0mn8CgXk4xJPLDYEp3+5P7
	 +a889x6U3oy/fB68ccbxylFdgD/aDsYCrd6gZWi5bm8OjwjopDqHXTeFCRdXFmrent
	 Le6px+YPSuKITNBTUPvMZ5pdCocOQ+hHIMs3b49JddURkOR9o08RM//StyRzs0Vq6X
	 mg9LDab7X92Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC7E74AC3
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173324315359.11565.6355441136321205403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167729b88e9f197286d43df1e8d2776ba5437daf0748a52a9649f0295caf10e2
Date: Tue, 03 Dec 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733243153
