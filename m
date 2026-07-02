Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCCD49553A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783003114; cv=none; b=rXFzI1uxie5OSOQIPYNsNnOPeKcdRl7zfcTyzfJg4CzktTZuj9ye45SzBIsxvqxuQEIGHra1frhvfBtn677WQu7I0PgB+mLOIJao4qTmbp4TXjBqJNwTGwEpmnqKaTamPSBFOJCGvvYZWGZlhrUfcxrkYtVEqJYMLq99v94inuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783003114; c=relaxed/simple;
	bh=XILIc0xQ0kghSG/1RbGSG10vJ7zepnJDa+xMqdjjHOY=;
	h=To:Subject:From:Message-Id:Date; b=T9VdGpnH7Dxb7y9tD1Zl4mSpmgjtZDzxxGyaJN+tFGr2UqCmDzIpA7dJfXIow1np6lAT2Bo66k4alYktdDFhiiglS/Upy9/ipoeehHStYsjkfhF5APQjZ4AkQP3uXTKuKqvyZMRdalJzUB42VZu9n7B6pwndUTeUqMTfSIL7ymo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCDWuocm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCDWuocm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF21C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783003113;
	bh=XILIc0xQ0kghSG/1RbGSG10vJ7zepnJDa+xMqdjjHOY=;
	h=To:Subject:From:Date:From;
	b=YCDWuocmnY7kiuYqFTMaA71U5lENZSxyVIg4xsdNQjWpYyU/gqPvHi+iAdmMBB4th
	 DElFzqk8hNdFlIr4KBChNystphXvDvDSu3nzTYybSQGo+2eSLnoEXqTS8zxoj/CQ1L
	 MXDBFxsthYf5KWl8HuORjFGKmnDNRm4V0CqWLBzdzw7iY2SDGaMeFLS+Wl5Umwi/tc
	 vlUZrcH4eFaExRHnePAN4yfmAgh906O0w440meEUfR9ECcYkJ9IjxoAY/V3F6kWhSk
	 JhZDsBGuDMTDwB6/xxUnoMxi3aPTfAjvCzePXHhnRcgvz00wkQkXdga+yXsYk6tw3K
	 FisO+lNNo23gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB57EC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300311369.4976.3427465735031194693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef6007f3dee37bf69e602719718ab8bdc01396f9717fa523d1f37127b35ad89
Date: Thu, 02 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783003113
