Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6291720125F
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787033434; cv=none; b=nBWyM/qJROPIlwEQoUhAWRsTQQa1tl4BvcN6wB0vnBYJ79FScdvOT6MlPNr0Zw+FSdoXwx2WjHQG9Fzywbz35phExGiTrcjHxf8CLk4cBMuiZu0HCZNts/Q0/NcTvJ71FZdIM56eeoCx3br1J4HF2/stT5PMdkWSsk+WyQ7VDfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787033434; c=relaxed/simple;
	bh=qWuJdEhsB1t7y8lM08fa1rG2DnLgDMrXobcRvv8dZdo=;
	h=To:Subject:From:Message-Id:Date; b=m4uPWRQKx/pUvfQr1yJVg9xJdhfcLJXrFUbcr+9jiFyGeS5gHb1OZuoLCrqKWGFJ0Taqw85Z+DdEMk6ClwTJuVsEFDE4/reJ8rb2k3nURZ5Dh0ZlPzfDzixiFW9bLNK56G2SThGsbSMubUX3AzW6KuaHe0FHIXoxAKIbIlp6MVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kn+FxOjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kn+FxOjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB38CC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787033433;
	bh=qWuJdEhsB1t7y8lM08fa1rG2DnLgDMrXobcRvv8dZdo=;
	h=To:Subject:From:Date:From;
	b=kn+FxOjcEPZRcX+6u5sDAxMs8Uj4pjUCNVSNK44YlKGl18dnu190qRyABZl3FberW
	 GT5QO6VGeIkZ8SXCWgYeGKAf0+d4nEgB6kRvxtiM+HVHIbrvzNyBBhczby6fP3+DOp
	 xIyTiNWvtdnRZRQ8+gQEDlbuTCJXrsntDevq3IMRDhD4nz5f8LzNdTmzK8zzyNTMsm
	 D4BbjRDy68MlQYmmqR0i1LDTRa1QwMe8fdfck/Z/wanMGqgoJiHNzfzrXqSU0y4UnP
	 yrC+etQJ2Kq8jkDxp4xDlQQcGn72dJlWX7dCiqTutTtY4B3I4PbyfDyRyPhejqxvy/
	 lpegSjNbIepSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB36C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703343368.11824.15486223348732585497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86101ac627de35129c60dab4a679226a95ba825e2df98deb4bed32ed9f49d871
Date: Tue, 18 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787033433
