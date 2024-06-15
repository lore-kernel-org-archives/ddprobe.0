Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EC7EAEB
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718424503; cv=none; b=lx4JpEJW/WPnyM9OL9UdZIcu+3pEXwMGFgwcYkztku7hLyARO4ewMU9Xw+t0b/GV1+Lbm975/c0NH2UU8snWkK6yV0SV/zFVGyuWL3obaI+gXMkJdlfwTB8ncEi0APymrkHw60lScHddRSjVwq3yUXBTAWDdaTiZ+ycoPbohu9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718424503; c=relaxed/simple;
	bh=orgAtZOkhghYxZFP2VW74A7LEK0OpU5yit8XDPu1omw=;
	h=To:Subject:From:Message-Id:Date; b=kry1QVqSrDB9ROUwKLkwfJci9OxSEi9LFLLVL7H/ss1ZTns0+RjtGdocu157UpWHQMfUSaOHQtIJmbAHw+jAsimpRnTkKxvdEc9HXRQlHv5VlMo//Wg8kqNUDZJMaOC2NCW4lmqIeYXHc3dAtuwqAKSrWLfMk2FIk5nPWZNUjx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkXnemUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkXnemUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6759C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718424502;
	bh=orgAtZOkhghYxZFP2VW74A7LEK0OpU5yit8XDPu1omw=;
	h=To:Subject:From:Date:From;
	b=hkXnemUZb5ON3unbzCktCxYYbqt601kCENw2lxDFCc65z7kfGELSrnEz7eFgkEcqU
	 PNkQkixHWHXZSI7y+AnSMbbGFZIByQYdKKxZphErf5BUqDBs2vQB7uNDz41ol0A6Wg
	 4QsBHdlk7TSYEtuakMTJ0ZEae+WD4Vvp0p7QcT/aMti25MkA/YrCl7bNmJ1cDybBvG
	 O6OqEeu5hNV4zuk9qZ7qZBetOPFHpwMzVJCf1btJquC/FY1wm85uzyFBytwH/IYsO5
	 d5zS6tl23bmKvkTyDsT0Oc/cVOkv/06UjsDq3ONTirR4waB/MKVB3iIGRNC6PNuQYU
	 evMyQvv9MFHLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB1BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 04:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842450280.4584.5958715138182600427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c828c58b5cba1740f89d904ef80f0a890a679ad0a534bb661a0edd4ff8282e
Date: Sat, 15 Jun 2024 04:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718424502
