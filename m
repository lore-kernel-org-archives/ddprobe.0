Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4677F2E8E07
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770030234; cv=none; b=usiGDm05zNwL1ILMJQ+8N6qaapcV/663EhoByEw4zEMF8Wnt2Vu2jT3PpmXWLGYZBI2Z4UReHcyMhMS14fBYWxf46XxU2IWhLjg+c2oc2xhPOU+z2d3C6knXO9nlwABeubV68Wk7wXxpvKDyP4XMf7YoJyNhYPHR0MTe6BKtxLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770030234; c=relaxed/simple;
	bh=aGx7a7z+CawPj0dg/1vYcSmy4XzP+kQOZWWYEpKDcZ4=;
	h=To:Subject:From:Message-Id:Date; b=cAsiFY6sNTY6oDny4a7H5ZcWlm0+AaEeGojIGErGI2pfQ0TV55auAxi2qdYblbn/eFx2O1MZbgRrbVN+pOYuDBOx+6kR5qx04XClRfBhiZ2Iuse0lD55iFeLkBcvabbAK/30sBQuHSuvGStQrZKnOttkMLyQPgY0T5/er4pFdxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRVrT6jV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRVrT6jV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3CFC116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770030233;
	bh=aGx7a7z+CawPj0dg/1vYcSmy4XzP+kQOZWWYEpKDcZ4=;
	h=To:Subject:From:Date:From;
	b=CRVrT6jVDq9d8kUbYNIanQml8TzI49lyO/xoAGhpa55juBzbdXCaWvuTMSR9j1v8g
	 u8PnL0J0oW3I9wJ6WYCKxtwzUrU1vZYKuHkGIxWE1B99+MZqTbbDIPYd4JMxz77Fg2
	 E4/H2FmnQuGDmuw1W07NPHIBPBKUf/PBcIDj2/YLy/ANIhDoWpRsxwHMTOl2r5Ib4U
	 JrIfIzwplKdQMkHIQZVSAHjmskXCU0BXG4WVGDN1sOr4/DHb9vCRAs/oTgNoHWWpop
	 O7dn4qZ0lyvhvg0ogDqSAXZmmrLpc1WAJ4jBmCF/UVP1XyfeFq0ww+fMCDRCv98GCw
	 elj+ixkRReD1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A17E7315A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003023369.10499.5194258110304007768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 660788286dc9c683e14418d225211ae1e693bb2c9cde6803cfac721bf6d7e002
Date: Mon, 02 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770030233
