Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19E237997E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774946694; cv=none; b=i69n+m6589RSOhONk7rfYYPsRiN1kxU/1ReBGVnJD4/MiKykOylrIy5HHWoVWCCO3p6b7zGA8tTFrlQ4pbQkV7kJrMuwhqYEBSfyzVALEB3CFOiyKz6KOMx7HazvIQthpQv6VrLYqi7Jdi3T2Tv+GpE2bxIP0bE2vg4kyuKzdcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774946694; c=relaxed/simple;
	bh=ClYzCJeGgBBWUHbZI43h9mt/1LON+nEELI1yD9+fg1U=;
	h=To:Subject:From:Message-Id:Date; b=LpVuUc3HkASLgeMj+35FIyGYamDlPuFoTEOc9Vi4/ytlLmLzytENKDvLhoFv+NCwZuz7EP+BRicDpVzNZNBX6AEO+lBNm7VJhHoA4Ha/ojwB+6k/CE7V1b0sdMfGI5CLiicdQx9ow+AHrwBkMp6lLPJ3/wXo26IRIwL8oju4GsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5KlNrSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5KlNrSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1253C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774946693;
	bh=ClYzCJeGgBBWUHbZI43h9mt/1LON+nEELI1yD9+fg1U=;
	h=To:Subject:From:Date:From;
	b=W5KlNrSOe+xkCQz1sNYNl8R/TsJ5VPJDRTkaedLbxurtaoAnPt96nSlDsIstBYy4c
	 Xq1PRjOKzqk+rmUe/fXZ67L6q9cBhu4yAPYkL607h/wFARgl/9oJB1lFqH82/CkIlp
	 AWBMAlGxPQ59Fp1snjcfCTmb0ooSjrL8YJtMhzGHHSO1p+cRl6R1nYYai/5ztOQ5W+
	 Y2dh56YK1T2CaiAGy0yqSsqT1WgNS9qf54P6cudcPcpXxIrXahrmNba9l3KjORpELs
	 FbSLtDkOznPrCadyhrYD21xfd4Q2fUOYM1L6FlJEoinRfpnJp6rN37jNxIbiVmC4ow
	 W9GfMsey9UFvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACAFF60ED
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494669358.14274.1460589687774928832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d24e4fb155cc6ed6ff10bcc4f93d44f1a2a4257dc897223f954167de5cf29a6
Date: Tue, 31 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774946693
