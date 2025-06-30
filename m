Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B27C86334
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751260194; cv=none; b=IIYfaxtbJ7eKnnNcdxzHxmwSK2DA4CMfgGuY8hPIMNjyYLD0Yn1rc8vPFg9f5Ux7fSAPSNlRr5elVJLzu9PZiwUm64fHqEZhnvgB2Ah/faFUSiUq1WtMs03u+76A/rODxYml9AbjMkR5MUVpzwmEE52MbptzzTSENkQKvcuuxFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751260194; c=relaxed/simple;
	bh=JXVK1BTZU49qs/ehhD+FKWNznqXwJ6Q2pbC5XkDi600=;
	h=To:Subject:From:Message-Id:Date; b=qrRedJqLAXppMO58p6fr2zBRCg2JLI5s5t4KmEXjwu6ImMNamqlF65vWwTT6fCyqi0eIFrSX/m7IyAIKfa7LSypMq/jPHX/pHAY5HvLWI+37BJ/5JXTJP1bBfVa3vv3e3lC8U8dfWVRZZGrJkxV4mMwSV7DnbcMKLQZMoR+yvi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4Et94k4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4Et94k4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751260193;
	bh=JXVK1BTZU49qs/ehhD+FKWNznqXwJ6Q2pbC5XkDi600=;
	h=To:Subject:From:Date:From;
	b=j4Et94k4bTXEbFYfIxpHYXR6Vp/WJmjiHwMw7n5GcXaMXUnr7V4Y8gzjPD4YvWVU5
	 5EebJxyHgVhsIxpByk+b7OrfhnUMcTo2xcm8yESN/girzESEjE1wc/oSbBpjEPCHLK
	 jr5uaUl1oUzjic/ELNiOaq6Rh28CNw6FnEU3o0vmuCh/jbncsnpDLo6A5BXtZn8B9M
	 EJ9TRhep+xy0QMP0sb7CaerNhwFI7GpngO14jp5SZCYmHJylfnqW+kcb61FXSu8Hfq
	 sWDab2/dFn4K8xWtTI8IAoI2B38f3bkJvNjl1Y4boMITew5w6sodJuhi3czv53s+Kx
	 WBKwDuc8+T7hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9592BC7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126019357.19742.8780861096816966861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e8c8aa19e37e07eb2b1274bb93e2c94d1a9f372797c67eb99834e80cb1855b
Date: Mon, 30 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751260193
