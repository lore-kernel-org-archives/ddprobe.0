Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A18197A98
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729595154; cv=none; b=ejKZsoBrU1q9sWO4oG4IrACyXi313gjMb85o38VtgzsTOVBPSd3xu2pIrf5SRoTyCeAujr1tljkaT1RUqA7mt7pypnl15WF22VDXBz80X6KtDQ/kMov0IU/nsVVZhkbxjisjTRVVGcZZkHq/lpNIIaV0MTG9xtfDpVG6djmF2GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729595154; c=relaxed/simple;
	bh=uv79xPO80tRU5u4NZKUbi9TyzLiynBgDD7DMfWrUWWE=;
	h=To:Subject:From:Message-Id:Date; b=ny/9F3wp/tcce5uDFcmyjj4LyIJtnj+xv8Ia1trHUespCcNAKbTTjAw4jWffm5fiTqeiMedNKBCb2hKQxqUTH3OWuzPy6wROnuYS3KeKvrUcGWZnEw36UsAMEMQvxygDbtz4ua1j566ZW5MxWbN3agJ+GocOL9D5zYz+s6BCAcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkTtcl4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkTtcl4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77FCC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729595153;
	bh=uv79xPO80tRU5u4NZKUbi9TyzLiynBgDD7DMfWrUWWE=;
	h=To:Subject:From:Date:From;
	b=jkTtcl4z1RALoTtit6a75BeTqfPy0etXvXxpLJsADXM4ol6dHsaQ/oK7R/aLaE6na
	 9wh7ij5aWBK9Q+xw2e1tbj4bgX58WL3i01XXesXlRicKj9gHlulZHfmM7utAiFxXMG
	 80zkHYTERkH0k75sOpGIjPLr7Zfa9mw9T5dO0A2I9CMiZxbRaAjJAopAypRsbG3NK0
	 Z15KoGXKeqSyclzFF3NtwBBcwFB1GOyeTCMh27jFN3GaRgavm3KJWDP6hxBqADLPYV
	 xL/WWzP6N4rePGqxzr1Kjg8+aJrOqWoaoE36uHky9PCEKHYyF1+5EK/HCWlfZDPHMK
	 F6QbEmQd3hrBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EF0D15D9D
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172959515371.10958.14744595713244415978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda3c28b1dc86885e51afdfd0c0ab48f3f084730518bba15797acaa1fd61794a
Date: Tue, 22 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729595153
