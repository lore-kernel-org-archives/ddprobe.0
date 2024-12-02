Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D3328399
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733118954; cv=none; b=hu+lELXoKkVFVyAAkr3AomxM7sG9YF+9jtV+ZL88axqP9om+7kolbDYoyMuC0mRaHHQoJ/ob8FDxINgWffvUP7AFLnv1E2FwlcmQA55FttSq9xUlauDVMpCLxGjRgWpmuwWHm0AJJo1Gl2J6uo/+jmvoxfwlUTWK6spfyLtcZJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733118954; c=relaxed/simple;
	bh=t5qF8gr/RlY1cPb3Jd0LEgVoeNtDhJ0j92Um608heD4=;
	h=To:Subject:From:Message-Id:Date; b=chvUHtWQRByV+G2gpBx6b+WCrxm4UmucKEDqLy4UflhbBNYJp7gNhP8thTIQev5r87OHed8I0O0TFWa/H0sar68OvF04q0AHFFxP0ruenjFwWVe3Yv1c+pCBZGfh9GA5/h2kIFQhvMfjCvnNp9BGH1jFjSkXceLqNd4bNohLnXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dk8pOeKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dk8pOeKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA04DC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733118953;
	bh=t5qF8gr/RlY1cPb3Jd0LEgVoeNtDhJ0j92Um608heD4=;
	h=To:Subject:From:Date:From;
	b=Dk8pOeKAlRRNFjkAM+OsDC3tZEQ78JdGEHBR8AB3tbX9czesuDKWf/aPEs7M30Jtg
	 /FYi11SxUEqa0jEkOIHBeE/FW2pWiDUEtKB5nCChOadob+OrWyLLDPL2jduiOK80s2
	 gC/cqmJvjUgKPhUUuhkUsnbmYHpzEj/Kyiysn9tVAKsgHB9mWNGlPW/vkkmRnpZdh8
	 zTGtGAYEFEPl4/gII9ApCbcXAZgwk7x5712ol18sfvCxXjLZ83/K/kCCVkD/wgwALt
	 dQu5VlwyHehtvbUJCBf3+n0bUmqscDiOYOYoG6zehVMTSI9xQS3+4LCcl1yrkIKcsx
	 6LasxuCLGCkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96141D4979F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311895360.30853.10902816104275804523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed837c6f5fb3fe5a34c1dc936ba07c0be7307ab187c3eb8537bb75c55578a95
Date: Mon, 02 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733118953
