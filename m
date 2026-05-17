Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3309F4502F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778997634; cv=none; b=TDytM9lfX71X4jHbnCib97jIbIGSNeM+zUe9saEKiqEw8m0dPwsrAiA85J1Y0EjD1FSHpwUdlmYChaRdwd0KAssI3wGYMczdRPxaIn4MMpU9lRD1w6Rpv0+p9SVlxzxU7BGiUmWApfLDOGfaFWma3e6g9wJaIEqeavgUCaHnoU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778997634; c=relaxed/simple;
	bh=B7aJrehQKmXnD691NE4ZR2ErzCUT6J6F7TtTD5Nx+gY=;
	h=To:Subject:From:Message-Id:Date; b=QCOkRXCRpxUuEmhDJC7FKzQ2iMImOJkmIQnt66jqOs0HILc//oc7CkcgHBm9v4yFRsaSeH8+aH8tdQnsiD6Da0PPLNJoOx/OHWBZZlZHx8DNGTQQm6ML7zEnOVbtOFJiYlqx92kH1vf36nRivfaMmYqcPPTag4dTWZ2QQLk9iBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWcWKlnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWcWKlnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50FCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778997633;
	bh=B7aJrehQKmXnD691NE4ZR2ErzCUT6J6F7TtTD5Nx+gY=;
	h=To:Subject:From:Date:From;
	b=lWcWKlnjrBZHyJ5HA3heoPubtVnFPUYh6JaoSbwggwtir9CKi8pGGddqOJLbcbswI
	 X5L2eUjg9952OcEHkjMoIjDOKoz7lCVKayfWQ0NcP+Wc50f1x5qgCIGiMuIk4XkmIm
	 2F2UvoRrjACHkIku1oFCTdBgjd/kEqD/WLKgopL9xlEQOrhZRmUx3kRA+SLxVDezhE
	 81MTFuftBkJGTlW3iamg/srW2ELtryDJmaiHSq7QMh1oUyz/sEsohWYpJ3yzMTTF4Y
	 qptm4yIeJjyWRE7wNJB8qvEZbXkoWp3lXpNXPCq4zgA1d3m7cBtgY3F5X0YIWWGpnr
	 GjbhWP/vr6fTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF375CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899763369.25141.346627242220118328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce6dd5e7931c8463733eed8c1ef0449182954191b1c43dbd1e96997f96dd87c
Date: Sun, 17 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778997633
