Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F16A4C81
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773705894; cv=none; b=qEC8zyNXx0pF+LBS4MczbQHPy004gXX0ZJa3xtFOie0odpoUv7dOt2I/CmEmHUS0homF1USWH7mTkBHggg8ACv03ElAusd7QGGgnOH0DbDsG3hfeIjw4V3yDT9MB2jhvOEcN74UxRrhc70Y1kGkhi9WV6w68Pll3Ntsukz1bBbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773705894; c=relaxed/simple;
	bh=WwDdfD3UZB2UCK9BmZlWqRmUXydVpwW8qbvD9BWwLH0=;
	h=To:Subject:From:Message-Id:Date; b=OG9P1SoEAHCbZCH76XuzxowLVIeH19cXBrFys7eVn6mHYZjv8gOqeXUXKIKbqK5kYNe9J01EFvf4KFQnFqj/6aYBfupk/+rqyjjiUR8N6t5JGwjU8SLf1Nq1Anv3n88HGyl7rwrgvdwNulPXZMteQ3vD7YZA+iIvobCRqpnOuGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQ1tUK56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQ1tUK56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07EFC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773705893;
	bh=WwDdfD3UZB2UCK9BmZlWqRmUXydVpwW8qbvD9BWwLH0=;
	h=To:Subject:From:Date:From;
	b=QQ1tUK569aQWVaFwXi48OxmXUfNi6IRYXX7gcpObevi1zP+zT8Rhlferboi2bZ5h2
	 QdY8n5txcA4r8b6nLJeZUDGLUDB56pnxHqSnQKh5b0znvK1crXKO/eI/Gp2TzsPPza
	 SNQ/Co4Y63cRXE5cOkDt9GnokxloZd5PyBMPq+7U9KHQJx7QWs/jSPs62nbLAvCS8R
	 toTrVrVxyDXG2FRscc67TxSywrt8PFmQdoXStgWp/1nYmphqwiw97xburxinu6d9KH
	 uHxwG6TamPArowPYe/15lj0eiLUjASqtiv/e0arXhwybSidBZhLgapHqWF+Ge3FbLq
	 tdWJQZPCUbKPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F9FB5E93
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370589358.27920.6687010151607673200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35790a48bbf93fbeff804b909ef25660bd08c957a4f7d614dedb4bbf0b10869
Date: Tue, 17 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773705893
