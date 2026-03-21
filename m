Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D06B21E087
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774073694; cv=none; b=JetFZeO4enwoZh6y5Y9UgejqUrj+3PaDeE+reHPDOC2C5eG7HDfsTnuG1MfXSJw48/OreVosfszCtuQ86a/Cp098zelZ0dnfNvDtmQISOKU+ZOUrrbL0ysu+cUgx0wenxKxhGz1Tsg2u2M8kxHWpygcy6l8+Vt8QikTSRXdTJFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774073694; c=relaxed/simple;
	bh=Uj6UpGBXCyjtmRwTtglCH1LCq6/cnnCg0loHI+CWmLU=;
	h=To:Subject:From:Message-Id:Date; b=aq8vzBO6TGskB/PkuRxbn654akzzYhghQqftWZ68Kv1T+aGWDvs0PpEbkoVuRAypqvrgYM8OCwlS/DdD6YEWvswTcLrkI4IKgjOBv+LoQtqizR6pAX7sDuUgUw90z23U7QYd1TC7K2wuUxllp5Pti4pGwTdmgN4Nim8ewGJD7tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcJZCOgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcJZCOgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3192C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774073693;
	bh=Uj6UpGBXCyjtmRwTtglCH1LCq6/cnnCg0loHI+CWmLU=;
	h=To:Subject:From:Date:From;
	b=fcJZCOgmZKPxUDaA9yHwe/AihdWDoAwl9BpHd2p6hYbI2v8ZCq5QmPs05GNy90s+y
	 hU0WjUEg/6igAu7J440wnXIobyui913k77xQ6gN6T0vwQgDuQ3mCmL3j1c5OxQQ3rm
	 JQkgYiENHSvUWd/oQoj4mLBPYedG1TqsjSkWJYHzo8rj8YARzZnLqdAxkU9vdM6p7E
	 zhk/yE9c+lHKf8ExUtxM1kgQyz/RjT9HqYLLvuEiNhBMHdqUwNHSHjsXkyPr0b7US/
	 V5cUiH7mokfyZIk+F9xKxE2aZ/CakK+mgmJmKaKJ0GTpJJT6M+lojljeoNh87IOemS
	 Ga15bEbchzA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E75108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407369357.7323.5500469751214239538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2cb8da9fcde9a5848682cf0fb5186d011e401e6aabc7c387240b7a38109de41
Date: Sat, 21 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774073693
