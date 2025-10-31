Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462BA2F6581
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761929994; cv=none; b=YBHW17LX8zQDwzo/yqW1Ky1M4aSai/9jEgkC4RF8yVZ4fbdZM2SzPEQErGaHglWUMKaf/986Aru1uXJ+m7wSTtlRlzLbKYLiCeiOCbKdY7hSW8Jy7fDkKtjVw0++h+ekBfR+46+VJV7/xb4XyvQVd4ZuK6aYgfDAee0+8HjK5zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761929994; c=relaxed/simple;
	bh=noTTCjel+nwShZbarz6YJtBI62985rRbzBBxyZWOXWQ=;
	h=To:Subject:From:Message-Id:Date; b=saiQWKcquoNF8430EOskI7+ncKk2oCUdkUEXDSVfJlRNyEdY+PcyrDTC60Ll2jNBpb6GLElC5DnWhXUGTqSJjkKFSQuBB+L9ZaX4WmuiPvrGx68XSOYAs2907keDxLToKs2mb5KY5OzrY7Fmwo/ylhiv8fD0QF/C9pJHV4dmdWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCbh+oaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCbh+oaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66B3C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761929993;
	bh=noTTCjel+nwShZbarz6YJtBI62985rRbzBBxyZWOXWQ=;
	h=To:Subject:From:Date:From;
	b=qCbh+oaG2+VanRyitdjgCLGB2tSiNPYBiKPPkS4kVPyDjq855wdpEFHZFqULLJUCB
	 VT6JFcJjiswpc6aFWSmKPvdwP/AX+64QoGWb8Q2xGAr868K5Vdkp007/DaPuuux8VL
	 dpGMqYxMSh1SPjn64IoHA4fnMEwpDQg39BGJx3lcR+1K1A21y0NidzaKR+ook1MtPz
	 6r20tM8CTYVm+7aoJlfZYWCT/y2pNf1qzd75xlT8naQlSNYFzdUdgi/AO17AfAm3xy
	 siaT3GIdI6q14925rKWBjUtwdZnadQAyZFUCZk3I9oDFlYZQOjXYrHfPt/McKUZ3nN
	 k//Ef3VVbkOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90873CCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192999358.20560.7064652961628574997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6111ab2c1b4bec5809d8991bd977b9f4c9c140019fcf34bfab5434180ec474e0
Date: Fri, 31 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761929993
