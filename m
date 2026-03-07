Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC5027F75C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772845493; cv=none; b=Br3fOPY0FPwVYYitS3et5/kkuVOs2IQhK99jqljzc0X6tw92fcgyxb2a4W5UIiq2rtnueRP1UbHXQn596ajpQYjqRZmzRAA4dS7AqnxSnV60FAfT8TVUqE2zWHZDvYwDJ3P2IDs1GSN25UXyeJjzxCZhTxwWAdFg0GvzmY9xrwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772845493; c=relaxed/simple;
	bh=sZMwyRDdiTY6joxUAS6fwaEJNk5xHmqwe6TCsfnG32o=;
	h=To:Subject:From:Message-Id:Date; b=bZRzN6DM8a+N3zhLAPOYKOy1c/3z6RbKqfULtn1x/1Z9xEaQL14Os7M5UE1NrG95uMv6ICHuKqdXfAgDbt4DjKlH4dLXki5ctKM7XulwYn4SEUjRedG/FNSAdShLwVPWmg876hLNm44xMN0e5hsk6et1xHId771QwkcyLdQ/Dpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROJxeqrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROJxeqrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772845493;
	bh=sZMwyRDdiTY6joxUAS6fwaEJNk5xHmqwe6TCsfnG32o=;
	h=To:Subject:From:Date:From;
	b=ROJxeqrTwTS8agKxgU6nuftHdDWT4p8lJ9axToWgcfrqkNi7m+qvWT0NKH3ez+tWA
	 erUKwjUgs0KTYzx8HJBudM5o3EY46NGpWh71na0PCtdpZl9jVb75eMV6aRLIhacvs0
	 kLINB4Yiu8QBGkbkQJtfAmlhGfjURjinyD5yIswsm7XaP0RVlInEYZByZOd3sxPJyQ
	 IMcmWLtpSM3rQE01Y9oZ5NpajNIWWwPh99h0IrBUlrbm7Kblig8CHNddvi9hmtH6kF
	 baNH+03bPPOBsk3fTLTY3hTuwANWGcVlL/t+lWLR8ZTZ/GGLzC8zT9tZ47tDDUt2LP
	 jK9n95hIh9HQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C74FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284549358.8159.8130896290396423177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897f9396eac3503a32ada28d2b023d9b1aefb5343d5090dde7ff6b134145631b
Date: Sat, 07 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772845493
