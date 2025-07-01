Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE47274FF2
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751379594; cv=none; b=KtU2RWIOasuiyQuK83JFBfgBzoMkTj5v/5QQ86F2y1VveN8jyF6rRN6N1OW5MHIu0EMeU15QdvvJ7tLk9RDpT/d8uyxZnuZ4w6iFwz0DqcUQwzfM1yEFcZBeAA85t7MKB9VfDWg/rf945BaHQpzbpljvFgs2cVxib8XJidnw9pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751379594; c=relaxed/simple;
	bh=9deS63NiKnZiPiDkSbDRHylsVwWsNfSddAbJ2WV47Gw=;
	h=To:Subject:From:Message-Id:Date; b=jg66Hr4P1wpdTihQE7/ItBzeDJ7MbWRXiLWdcwyOqQo2/sLG1bfOC0w3A/yvIMm8+PShPGlZGs8EIusGlDWqth1IFTmOcyQNLlWNmJv4mWDfx2IQAeMxgA9WqAS3HCy1WpQPxKYmsJ/zCZevD9pl+WYiXODP1fTHwebUrnZ6TFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzOUGEFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzOUGEFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F68C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751379593;
	bh=9deS63NiKnZiPiDkSbDRHylsVwWsNfSddAbJ2WV47Gw=;
	h=To:Subject:From:Date:From;
	b=EzOUGEFBzNo62A7dlIN4tgt3KToiTssl7H1GEXuvgD4CeL1SwDACq6dqV4UMGYfz6
	 av5o/EA9fLjZA60ZgkZSHIuXy7u3x923Ui24AB8mkVxomu5cL2/qcQTTWZ5EfiN5Um
	 VyUX9NMTkcfAYYgX88Abhx4e/kKS8xsH5HhYQKdknB8icePW+KtnoacqOT9nmvXCmv
	 QrA+zhWvQ4ZVjF4zj0NZF/2lGGvpPMK+Hx56yGMqk0AGQnEA9n3M2J8x8350JUFT+1
	 MZIPscsJyW1g8iqIzTl3Rg5BWM4XxmwQtDK0nDHnr6qCOLYucmHP3wB+GQ3HRcr5tQ
	 5hcVPEPfkk15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC42C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175137959357.5109.4488341802542826128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe493cf25ff1565326c23c6722951fb3fbf5ebe2de2362cc63f792f9ff993a9
Date: Tue, 01 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751379593
