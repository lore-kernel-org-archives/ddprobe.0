Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DCF2571DA
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781984794; cv=none; b=UvApDToN/e6y5PT4g1ODROQCvqF+jbI+E04MELDAoQQOhUFAftKP89DHe3u+2rUM+9F9APIXda+raD9UTesV/oVNdJEuPVLgggamg3QahkkeUxk1yi2YK53mRPKrQyI8X9WXGauwSh3TVRkWGtHhrIw6rujVIZNOx0DWeVEvN0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781984794; c=relaxed/simple;
	bh=0JZsUurr7ex9PNI0FMqIGofb+a1LIzdjr4GPvTWN4PA=;
	h=To:Subject:From:Message-Id:Date; b=K2jPE4qdog78ck6VdNVcZEI8tiYz4FPi7drZmEL69+TYtKXeeFfF1RqpjP+xKgIT0xfHkcPkk27kRi698E8RJFE3t7wVez0Lau30rTu9+qiYVv397rTJWGe7cRENLPJKxieWvTqBCIwP+7NaiekNCIaSOAHmxZH31d/R59Bwvg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHOMrefe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHOMrefe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BA6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781984793;
	bh=0JZsUurr7ex9PNI0FMqIGofb+a1LIzdjr4GPvTWN4PA=;
	h=To:Subject:From:Date:From;
	b=XHOMreferYTgfDcSDezBtE3uiWopf2FchLswdZthtBUbPLi7ZmLEtIQKkVBqAfkTc
	 Zyenis949/HzsucqVgcjWJ7CgdFsn5M+qp9XReTXqFWzjnxi/xAzSFKaMDp8qH1Q6H
	 q0omJXlhDRnEw0tM4uKC97iIo1uCFgEQD9TyR4eHOvtuyfvLumOZP0GSwMthJxCLNe
	 4ZvBL7Y36S0Jk8JP8whIAQa2vP7hwWM+V8xJMTyvzuZSff3GkLsvooBZUn6eDeTyJh
	 EPwW6rj5g9WSEROo+m6qxTex2IglgcDFnknjW1iW9qxzyivJhCf88MKxXJ3/HG043K
	 KXshKpPUiFKZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CEACD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198479373.4410.915735541781755521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ad8a46e615a454c826671bb73858e1fd3f0c8dd1cce954e389c78d157b901b
Date: Sat, 20 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781984793
