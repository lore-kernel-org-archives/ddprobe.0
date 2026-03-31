Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FA81A9F91
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774935294; cv=none; b=M5gKEq6P/ZsUAUoIPKJevXKAqZTFvbrLNxWs1T4hwP9lTNOkgYjhbgTMUFWRpX5zp9lrMkonU8H3UDL30eiYBTp2mqv4KWwNIoL3z9eT6scDzokGBFX6soldASl2lG3VwbdGtDpe/ac8qdF3TI7qmPq6Nf/WZyV1fEJ4yni2FqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774935294; c=relaxed/simple;
	bh=tQNFsgfdMmLrvhmN6SlsdSXZpdWWlgMNfw0T7iR6w0U=;
	h=To:Subject:From:Message-Id:Date; b=axM565sRMRxWRE50DHpCxtzmDUaxbPmj/58G16CULT+vCrmgzFUjJHuyPaTeCKfABHITC5x7SdG/gxSIJaw25zI8glpYDQSYVkXUsniOBcf/OIEvbSnXGQMEmehQbr4EZPCQFBO03sHBFR5pARIYo6d2OFFymp+neq+SHcdwmn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJfYT/aE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJfYT/aE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0601C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774935293;
	bh=tQNFsgfdMmLrvhmN6SlsdSXZpdWWlgMNfw0T7iR6w0U=;
	h=To:Subject:From:Date:From;
	b=rJfYT/aE+OuyNjkMa19ep83W1PCY1P1e/rUwpyBEJlz9Uq1buQq/I9DlZsCyRYF8w
	 zx3mA5H8ru1yOClOp/oHeaVEKjee9ZfJIekcx8dpFWAU09V2t6IgQ0rI3Oe8JHyug4
	 QvBiPWfPmuR+icKcbYilf7thl2atgfSt+lWEbwFXCeGgZwm0jJ0yDRWeJ9dXQ0Oo+w
	 pBUQRECswbgxF8oEfEzgopLcG2n7Y2mW2l0aXFhOLEDbzLNFkLbnxrZq3oGiZKqZkQ
	 NPS/uuSgRlenNxi7hnLZrYyRMsXPLPaFyp7RfUZGvUSJea7a5MLsutuNQMvzEcQE9P
	 MKopQJcmDnD0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A0FF60C6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493529358.8251.10837395204587942517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63d3abb2e2a26c5487fad150e026d94af8e012279dce72efb92383425c7751e
Date: Tue, 31 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774935293
