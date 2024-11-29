Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329CA14A624
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732901154; cv=none; b=q5TKMj/dWA+Su+fz9lZ4LkbRBp1GLHzNKEeDDwGEacB8khuE4tj7e/OI1xmhZijbtQFliKHJd1lrwIRfGVZifz3OrFhV9hYysyNPowR2tqs3iyvjmN3Rhta1HleZSQ5EyLRrSVE7MyX3dFO9ZopgDx4/a4tp18+IyHqhpCX426M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732901154; c=relaxed/simple;
	bh=x9wPYrRFgsXlgkzWMwxXtSf9cPPTPMVl0VLwTRH60Zc=;
	h=To:Subject:From:Message-Id:Date; b=Ci/Wl6DQcHPUVNS6iXgpXKsLgwWBMJzhlRJbaJi04n+OQ8486A/avwCWQRvZmJO4+/2mtWKiQX8uFkuqKDLsq4VG+aNH+aqDupg0xxg0fEv8xXcgpoXxgmajovDU33wtr5F+VWFVCS2TLWqXczGfcF8c8nQqmUxGXBsmqrb1tGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DCwDnsm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DCwDnsm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52DCC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732901153;
	bh=x9wPYrRFgsXlgkzWMwxXtSf9cPPTPMVl0VLwTRH60Zc=;
	h=To:Subject:From:Date:From;
	b=DCwDnsm+7G/sv5tAIwY+yCN7jCZnLaa6Vr101Gw+OvaLLz4LhSxiKIR2P37+5kL3B
	 tsc0kJkM+08NyF0KftDtY9W3W+xoxSnYgXHHBvcTrbaw/MGpkJZlnZrMRPljPzuMIq
	 bcLWfulg15sDDGo+IpaFlG2ye0Dc1CTY1FZfpWm0jkaCPQv4kpbO2GU/00WRa/TFwK
	 kkoa4fBXyDjQBKQynXTNxTtn/X7XtIGwL1PNBbdLzjHOiqUtiWGP7U+sOGbclBganQ
	 JVykUc5weUJUN3IYikA6NklfJ4ZdHNdaWDcOQ492RPyr3UdKFYxS1K5TwNWoFpPb3K
	 H3ByUaj7PdYSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB46D729EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290115361.14019.18254905224657814932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c98b084faeb05c403b2130c321856b9f23508c6d37ef6e5ca6b028d1b8223bb
Date: Fri, 29 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732901153
