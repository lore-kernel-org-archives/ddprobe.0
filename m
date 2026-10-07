Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4804AF17B
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791381034; cv=none; b=uwEC2ZSxMUhXN8a9XChQVxftL0DslJVgg37pScqvpfnVvRfQWHuyvFW1U3GfQneZeLc2+cW0iZX1/YaTVdxg9weqT7U7IbAoWs0/74PxcjxAWPC5S6MaOQHSB4XKpAfKzKZjdIBqj5SKOGazH57EeKIck5c/If1mv7WmKOeVudI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791381034; c=relaxed/simple;
	bh=R6ba3SOxRVowlL+t6vcXRfhWC+rIMzJbY+07Z7vS9kQ=;
	h=To:Subject:From:Message-Id:Date; b=kcZL2YereTTG78HPl9rdpLUlTL/pcIxmkS4BW5xCcpUP6aiGPi8aURUyBTYPH3XGTgUr5EN5uuRRkO4px0ESBStiDbt6czt5JCZUG+5M8uTrztKHvqmWPKOtOruWJWYbtGYaf4Rj/qZln9bHA9vjvIlR8AfB2oaWyhpa8HtsDFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LilKY9Za; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LilKY9Za"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AB1C4AF60
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791381033;
	bh=R6ba3SOxRVowlL+t6vcXRfhWC+rIMzJbY+07Z7vS9kQ=;
	h=To:Subject:From:Date:From;
	b=LilKY9ZasbFETmMlRm4fKDHECEYR6e1KG76WhZ01iFO63MCyzBPEJcfak0VjdgfP5
	 y6X7l1YZdyd0MkN98a+iVhJjk1BA3MF3OovqcgmQrumyQd56OA8uW+j0VzftsBeZ1r
	 kzYQcr4Ow2ro9b9UUiqlh0T8wwACOKRGBgs2mFmcIcmQzrjzi6L5gjPb+/r/vOuqdf
	 JOwr/uRdB47MShxlQcTm1xbEENaI8j7d7Y7QCPD+HYNdnfH0aWbvaRYHp/+rTk6o6R
	 L/NfNfbrTA4/8zSLsrho/fFu+42rh8tqguhyLZab3V5wHuqX8c9Sz4QxoqmJHLBAVI
	 AnOzlHzakue2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD861CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138103370.14046.12656617805874303061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887b2bb937c24972c08344f88ae23fe8ffbdc991c8013d8a6ed30d8a02f75a53
Date: Wed, 07 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791381033
