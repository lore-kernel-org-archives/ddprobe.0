Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C37C272803
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775532934; cv=none; b=N/uy443+vjVcWbxhk2Yv5nHV2XSWXTjjDiyZ/htddGPg5LApb9iOKZN6hrJwKMCZtlfV6eVsQntAfvgqmaCirFRxuCr7INVsXT/bRJ1e5Hz5IFYD5UfJjxRRt23W2zzyHhHOrHOEoEEzQzvd0bNKmNst3lk+mCiP9AijS2igBGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775532934; c=relaxed/simple;
	bh=I30tcpWrptdeJJeSPq57r+USxGysipEsFi+0wkM2IqE=;
	h=To:Subject:From:Message-Id:Date; b=lB7gmFQms+vY/8WPjTzH1rp9UUSsgvx7zeAmjF0s2IyXZg3N27VPOO1DTxp4Wsyn1Dn90WHSnb9hoy7mAhmeEzA9BY246D/apds8lR3OCoJMV4mF4atSFhtjtKwzck6Xlm6Y9wJmZU0UIwFlso/2dh615gIiQfzIGYn5RxLO28g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNQWUfwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNQWUfwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B1DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775532933;
	bh=I30tcpWrptdeJJeSPq57r+USxGysipEsFi+0wkM2IqE=;
	h=To:Subject:From:Date:From;
	b=tNQWUfwdstVigrud3wWwZkEIXpZAdoIRG/jbnIISF6Cax8xBBpgEponx+6FvzjdZz
	 JXqPQF5qlYR04a4ZDP903Mz19sWuMGQXQFULuneDTWXiXQFsWEGW2u0ce56k+qiM95
	 t0vhKG+ySMdqJ621WDXKlBY53V20gqDKAw8woApYiYAIqUMpW3wbrABWcPsgn0+Ak/
	 /XmzN4dwzwMnF0N5sjUjrHl4P0FRg7UZUCQnlVaTlAGocfFxi84qyQRf8NS1hOtzmt
	 tR1jmX1iVDZT01ZB8lt4jR7aaqzsyoqNaZkXr0tXlWSzlaw36MIsuDU4a2V19v9g5q
	 AUgqrRsLAvTAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC938FB518D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553293368.4543.15461600583660657825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e05497dce1b3390632f4336affc90e8ae23458b22c7ce2d5ca27070dd69d946
Date: Tue, 07 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775532933
