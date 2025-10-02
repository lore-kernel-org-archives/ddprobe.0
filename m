Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091CB42A99
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759425594; cv=none; b=fPLC3T/mFoYvoRwTtgbLYCw/dsTWLBf0sSVxcPwcfdr5rdgwtO/prUwcqz3I17EGFw+9MnhW49twnR9X/q3vJATw8XS4KtGxuKbfQGWe52qrD7NNEQP6Ab7zZghxf8F3x2wjP2EfmxfRag5JuS+leGg/jtlPfgLkDf/J2XhX7Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759425594; c=relaxed/simple;
	bh=lyLoiY3K9FQWMTb/j+1FrIUL5FhgU/pZYsK1RxylM/g=;
	h=To:Subject:From:Message-Id:Date; b=toEtNgkUjjJ2yUeU65HE0uwYPYp+mWt/t0fXwfeAYTI+tDtGaauUhkxaWFuadiOvjuoQKig5GByQtL0whv+ri4zL2HgJZgqothhXMI3zIK1NB+rZAbxpbOrNYxtSEQ0wKMjMEzwiBHAXq1rpWxOaJC8YqsK6lQBSEzuJ9Tv3E54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poPNuz0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poPNuz0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E7C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759425593;
	bh=lyLoiY3K9FQWMTb/j+1FrIUL5FhgU/pZYsK1RxylM/g=;
	h=To:Subject:From:Date:From;
	b=poPNuz0RmmhvjG/AvyEpz6cmu1ent+7JsOShkoKeo9J+HdDt5EzSC0MuY2y73H+xV
	 JIGZGemY8PA89VbQDjDPYAc+OQ/LJjFT8ElIsfL1d5/fha74FCIBQ4TdUEojAFmluc
	 mEBDAPNox5CJzsJyJh3Zmx26NyKTIDfCPg+Ae9hrIBTDdsQ9nFyEyVFwEA3YDLhIrr
	 vbL9urnIZRCPHaP2aSm54NZM8e8sVHVnS1NeqmPD2LjqGVsxyh9L/8W/wJXTyX8gOS
	 XD2Akyq4fmT28p/5Tr/UK1FEkziMGHYfxG4etN+vdGHeYTjZxm5vjpZdA38gIMvSCG
	 LM1TvhPDYCU7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BEDCCD183
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942559359.14642.13493071477714140565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00075dc0db02bf6e576602f61475891623674bc5a4a1af55bd3f1499ac9fbb93
Date: Thu, 02 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759425593
