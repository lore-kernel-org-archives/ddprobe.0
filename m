Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569403B42FD
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789477234; cv=none; b=dc2ZvRwG3IpQ3JoWW0h2KBusmXsE3uHCNmfclRhVxTiaMGwkVdj3jI20GxdaDViFqC3n3jZ9RfCisQNYdLKO5iAu379loPS49YsYQ8oC63WU1HPZwtx0VMSjd9YBMJ31TL4+PDC+mGdzK8ggHSwDLuwPVNfag0+KktOY8EBNKM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789477234; c=relaxed/simple;
	bh=tntfH5HUOZ1d0U0hZihJ+Aa+PWmR9fasU/ju6QviO8g=;
	h=To:Subject:From:Message-Id:Date; b=CmebSI/G04CNVQVImNuqkG6j50/32KjmeiTLoJiAGZpLmhWpegnddfgGIBlWanT4C4KXKGrMnsdjMDptRz179gs2wJrq0+Iz3c7yiIiHcAOQDJ85tpOB0j5+UYKjZ6SLtm1UPVomHipljuk7XrR3DiXUflmoev3a2Wo8o5mplXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIhdj4rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIhdj4rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7CBC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789477233;
	bh=tntfH5HUOZ1d0U0hZihJ+Aa+PWmR9fasU/ju6QviO8g=;
	h=To:Subject:From:Date:From;
	b=RIhdj4rxbl93qCAt17MLLTpw9cDRlqsEPZBvj8BCToEv5efmnk7N4qJy0wI6LadA3
	 Uio2KiBofro7Sies3Z/XcOBP1mKlpH6CagGSwVM1vJt5fkJY6r/3OejfPqQpBew8/z
	 clO/EiTEhMYc5R5+z9YSVR5WlO7VoQkWBkMQUan6bDf4kCJB6vFrsMNQxasd43HryO
	 5TESVboID9Uyk3b6xZavDl16YRqIwgPrSyjZW+3+mQAAFMy8Et7C8VfQFVXkd2UOJB
	 zhxqir8cBv1ofkb7I5HKCnD6C8OR/nqNbK0nyDaU8mL9cdvgIiHSdWPhRYMHNzlmaY
	 jlvy1nzLwsszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D83C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947723368.25512.16526180060445371932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ba2976f75a9f91ffec26122b686fb047512379d5b3da58a9dd12c7b7972406
Date: Tue, 15 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789477233
