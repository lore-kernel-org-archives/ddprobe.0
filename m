Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A183195
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724459154; cv=none; b=RiOva/QMk9KwCLeTOJIrzgz8Wk8LU3JwnPqrtgoZTbw2aQZYtKMGKnleZCKZN2JxccjrdKE56JyjTzcyyRyW0fznTCq6WLuGmBxQpOPm8tLrQr4OtgTViDWCIWxIoVXb41AfejCLGxz2XOI8jvVwv5Oy4diVXuzPKVOACMo8LNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724459154; c=relaxed/simple;
	bh=nsA5OcU9DxDRhIZY8SdquM9mQyI5xxYtMgjBNiQ5h5g=;
	h=To:Subject:From:Message-Id:Date; b=AYASKcXWY/20OMdPugYxjRLtw+BED0YiVKrTrTVW5L3wtpOcVS0fJcD1W4YF4lIue2yhBFs2O/kiRh05laJpIRkvcHy7tbGxiSOac8XE9ZzoBPpQMqs9ceN9cJD2eoAKtHUDfuu0sFdVWmkP99z2TzU1IcBN/thJCWgAOKpZQWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ja6jJiKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ja6jJiKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD5EC32786
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724459153;
	bh=nsA5OcU9DxDRhIZY8SdquM9mQyI5xxYtMgjBNiQ5h5g=;
	h=To:Subject:From:Date:From;
	b=ja6jJiKhsE/q1VlR1h59WKeZrxnEybiq6pCVv47xhXXumhkVk8E8IkrwYgnfSBzUe
	 5FFnHpkXPYvqNC5JUDsflzV2Czzh1SVIcJ6uSqfjyXra8Fmua+Kq0uZ0eK9JUQjY5u
	 dmKamQqleYP1OWRHVFTZU64O6mB86FAzEWpac6Zbb/zDDUpdDcKEACScdQ5w+kc8LH
	 czjcuSnY/N5DXee55K9xKu3G4oSvh785ui34M1TKzZ/j6QDFms+xx9AMQreyR2QQgb
	 mev9vUBegFtodki7Pfl0ftH6OnZHaO5Bl5zxgdik4jP/7gRx2ARD53r2zxpo9kDsc8
	 4gKkqogUNP7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B5EC5321D
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445915359.11493.5126999437385470021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67be3e24fece7d321fa5821330dd740cb373f940a9f24f81b36c37920d79623
Date: Sat, 24 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724459153
