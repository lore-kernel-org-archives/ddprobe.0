Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F24436C9E5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777039654; cv=none; b=N62v0pUKqyC/hiBjJQFOXM3bCZKzewcSxsJeE5QO6KObukIMeXatKjqkv1i8Ts5DAjqAHCROl/ikF94oYe9OMRKKOf5XdJC5ARd0uxoOe/zcsMO06TW9i3lmUmtsVZgbdQzSk6Nq9PyuZV0L2/uRo3gxTQsUOlq0qjdSMVtlUY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777039654; c=relaxed/simple;
	bh=LdZQx47G6SDDlXhyYB6vwuSU4AUqIkOpBC89YhqEbXU=;
	h=To:Subject:From:Message-Id:Date; b=X+Z0mZDyL71lDDzDrz88WHdOE9m8RkGQT7z3zigVy9Tpeh+IhyJtzJLsoVmCYiXdj5zcQ05vMOKIGrhVDwCRBXZRu4Khbkg+yIW6eYrKUB8rtXx6tEswGG95Ve8/ahcezLykYAOW86pk6tCOgVBmWiwK313X8Ng1uS2Mcjoj6KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvKpmwQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvKpmwQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA8EC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777039653;
	bh=LdZQx47G6SDDlXhyYB6vwuSU4AUqIkOpBC89YhqEbXU=;
	h=To:Subject:From:Date:From;
	b=BvKpmwQ9j2oRjLcl8EFBk6ajqpxQYOoSPzNqvCAbrmghB58gspsBQRP8/Gplfe2rg
	 WxOEz8TO13Vg4IjGC//Dw73gDMquGt++aXkiUZ5SS5fiX7jgu6kY+6tkH6hhIfVdme
	 egC267Yo5X30D//qMs4um8wVLVHfA3DvNZsEh/4+iLkn60TFSCNS+y6KshGy3YXhWc
	 9xkrsvMYrEp6RFsOuVGL2x+BhVZie918QasyofgGaLvcYv7HF2x6R8p+Jfg/gbT9qj
	 HdLoniWZRtAiuFRX/aaGC5mLTml/ocmlqJ/10rCW0dZ2hSTaiMQuPgk6tHdOUiFWIf
	 s7WNxHLk7s1ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA25FED3CE
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703965368.1835.10352089747754027179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6981a2e635b4541b362b8534a15b28e82df555df9188b1385c42e1e04d8312b
Date: Fri, 24 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777039653
