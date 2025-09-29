Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF46266B52
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759147195; cv=none; b=RIiHlDjeOxLD9+W3/XE69Sln++qZyfYz7harTKSCJGEX8GKORTRoeTZEEdsoC7lNuH9BFYwmHRUoT7L7qHxrhUcePlKuwHhDYMnU99vD/bAFbQIcGlSAg1F6hUZIT7yV/kDzlzryYTkoxyo7fkxJCSGNNrHzV9Rk10SnsO9MBO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759147195; c=relaxed/simple;
	bh=ieD1/NcMS8F6XpRaNr1dTAraMLwlz5eglGXND0CuTes=;
	h=To:Subject:From:Message-Id:Date; b=ribUtoypd/9uGnp4aI0hk99eM3hr0QlsEAL0SmL1mihSAN7VmFTtFsLTaoG5YjRfWmQjMPWKTYyDhB9JV0SRtAJVoqz9moA1FCftvQTQfrAT2lZ9luNtW64iIngr3tnzxtJbHXvZGVqxNO6vgjNVejAPLPGEpIazK8/KBNnZ/K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5+8M4u3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5+8M4u3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD77C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759147193;
	bh=ieD1/NcMS8F6XpRaNr1dTAraMLwlz5eglGXND0CuTes=;
	h=To:Subject:From:Date:From;
	b=C5+8M4u3116qySKpdw6hNUEDShiXrMOmBklVMAkrEnSxgVYnureh4hcxWaVQv8nov
	 DJp+jf+KEKkMj2cmNzEmC86El9AQiJoFJJR6s6oqZi1eNdbRlC3xsLxyQSjRlTVvr0
	 rRq96cgNtpMmaUTHUh79zhsxUAxmIE+FpbmQHrbIFf+9/QJUpHtY5tdhD/XThX8WE3
	 k0o+7LZGgKSecjIk85zzkn7rq9WojdBCwc40ARC4HRE2gBkzn3NwC9yLOqfBDp3o1k
	 mSZP3XuExeTaxKXJqTNqs+7sjuMInTykd/ODOdjwbdHeu0DT6NkMb5oLDHMwMRrhfV
	 6MmkRhGJZGCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9728ACAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914719361.13643.8211075773949324547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3faac35e7e9883955d56ed96f67d4df873a524bd4597c692f255ae7008ab936
Date: Mon, 29 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759147193
