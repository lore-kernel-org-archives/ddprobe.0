Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8474819D074
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791357634; cv=none; b=YInCzhAgwU6YZbkNHaSh3yl1X3lI2M7FlNTxqfQDx1JYdf13ngDIaIGkjihop9S5C2urkigEZ0DH/NFSEmMOMVbSKXJISqNzjBAkSINL+Knb3w+aIa6kIf3X7HpvKeFY2kcFVvvghIvnVo1Eaukr5Fm7XChUdAr7Ut4sqtNwevg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791357634; c=relaxed/simple;
	bh=/b/JX+zJtWIwb6VPvyD1IObuCvujeONaZE5GIKaOxhw=;
	h=To:Subject:From:Message-Id:Date; b=j6WAeho7opW71D6iCiX3T9ViP5CJENiXG/KI7vB2vm5AQ3tmI+ywJ963eddkBUQflxG2KL/wKZxEGqVRkqrU7cvueL3V1fK21w1H2wH8pD4xK5JgLZ+MxOP3ZZ3ELPFEjAkmTwifnEomh+0zBPsNGdCZaY2L5bm5Zq4be3nYg0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IO263fkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IO263fkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0440C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791357633;
	bh=/b/JX+zJtWIwb6VPvyD1IObuCvujeONaZE5GIKaOxhw=;
	h=To:Subject:From:Date:From;
	b=IO263fkhEilGocO9OE2+8ddspdNCXahOsHpUw3RNhaEDCs0tyXhFZ0a1VLJMcQUst
	 rAPRz+Rlr+aMwzNYDqi4FfIVB5pRd+2I7PixFDDShHxBzLNvT2+Vc/MF8hU4NIIJcS
	 H+jLUkQPSg6xUGFe2o4LnNduk29V0/ZIvmOyvEPuL6HomPtsFuFoRy86ZnSOBjywGu
	 YKYhEEOMmxBJX0frEVqDHVgT4YKnem2pX9oTwBHwuEwBEtC2gbrCqoTLEQ0EcZ/BiS
	 b4C0g+nZRtrYE1cCFWjebug1jRpPzvPSRrFDogWqZep208fue7pRqSEKzXDXF2jAYO
	 zWsTv+/oUXXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC491CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135763368.10655.4227984714190937561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bb0952f3218fae00a2992667873246bf0e7c97247a21143dea73117e1b8ee4
Date: Wed, 07 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791357633
