Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3731353B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775469334; cv=none; b=ECmuZzsMQpYoNZSe6pkan2oouGSobyb7W3p2rE62KNOY7SbBWwAFwoPe9oQrqoBsSpq+WFhIKfyKFfVbr2JIDpE8cAUdyJAK8bpFADUAtCtohJ5sbDZYvWROTeTtmXiOWacZaJXeJf4vuEtpnGiuJIBJ90WC8li59IlcWexUxz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775469334; c=relaxed/simple;
	bh=hi/FYsPHB+gRZRaMyHTpGdu6Pl3AuPGxT7XQY/G4R1U=;
	h=To:Subject:From:Message-Id:Date; b=iPY1HLop8NAVssYl2zMQkhRLn9ekIL5QuzIJLkzq4tpBGTtmeWwLMpXWBDKDzi2Cj+wthhpDNFLRVpcAMbEhTAXdW7apwM+JrKEKA7nLwfINZ4OIauESo99H8d92CzVHWnDXTDPF0r3PT8+7BDt7VoHMZpkWUvwcC1Mo4Qw/P9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxGlSm1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxGlSm1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4D9C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775469333;
	bh=hi/FYsPHB+gRZRaMyHTpGdu6Pl3AuPGxT7XQY/G4R1U=;
	h=To:Subject:From:Date:From;
	b=HxGlSm1prD1GdYl7o4BcedfbhLIN5F9TB9tLhiUjwUTVckA5TkA8RIeI0wwk+fPau
	 vCKwhcdo7a9ThGsziAzG0fV2NmZ7U44QHftakpT6eb1Fkuv4tjCHBxf0zyL7tIm7MH
	 +l7M3g/c1HEoULcY0d08TlXMKkomcwOLM3iLmBFa11QyGK7afGXJeaFCNoydi1OB0d
	 gk0bM15zf5flX2qla6GWS/xCm71SeGQOg0o0hozaS5by2mJ5EmxPQBHpZcjOTcV85z
	 2CJe9fgTCSUpNDayUniCYt5kOnE2kN9ywOHm8zrzSwcOaQrDxqqa+CGmT9D4L6w78B
	 gCGSfWDF0qPoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D15EF4EC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546933368.8507.18041755160779423756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97116a01d3b33bc07e9da31993bc3844bf78460986097fcfc3b7a0d661f295f7
Date: Mon, 06 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775469333
