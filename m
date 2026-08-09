Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0931E492D
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786261234; cv=none; b=sux2A9Wu1AAvs6BQZNaxzWZofko+YxUMma+/aMXp9ENKY0gqW9ifEZ3vks16zvU/AW9/Eoj6PujPwUD964qYJqJ5O5dbsGNOix0Vs93/xtmkK/dqPnHUEY8TXY2NwLShGOk3B0KDxjbh88WqNuU3VwwdCLB27cOgcTq/5quQMOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786261234; c=relaxed/simple;
	bh=ktDqTOEnOq4aNYPYiD/SrnfJgSutU7Gk8EO1+k/3srE=;
	h=To:Subject:From:Message-Id:Date; b=KfqSSNcKCrKH2XVRsc+6FwkyY8r8AUzF/aTTHJuAV3RXcv1gowWNFkdectsWvQnHu/KHTnhWHA43uDZEqMrxl1MxsVORRi0baZlkJlgjRmzdskkd8vj4q3Fi8O6zci/A0sUyoV0gsAr9N8s2u7ldtL1CsIiEBsvdr6zhcNl1BC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJlddrLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJlddrLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F27C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786261233;
	bh=ktDqTOEnOq4aNYPYiD/SrnfJgSutU7Gk8EO1+k/3srE=;
	h=To:Subject:From:Date:From;
	b=kJlddrLvhzdP48jwblhHZ7EgKr+H4OPbFcuZUL0y7PGZeDfJARizVosk/BF9dGLGn
	 CWdOxE0p2k9i/mos4qHChQd4Rr3snVY0mt1z6UsvlqmKgAEyPOagdqTRDNYC98GoL8
	 z/ltkhoBIiZPy2MDNNTTWWRUR4bvTzVPHGFO81i4YZCDQzmSUZCy6S1d1fTFCPHMuF
	 k3VULj4mTAjkXfChDcC+JLolH4/rKEPbHRtm9onTChyGzhK/2HCF1WksBhywKcm80o
	 e8fWi58aUQCRb4oQTN2FDrZUyYSvpu0wZLI1aOHJDcHWTTirHF7a7aXHswCPMDTrzf
	 tlOOzEdpI4/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1252C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626123369.30597.16383625945257795507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04f655c1cdfef2e47c66ae8c368c6bc43ed4afaa2f81bbe17de131412142913
Date: Sun, 09 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786261233
