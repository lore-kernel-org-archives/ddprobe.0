Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D88C2FAC0C
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763479914; cv=none; b=LfE1RqRVKb+Oka3wsEBik4kxaULViyEclavBbSP08PXZQNu1whu683HmDQyOPdImgVdPtpYbuAqagHLmKC6SbNubsHX4y6iPY2mvF0oG9sDAidxbQP2Hkc1x7w9VI3K6lPmWofxTbpiCjidGfoiCrI4bGn4FO9wHBT1TzqcI5EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763479914; c=relaxed/simple;
	bh=/59G5bNulVgeXPWe/sjOl1DkBpSEADXfwCV5XYYJmSI=;
	h=To:Subject:From:Message-Id:Date; b=MMnwUi63QLekq5f29j17UwNFnaT0N5SHK4Y5jRb28FPNS+q2sHYXkudCVN0IuemnhmYwzqp84SOvx+lfMX01bAZEUT0Zq4aF8RJfqiOPijbAIq5rzwLIiriNivRX+Fd0pxDHboOMb8zw3WDJGASl/3Hfg3tejKujil7M6R+mW7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFNT7uoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFNT7uoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C23EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763479913;
	bh=/59G5bNulVgeXPWe/sjOl1DkBpSEADXfwCV5XYYJmSI=;
	h=To:Subject:From:Date:From;
	b=bFNT7uoEIaMyFRxwjD+JlKu5Qoup+RTnPSRoLFgCETEJqrnQOGD+z2HhSW5yu/DYn
	 qIY6Qim/3N5SjHfO3ubw3KeirWHZhDI0e6kB1MhWp6+6YtfmEsazlwgnHnMSfE/TFJ
	 jPh2nR1RThccp1+9EfyEJZBVogTOwklBS2MhHyTCvC+fhFoWkMsYxjOS1A3cM2yTAi
	 kE72rMo8Qnrv25ZMfTDao1pmFBiMKdr36lfUDDHS19WdGRF4CK3VjuOwse7O+FncDv
	 QynzaIQtDayXJH/sEy2oL8GQmb0vIdWkHv2xdL1U6BX6M/Y+l06NyQ6mBf+mfL9ZIc
	 IQa7rNeBGxJaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC05CEDDA1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347991358.2744.6252710159327956093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471cd1a9a87bc8803aba7e494b273282eee1eddf48fad396a2b33fcd51d5e490
Date: Tue, 18 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763479913
