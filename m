Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4467038E8CA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781040934; cv=none; b=Fj4X3CXrzI2hBagSBXlZGI+iJ3mXdgnKXiTD1+/KjuUykgBNUt0pnkoTdCJytLnRRYqdIxteXAoTr4kmuotYyxwUYIR5QhTWmsf0+Jp7msUhjseRVgq1Ck46sfA0p2E3i9hunru9yXGyhFkHhWprj4UgtXUCXaMTTC/OR9okER8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781040934; c=relaxed/simple;
	bh=vPE6XtIFQ3Uy0LNIWV3SC7P+51D+CY7WhFHzxG03puA=;
	h=To:Subject:From:Message-Id:Date; b=S2BL+dF+lXEsfztZsy+at94UQDyeTrnn3rOhNa637cg6iOtGEDpkGu65Ri/u6W2WRkStdtuD5AY+CzY9Cb/a2YS7Sw5HEXx2iTYsgfyTu5slB524z/LOLJEFEVaNOaIpzffG2GMnLdpgCYhg+C892ESPNAsVHRbQ1JlCcDkNnxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcX0c/MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcX0c/MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA10DC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781040933;
	bh=vPE6XtIFQ3Uy0LNIWV3SC7P+51D+CY7WhFHzxG03puA=;
	h=To:Subject:From:Date:From;
	b=rcX0c/MXfm4RWMMPp4nXT3m3ldv1W4F6pH1cGrj0rSbg+wFBoidWFApSHcuQYGuUW
	 y2EgWlue18BalRU8JLBXZr06YC4Q3us7MGGq+GTHRUAN1x8sPqVHALQbdT38GyveV0
	 P+5KEZyvG65IIr0/3lF4PQ7d6L0j23SXjSok2rj4K01UPW8SJDXvY1zu0ZHlqMXgUJ
	 TUC6P7w2ZSexQtCGkbvgNU0BZ7Ddaf/24KxbfXc/vVdSl1vNoe0FT9jAZQfHQf8uxw
	 qvkCkLflyBNChArLpamCI9is/PmxIsiWGy37WGjm6353cwBzFK7vyySiJ9MMyA4HM+
	 CxN3SHCG2PT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD36CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104093369.31490.5518017227227067494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298193df29a384a57d4ebb8f09dc40ba886ae8a9eb8da80a50995a297b60b58f
Date: Tue, 09 Jun 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781040933
