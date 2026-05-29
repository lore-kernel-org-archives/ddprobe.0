Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 986883FE37D
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780086154; cv=none; b=Nn6WDiJ/RBrBH283yWU27VCVbxMOuWLTxEoJ9ZSiaTCYUjblyORVfTrqMKDa8rFdr7m1CT45Rexw+pGDLGjs8MKAzRs9TLVnkWrScC7pyWEnrsQg7+Lnzngv3Vbf7Frzt+KChDIrz2pbSCx9vsKyKjapHV6IUeWUF+Wi9r4c1Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780086154; c=relaxed/simple;
	bh=wjLC6O+SwiJ/aCY7FkD84/5zWAMru5G73lCZX5O5Kzc=;
	h=To:Subject:From:Message-Id:Date; b=bmVOiwVqJytOyTAHLOBTaMP5p7XfAbVYOX2kXj5gUtZv1cBM2XiTiuiimlSu93iNh0hwEhMcPYSyjAkUfELZbu2y6pCxiwECZuBR0iTKTWwIBZPN+AKc3GsFGFWyhgl4aqT1E4+obXa1fvtzR3XbJHkO7qn+ClX4ZhN8eZuzYAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2rRYvM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2rRYvM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF014C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780086153;
	bh=wjLC6O+SwiJ/aCY7FkD84/5zWAMru5G73lCZX5O5Kzc=;
	h=To:Subject:From:Date:From;
	b=U2rRYvM1hQKgfjKfW5ucnNI4j6d9QP9xvwX2mapDJPd9qzfG78aqVHE7Qx0V/9GjI
	 IijKvobY/4PRpHdACPKGg88/tl2ZXaG+wtCO8yqqIhhZXkJgBDEr7LTWe2igS5G0+0
	 Cu0LEEPydptcDBKWrOChMxj03WQE7bqRevNoV3132YJrHw9Jp/BK/kVl6N0D+txOc4
	 T/ztp6seudLYWl8GCWkF5iH3ZDpKL/KLReY+1IX3j0r/a3agrqnP3vga71IdQRYhS+
	 +WYJ2oOPjP8emDsJhsZy8umF4LATwAd1nmL4agMWeYGGOJLrODZPVMyxp6a8wxTGTZ
	 G5VwiFN3vX1jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4035CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008615369.2678.11422911774431246501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81d4b28938f87ca1961f317e775d69d884990f6e41e98391424f60072b11dc8
Date: Fri, 29 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780086153
