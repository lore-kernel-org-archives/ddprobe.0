Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C47156230
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762615194; cv=none; b=d/GNY0q8BW3KVh+meNOCz5C0MDkliCjo+2w9LOETsLFICKHBFvcndGnY3cWbX+mmBBNQ4BJU+5NcsY4TcmjNBH+JAsCi4GJdJI/hpzTRa2Iqdc8fZqi9WwoaL7BbIzoYyvWp55tdBNa7lQ9gvECKg1XRmIXHJ3fVmm10c0D9ulY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762615194; c=relaxed/simple;
	bh=9Rl9zJ+bvHJg7IhZefwPhdmYQNQtBp1mCTxfMgbnENQ=;
	h=To:Subject:From:Message-Id:Date; b=KW6cbtFCNuuVt+9ZGAb7ceXIzeoTo8V1JcN8KoaoFyQuXva+HUMTIYwJ8l3G9qAxz90r2OZFaM+wkRq7iEfCJpftUM8AFJAKSDlllHIa56Sd7J/dxv9rEiT0PbYw+03AzrET7FB5k7PwVBgkJqa8frz9hoTRtzUxmqLqZkjdqF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exk35bw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exk35bw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E12DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762615193;
	bh=9Rl9zJ+bvHJg7IhZefwPhdmYQNQtBp1mCTxfMgbnENQ=;
	h=To:Subject:From:Date:From;
	b=exk35bw10LFjWYX8w3GT0ShBUfb+ozrQEeWN9eLI+InmYYdPvR2TtSwgU5JxU/buu
	 9bDw+Lsg02UwqmeF09ta37cEcVx3AaF/tvb8Np6MO2bbc2GqQxi31/Q+NzvsKBRgem
	 Ym1wvf6RwMSgGDknlLLhtkWGCILgY445TGroDdrwki+wCCRMZN/849lJS5BWlBwG0Q
	 fCOj7RtsfFVLQAOtaN0gWyquiF3EZoIxsI8QoVRGIOrJgCyMXA8z88ZI8xGRMyKGTS
	 btpdCBkbpSbN/5t/RzPexSQfFFk/IswNEliGJX4k0/lclVKWcXiMyE+LyHvUtiBe1j
	 p5IeJv4gfaE2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FECCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261519357.26788.13905484676678252677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7099bf6148f4c5f2adfc411bdf6e3bf52dd7df4e1cbb4e8c80163a37988c4d9
Date: Sat, 08 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762615193
