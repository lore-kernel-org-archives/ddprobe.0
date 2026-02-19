Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109A7274650
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771469094; cv=none; b=CrSnP2CKGnzjWVwTIl+rqMtkFJ2gK8WqAaJuSaS8cARO4zQ1WJ8vFMLBREyyGXZVMJ/AxbudtnG1/Dwq2q/NXBsUqRRu6TCczXpuu+4U4qWUCjgVjECJQRK9MqVcCsBrhX7sTQYEJdfHgywuEgVJSOLwfTMDsS91zzMnAcpP08s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771469094; c=relaxed/simple;
	bh=9tq95SNFjuCP/3cI7O63ZBmDbCNggyD80J11WJg9X2Q=;
	h=To:Subject:From:Message-Id:Date; b=MT2c+peZ96gok+hgjnIGNgDVE5wUQkqBt/rCsUpLzbkCoBVtIXFkmrnyibv6Wo3K6Q1fh6zXVNDKnomoc3fu1ldT2GK1gGx4EDcv9Tf9F/sOaNB8rcioxtTYEN1bL5vY41Rn/60xAUbmEjYXbv7HXpC1DiAgC4IoxRTbFltasgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAIlUtkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAIlUtkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBB4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771469093;
	bh=9tq95SNFjuCP/3cI7O63ZBmDbCNggyD80J11WJg9X2Q=;
	h=To:Subject:From:Date:From;
	b=GAIlUtkUcvzAPaXsqj1cHZNiQFu5FgyQjxYsX6pfS5DZcqVdH737hzoojugdoKOJ+
	 6DKjR3u+seXTuR6ezq7dVi4WZ1dwvEy+VIgqIO2J16+dpeBSClsz6uPZzIibOikCFv
	 QXb0BAQPUjOabwMqXx2Nvc32pHXaH8YtzapFicUso+a69UyFDIb1FnvIH7eV5WRV9+
	 zMiiXHUjH6f7ZdlW1QWK6noToIkFANTqL0lowa7KNrXENCxopNUYoF2rJfhLjRS3OB
	 acV8uSGg85rFPDcK1sMXpmt5IwSG7b1Bp0S7PJtzfwAflA4U6mx3/up4egO8sUwDen
	 PZn9W2+i0zOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95205E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146909360.27141.12232474333696777121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d323145b3d5b4eb755af1e83fc7d70f71bd9c94519f4f1f39721812e26ed92
Date: Thu, 19 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771469093
