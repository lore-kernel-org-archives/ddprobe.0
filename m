Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C822A4F1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760078394; cv=none; b=GRa3zgIUaO3J+dFH7BfWr58zoxmyC0+HzfXbHOVUsEmW0vCdGQZfYiuBPLBVk2qqDgmlc0ZoMxMx5+LeCrRhPeusvZBD7h0yoR7yhqPNSgtG2HewHx8JsoIkT0ZfxJ/OtK3L18PmmL/oGhzs+He190tzzU1t3gRzg28HHolBf3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760078394; c=relaxed/simple;
	bh=A0vkr3cYY/rF0dTwI6qSx4VqnssX+425bGz+ml1Eqyc=;
	h=To:Subject:From:Message-Id:Date; b=l110tMsja6f6Lli5owXo6iSr5Zo/wIlRElBI0KLp5Felbw1Q0IVg3fhi4/lEGZfynML7KkSq/yTm8HeQeyo4S1W1ow7zt1QCA3BtvQv+yOUbIVhuo8arclpIusbZojBa4jRM5kRHVZKOP+ix8YJuSMQJ9qGJnNsZUgCzbKxUVlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q23d24Bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q23d24Bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCE3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760078393;
	bh=A0vkr3cYY/rF0dTwI6qSx4VqnssX+425bGz+ml1Eqyc=;
	h=To:Subject:From:Date:From;
	b=q23d24BtHNqc1Vwv453Imthkce1hpQh1D7QU/WeW1ChqMpZtYf7JdAnWx6eLZDJAl
	 3MhoKqw2LLkQlQwoZxIIFapHaWj0OQRaTNH+4FTY/vLnfLTH9wVsE6dZC0PjT6dfmy
	 jj/3I6Zr4ztw0N4jrJtZmAN3DZ7nPmBmLfgvBk1L3cXuiXniKWKmryHpEYqRz3JuvL
	 DDFnAgGQ928eVdm5//2khhrXnHvCTtGpN7Ad2S2sHTpmSmVF8h6t0Zlv8J/+3QNxOT
	 ZoQ0L2FRzHDZDNq6w7xbYPMrfkCPJYzRBoh8my36XfCt5CPVkY2KLDvdMhYyilP/O9
	 gMw4xkcj+soDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91043CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007839358.27678.10576511696071204622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745f58a87525af62710eb9b69e9b0b2959e53b0dc0c08730ea86a78088f541aa
Date: Fri, 10 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760078393
