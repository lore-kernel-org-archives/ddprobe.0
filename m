Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47825485CEA
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787848234; cv=none; b=GCt/8iWgubD68nRzlrYwUHEqq1m3Wh3FCmdgTJFgHUKKbsk5xxXtQoXCD4iidC8WwCRSYPmNB6aHqyZf37sfkB0hyI4I9n8NfwB0nFPfswRSMXeSZR9l3I9rSxxCzeB5Yek7OjIUUOhKFWfQCtpmAHpFkzE7GeVpzHKnFQYiIyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787848234; c=relaxed/simple;
	bh=jYzwmrYvJF9mbL3IBJL2WEIoCun9x51ZizMSFxUFfzw=;
	h=To:Subject:From:Message-Id:Date; b=VNsU2P+NMs9SKHhz2hDwG8LWue2rgRmLK3vL8Wed7WTff2xwQgXITrCRfwaODR2F73wcH5RST4F8prIvdtWI2knQkfNs43AeJZYKl3nEw6VjIf6F6l9ZOlbOE9BSJM1YFWE7nspo18bKfoPqyE5unAJ4BwUVRRcSecuR4K11+PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoIrjqkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoIrjqkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C582CC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787848233;
	bh=jYzwmrYvJF9mbL3IBJL2WEIoCun9x51ZizMSFxUFfzw=;
	h=To:Subject:From:Date:From;
	b=aoIrjqkd9e+VGkpY11u6+VQnHwwe6hHq1m/0IUeP7T9etqUQxkZeA60YkMaGvCVTh
	 Upur9z+bwwMD91km7Jjtmhhqqk0Ck3EhQDwfbC2TP7rPOaqTAwrut8JAggjhL+yT8h
	 4eE+4fwlG6tlpsBuJDrV5zx/HUScYcSyFartxZn++myAFxgPsS0TCcYPS8+YncR+E9
	 iva2f6OEZHtyHC3UxRl3sJHnl02WHlCK4foERoi+EE37hozEvXTzWvJSN24hKGkmLz
	 SPNcEN60DQU2PcYs4hjGcvnImO73+5kVTVI1WLasj51erzQ594gURpO1oDRgtctbx6
	 4H/FVk3Fb1K1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF7BC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784823368.22590.5259423709059417246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8757aa7bd69c6f00edbdb3ded8649a7abc3b6ef83572af03179f695872c73db7
Date: Thu, 27 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787848233
