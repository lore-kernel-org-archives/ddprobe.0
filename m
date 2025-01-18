Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D895156220
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737241554; cv=none; b=mN2kdgqD2xpQjEwaytJHjj2rZDSL2UNp/udnMXc3Qjz6FAK6/MYSWAUwRNqUJf9fmZrM6aSpRl9YCXaGazyP67pKzodQXWS+Cigzgd9nP+vRaa+ZpO8NBMFe11VxzhiZBzzc0NI0L1FFDqLSnJWzlnbxQoe1iofK7WSI21Qy52g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737241554; c=relaxed/simple;
	bh=76qQDPpCKhu6ZsbDHER3Z5Oeht2xDVFsvkki0DBrLkc=;
	h=To:Subject:From:Message-Id:Date; b=ARHgqZahQn3el7Dpz3Gnrtr5dSHMsoMIDVebF7ymK9YhogzkDay6X0PapLI3GLrrZhumctnLGYXwhWn0QikDKbJe6AeDQxOIwNpHh/Zd6hi/s0RxEs5egVHN+pD64NTn08H+PbSQkTe9YoPsD5Uo9dvEYS0DlzVPs4EL7P/Wijk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD7mHl+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD7mHl+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92E7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737241553;
	bh=76qQDPpCKhu6ZsbDHER3Z5Oeht2xDVFsvkki0DBrLkc=;
	h=To:Subject:From:Date:From;
	b=oD7mHl+TIjoSRwoRXBeepkii66bhtNU44zdSGTMl6LHyXYpdLvD1ReV1l2ydHzkeF
	 TeU5Z101MmOMWgi5olSnGIEDqjXg9X8Awc5i2TJe6PaFrj+rfii71CLPbkosz3Ork6
	 5OclsvL3C8yviqCZ1r7cFf1fOst9zra2xd+opRvKX069D1M9lBPQLv9/uqTkdRbRXh
	 q02Enya6zOl4rPZVnQa5wdJg6sLUO/d3klQjUghVGFuC4hXJnsxqgsvyW1kZHO5qEU
	 78M9rFFUvaO/zYIVGHcqG437VSVxu2NEboyIfq52hyoS2YRzDWBBNaE28tMSlVF9XK
	 HP8wxZd7xRCFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92995C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724155358.30255.8403665070505355927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e3fcfd87ae0f9593aca2c5a588ef578e5e7d2d065e3cc0ca7c169a8772392c
Date: Sat, 18 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737241553
