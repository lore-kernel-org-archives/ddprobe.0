Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03044238D52
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774308294; cv=none; b=pkBaxfS76w/+ZrM4ty5YKC+uxGSBqr7U1KXc0Gb5h9mvel2sEjKg6rTJIUnmlwPZJpIB7kR0bVw7mZHXkvDYqnU8brUxWeJ611HVXTgTPlh09VUVmLTH9BK6wMTDJdvTJr4+YQapB76R3o11MyRezdKKpWSKGO2IbWX+an03vVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774308294; c=relaxed/simple;
	bh=ROD/qAqvjl8zLbfjmOF+bIlSioZkcVe6swFkmiW2O3g=;
	h=To:Subject:From:Message-Id:Date; b=H4/9aTHa+yhJgzSt+ZmGOPggfTzUcDl4eYmW1gjaeWyOewXi0LJatMeyngCv0n2au9mD0WjLy+d1uzJVD9Xv4YWtcv1DPIwdP5D1esaGvursb3esEinR59Uj3fSq+J837poDQb+OYJOjhKyHT5Nr2WW6435a0TTLLbp1XqTNh3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqxTlX5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqxTlX5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A102EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774308293;
	bh=ROD/qAqvjl8zLbfjmOF+bIlSioZkcVe6swFkmiW2O3g=;
	h=To:Subject:From:Date:From;
	b=cqxTlX5Wnt+EzmUKI+73KQ14Jx6oyOpcjhLzaS8VAISibFiloCpCbBN3T1hMP1IoC
	 PRzMCoK04Zykl+COsrGiYmoMIzaJBA9dtD+OkBAKRYfRSQxxdmAu1QgrpyeXW7l/6Q
	 QITTjHYIWtcmofTOghfDARFlPL3xCX5D96PEhP5w9pnFdBAaMh1W9DStfJePe9thlF
	 Ya7EZ5TeR4qBkQ+Eukxc7BnvmXqW9T/qk8S0NgdTnhdA6dQETPwvJvs8mmCx+IEX2I
	 XMdccyyVJIROz9/VoFRW2SMnRA3A2nems5B4GZAL079IsAVNMJ+SoWfW7Oue9x7KYg
	 yNFNPwOik7FjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91966F483DB
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430829358.31927.1756869759283041972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e11825f1ef5a5e3ba471355ee222d2202fd9ff925a8388017d64cc82ae61a48
Date: Mon, 23 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774308293
