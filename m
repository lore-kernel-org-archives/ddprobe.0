Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43237325704
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787523634; cv=none; b=q2ec/ZRwCLQrwprC2M9pWhqsOT7dicpIHdeXeD72qSCe7WsOie2Twuj2Le802VpKAfD/UdzyCKhJ1PfhBr4t10rRUsh2l7SAgVJPHU7fSZ/5g4HOe7JVFAU0pm6kKol8BmI4OwZ/tgwUhfxyoTb5HK27iSpYFlfqpjLfE80FGIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787523634; c=relaxed/simple;
	bh=yySEUw4TtflKKjL5xfJ2aFlFhisWpFmQ3O62sIpQnmk=;
	h=To:Subject:From:Message-Id:Date; b=Zp4xjmYD9A8jwG/c9GKNFjjp4ghwRnB3YDCUFVnm5KzC0mc9TOXfDrhp0XpsimHhadDcHb+4+UbQE8DRe5MGuGasRkAKbduQxFXLUYof4yNji2J3xSmhKLOPgsu4xj2Rb97mM44EOXX/fYCcZXE8KpQSXDUxPJC685rfx3Fwjnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cS8Hbqsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cS8Hbqsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D470FC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787523633;
	bh=yySEUw4TtflKKjL5xfJ2aFlFhisWpFmQ3O62sIpQnmk=;
	h=To:Subject:From:Date:From;
	b=cS8Hbqsh6S9sMkTQ22EZOcOwtomkkZc4+KhuSFIArtiAb5GElz1e4k+uarim1ADTI
	 iGCrrHMQSEHjTnjklwGR+bjxp8JC95Uie6YF/6CShhgI7iMcRG4cvoh5wRyzM8FA/G
	 rBHeHwpMO6YPfPMq5sMaZZiabVTWjMjIjf3mA7KP0QCsKy+aTcNVOX02EHYWdvdmGo
	 xZ/F9qObjzBWyy0aunVnqk0pV+XT+gNkkOBPnIpz2bCp7W+xVAOFSJZd6mWkdjAsGd
	 oRuX8InnGbAkxP19zlgDrYcvvO0Lf4eoS2kiChtjp2T/AHHinjfAgYk1X/Blx/V5G3
	 FcZdGvV8jPmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC3CC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752363368.27109.11512868677896347462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e16e54f5b3091c6c6442125175ab09f02282b4ec5498d425c165efc1f2e21d
Date: Sun, 23 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787523633
