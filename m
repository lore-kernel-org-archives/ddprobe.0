Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AAE207A33
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736505954; cv=none; b=N8pqZoZfOr5PYLzXaeA1I+Gly+uK6HJnO61ELm+Xzw1XDCH13lzvvRcpwBpT84j5zzuz8h3R15aKkeH9jtGHKcWw0D3NbBI91DBPozHknXjTArwK9VGO1GaNjnKrv2rwy9MbKpDp1w4U/UkJYPPbDNR4AfWeV721NPt8EmOPdRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736505954; c=relaxed/simple;
	bh=gsu3tgpBXOilI/bf9MfCPt441E5mWmm8S8+oqS7jdcE=;
	h=To:Subject:From:Message-Id:Date; b=HJgniF0KGG1U/Im79q3BuA7qeoa4/VM3NmEq8p7uyu4byiJRPKJh+0vZjhR45Gh5J4tuL+C2H5uEBAdbTAIRecAz7t/BRDzhzGqZDKVugkzcFe5Y9WTKCvaHb8fFql1MmMxj8blfelzhXLhWovN9E1UPUL3tBxI2RY9uZNeFbvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofk6FXLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofk6FXLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30B4C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736505953;
	bh=gsu3tgpBXOilI/bf9MfCPt441E5mWmm8S8+oqS7jdcE=;
	h=To:Subject:From:Date:From;
	b=ofk6FXLq46qFszoB6W1SOvWCbq7r45HWOqc2ka471E476eQsjfxX01I3mOxPH4Z8Y
	 P+ZX19OC1TbbmDo6MTx9Q5UtVklWDn3JmCy7da+9isTY8O+knVCqg/FsPZJK5NHb9f
	 D6GwTngB8rS03etZg7ZeLoYZWlG+izAXCbPfjl4IJoHwjAU9giRf3kYmUcArd8OVom
	 +8TJ5fnrrvYhYN23r3XQoIZsAlaoMWKhVLoJPoeSDhwrOGG3xpcXqeIDoG68Y3fjaN
	 N8RE044kmv5GGrOrkL2xNL/PlLAwmtzEWnA5ammeUjDJn5D+qqvqZ7LfVsGlWdNb1L
	 jk56P1FyrOvJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96117E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650595359.4254.11222137182757029405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97cdfc90b5324b34b8894a0729c9bfc70ca58d66a547eb2eb2b037824d55b28
Date: Fri, 10 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736505953
