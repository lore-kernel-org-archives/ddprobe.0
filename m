Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BA7288C22
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762771794; cv=none; b=AvCPYdbvYrOoCGssEYQ/fPqYBYY7TGhhpzSBnCItjZPqsjIiwTHJJqyWqgwX52DLgy5y4iQfr6ZwmDVMNhO1xFshF1Sh2Xk10nMdpMkDHno+z/x2lBasRhXMByqzTpO2s40BYS2XnobXBAgAK/087fjjaK7YUbOXBCCPvix3KLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762771794; c=relaxed/simple;
	bh=ot1iQuOxreYjWDIUj9bAs4vhhehmRiHTYK/Wm3svBGA=;
	h=To:Subject:From:Message-Id:Date; b=LDRCxUmoLowaNsrJhq/+mCmmzVxKgnzsDuhfer3A98kJduM/k7L6N5bkuHMafEaDgyVNz6GIN31DZJ2y4km0s7m5/0UvcezBGGdBvvnPjqBs0RzVAAjShiuUVLpIEhQZOLJi1hU8I1bzgY5lpJPcgyx/gXb223VvgU9ll5LFW7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cwb2GdxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cwb2GdxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D065AC116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762771793;
	bh=ot1iQuOxreYjWDIUj9bAs4vhhehmRiHTYK/Wm3svBGA=;
	h=To:Subject:From:Date:From;
	b=Cwb2GdxPVadlOjtkQ2Ah9lTVO+aNQlDKrw4z/LbcNIo90c/Chl8EUx+sjd6vBH5d6
	 53ZtYw3NucwfWP7V8L3xCPO0SIVicSUHldUdwgU6f6UqUDqaeYHLl0VYFB16z8g2ei
	 EEBjxcspusDMfSiiMnFEZaA8xcvA47Bg+gCAH1wcbs5j7mCekoRltTJuDExaNQ3gom
	 WsfMDh/tQB8+AIZJk28PJ2wBQzM5sJC2NIRKaniCtGPRpitLPMBelZkPb+4uExzc+O
	 EzvNa+mjyfXqwnqiWAG80plS66IUnII1dpRGnDeOhKmkBJJ+AVCSvZqBvOwqZElFoC
	 xFl3YrDSkxuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0896CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277179363.24868.4175070325281001684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf44201f8dfa8a6d4b92d83593d40eedf07ba09ea527d80314f352143173900
Date: Mon, 10 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762771793
