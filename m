Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ADD328FC
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721004143; cv=none; b=efeEEYmsN1eqnfK5CtPs+17p2cJ3xDUkveOtqFfDFwZaMMarp1ruNj+psa7e2dJNER6toDGCzt/KpYlqaD/9bpzGfPGaGl11EzSlm+Uz4FC/Ek5XQm7xGNSDyR5hT6PzEgJqf6mQNHxgTiWI496HQfvgkxiJ3K2LgJtFvu1SEPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721004143; c=relaxed/simple;
	bh=L71qjzLJ1f4Bw/Vq5SZPfZyaWe5MUY7ntsfukFOGZVI=;
	h=To:Subject:From:Message-Id:Date; b=Yrii+RjiRyoSMb+4il91lCWF8e/5cAMIEa7vtxCheH1IfAlFJTnSMqxDl2H/TlwPLcQQfbybSdEpx0mecrtV/MhbSa/BRSNKh3oS+0pNegHmg04uWsLbvjl9VSWaGRGqCEStSB2nVhRLklc6uffkVe+fBfKC/WYBbgad0ZqZj2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn1w/KHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn1w/KHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0967C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721004143;
	bh=L71qjzLJ1f4Bw/Vq5SZPfZyaWe5MUY7ntsfukFOGZVI=;
	h=To:Subject:From:Date:From;
	b=Cn1w/KHSE95SpN31FcW6wYynnf2ZQczKLTJru47x74DriO2RHbUg2G9/v/g7uNh0j
	 JjkaKiavFPXgytwF6aWazg9TkJxNZTQeDZWUI+KcnY2PbXJZiMSFrjtOuSfKKjOSc3
	 PcTMioNfPbnJueWPiKlKzoTNEB+CVVtrAsploqdyW99zHyRb3UbwN1EBQQp582UEIH
	 X+TEMPBEIZqUTFCsS5mn5PHkxYbdHRLJe/rTqM5NEAtFJTy/05q8rl5RKimI8D3FaT
	 iy8N70/zmhFcbg+5znYetxEL+1/Y7QE1TzdpUfHpY8qDAO3d0O2b1uaW10vg4WJ8P9
	 jq9gumQ66tEPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D26A1C3DA42
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100414282.13800.622844759207337279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a7db56dfee6455f1f36a4a5175c903f941d796e4ef237ffe9bb4a790d28b7c
Date: Mon, 15 Jul 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721004142
