Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1790934B1B6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771522494; cv=none; b=GALLLpsLedGrIHL8TI2wGN+nuYUETrYdoFQdMlCYcBCV7syb1btfkJkiD60aYHjM+e40xTOjIwhlqJBdMqX0T6bPcvC21ECAFVbVAA4akqVyGuQGJJxNnvgtXARCx+IdrcplTgx9ifSPJDPZeKuBF4VTVEs67e7l2kd6PqL36yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771522494; c=relaxed/simple;
	bh=k35FccMfSFBSLtLRZVw0LHl7EFQtwY+8Q+ALPP6F1NA=;
	h=To:Subject:From:Message-Id:Date; b=Zqh78royTDsNDk2u32TZnNF1qsIpMAEKp95Zrq5KaLb82VGKFNWemU/E9QvNa5kh7e+I3JmD3gE+BxHK31YzkXy3X949Ww9HCyD9N6AyOUGWiNvJ5rzai4iKK1xw84FwLxHOCEsC5mTGrObH0/Bk2T9PB5mmIU92WOFTHhO3Vj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7NiI2MO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7NiI2MO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C8C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771522493;
	bh=k35FccMfSFBSLtLRZVw0LHl7EFQtwY+8Q+ALPP6F1NA=;
	h=To:Subject:From:Date:From;
	b=Z7NiI2MOzsYgTuALCRaGIY/9e/CS8UWhaZORYx1ssbENzvJjgKKsWWRjId0FIYBzE
	 7niOLN7rLWZY3FVCCzGGQdkILUjWR7KPuoWv4E78tzqkOYXgq6sAaRrf1o4nXowEDc
	 +yWrKOmp9ZRIMfJWryAUWwpKTWxXC7TBio99DrNt8t4eyuPNfyBAzUWINoelRBy04t
	 PUhEjqRjxbLjWeqgK+c8lhtaQyOJ70XLZwBH7EnNGjOeQwmvg6x91Y3sARCGyXIeoA
	 kkfs8EesrCfeft5fHwZ3nuMqLN+XdVZmLV9NGD1IQCsD8YEa/8heJ4kXnOJD2e1A/W
	 gTbC8kjMUKRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93529E9A056
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152249359.19847.11353577913727431767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a120256704d60d5880a71704d4c0c7f1af60721b87abc033693f3e6c57f2249
Date: Thu, 19 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771522493
