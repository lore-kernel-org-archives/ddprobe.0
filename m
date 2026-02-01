Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE018632B
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769966634; cv=none; b=btW5LWS8VOge6t2e3qMH6yTRke4AEEi3ZbcJbkmF7xeDuqjEASEfzpN8bErW34YlzGP1RtsEZjsOz8oeaaD2zsmiwluH3T1jk+JZ8MH8wVHvTsAo/g3BWJSK1LQrRDnGJDsQl8gEdMoyRsoEGTbgdvGzvfxn4qPlPAv6aseGBF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769966634; c=relaxed/simple;
	bh=eGShMH0ovxV/16jvEJO2V0AHlqKY3ODj/cunIS/TPkY=;
	h=To:Subject:From:Message-Id:Date; b=TrmG/IXSBZAZb3xkqdTy6xdaMwFhEkc37God2W1NOU/Asdbxpe1kkxG/PlJxnP0nvQmmAAFrWBu6zDh4z0lbUQaV032C94G/I/ZpfjxAwAdFl0RtGihKrrGIDuNsWzlUDTwhmMByv7sKO0WJvoETxLsNO81sl9Rw1uG2ilB9zG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHYEJjbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHYEJjbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3117C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769966633;
	bh=eGShMH0ovxV/16jvEJO2V0AHlqKY3ODj/cunIS/TPkY=;
	h=To:Subject:From:Date:From;
	b=RHYEJjbIoRJ2UjkGvbUSiJDaJbtjsnosXx0mMwyxHGMx9qT2AqgRs7foHucQz42po
	 0GycP6MgqT4bdmTQLxQvVwH2GnueaWz8z8N1N+3taNNyFGQCSME6kHXX+xZEiiezWH
	 ZkTjz93Vpu9WJfcjh7/NL2nZelp4olS4n+O84Q5OXzVpXhdHGFd467FcSQ2H6B4K/S
	 NewZ4w5wwmf7UTQJ4QSyvP9dGoFyYuFw2fF3fKX3rPHQTHmwOQpf3boWkliTRyV/f9
	 fReo8VdpjkxWiFSZDmNXXc5+9IlH6RHJGAVFT4TnocT0tH70rrosdjnbO72nC6L37Q
	 TINbJsLiMI10w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C36E6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996663359.24848.9605126683218188572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97d96a0b557dcb1aa4e30632d81cddfee5cefd104e9ca4133c6c3a205c589a8
Date: Sun, 01 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769966633
