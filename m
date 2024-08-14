Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16C7156861
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723601753; cv=none; b=GfOmt4ECvJlrANThJH3flE/eKMlNl4iAMBqL3gjVm8e2U6MHe1advodtblG0xjFtsc9TTJQ+tiH/5Sw1eOlwSGYKdt7RtwTPfk49GQkIEXucIuGpbGJCMWr15xNvw9JFFBptdmhK9HQWCZvvUrVewyzY0ovg8Kt4zueuSmCdTDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723601753; c=relaxed/simple;
	bh=EbKihf7qNJEqWLv3dmNe2g1ubHjliDglXxSsXYXacIE=;
	h=To:Subject:From:Message-Id:Date; b=NTCpzB6HTrqNkSPKW3vkxFxW5ovs39lRwbVfiCNzjvGA+QX8ts56xV5vXdJIOdbMFPRPyYlC4QvYU08BtIfl2UTRtXFd1EUPBzmKTcCn+vRSAFyy6vBzUaMiho7T5jjQr6yhHuULuVxlEh25Bhr4bW0gs6ncQV5LcjzLcV1jQSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8Mx22dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8Mx22dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A873AC4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723601753;
	bh=EbKihf7qNJEqWLv3dmNe2g1ubHjliDglXxSsXYXacIE=;
	h=To:Subject:From:Date:From;
	b=t8Mx22dHCjD1lTI3/kncxwZnJPQiS0D919/INH+MqGM9e5kJXF8lW4wrhnPle0um6
	 4TieN+1apuCJE4HmkIIb3/FV42KxtjrYU8oe4C4pJbmcxJYSCHmDj2l5wM+Hv96UHp
	 AkHaWeC3wPv2IHDf6bB3BxoZXlan56P/vBCROCCs2vEavZVYyh0D6roTj3g/Glyq48
	 XFIg9oru5nqQpTFouC2dQGLbLKTjf/oIcgYO9TwrwIKl/J91VktAjsWoBS2hS7Txt9
	 QHfH8GbVmjanhutmNZ8c4iPQt7XUaN/argkzX2NeIK0Kbn/RdnsTUY8+4+gVhSzCZ+
	 WDGt78oSA0SFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BD3C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360175359.23940.9880978619904664914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6825637cf212f876ab062f209ea33ddb8319c532c6deeec6b5c8e8afb6cba4b3
Date: Wed, 14 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723601753
