Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE67229B36
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751573994; cv=none; b=S/IIwlwhBMetk0qHXd4fvEV0li4OY6QYv+mpVFdjC//4ZA/cPx/RvpK7wN93NWkU3cVVOP/azKERPOgHFUGzcUnMUTDVxe1HbJdPwr2qpF3jwWFkc7UiN/zoMTn2nyxMOq9tbGEHbFUwe2SV6yGkcMYlBbQLEXaB1LOh64fthDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751573994; c=relaxed/simple;
	bh=ZZD3qR2wDZ+YgnJxxivMvdGyUlA46A8OehyzBqER5EQ=;
	h=To:Subject:From:Message-Id:Date; b=AhTYMczxbJluzimZoYkJGdSNnU1cxAbr++aIknYpBTWqutwV8I/6/WOY/wogDAesB7EiGQdjzS6RpiBnpAxuUR6rNuRAOdhi0K5TbCJQ6dZ1In1zJY/L2UKfF3FWqiZkoJobR99XHurSqo4ZQUaGp9TmXDjOOd5HqlHdusEwxyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvC6XGCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvC6XGCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1951C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751573993;
	bh=ZZD3qR2wDZ+YgnJxxivMvdGyUlA46A8OehyzBqER5EQ=;
	h=To:Subject:From:Date:From;
	b=lvC6XGCqxXYKzIAzs/3jvdFUZmsFAOBOBh/p9g7MP/MLPaLqKrVvhnLkPnCJ9VWrb
	 NtZQeyz1dM8KBpY73en38shTlAZzpPOChErI8JtbZrN6zZR69YdSeUW611wd7xVE5E
	 wgzUIT0Ppne730NBUtnQpWolyBZlaX5BMJ8bgRZp0dnRoczctIer20O98ormikKWhx
	 QhgHdcFtuHg/spdlbBSubcZV5oCCzC4qSJjTfOR2DeKNS00S2AEBXtfoqpzoqjZJwr
	 xICFmy2P/f2US70c+b5QSzWRbZt1klNRLOTxur6pQsQBtje5J+Ct/QiF8tRLi/DZ1c
	 YYw6oNLmvHLZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D59C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157399358.3840.14672143304099006610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7883029d2350b6c578866f4940dfbc875a86d7dd7295a8ec706c235958008cf
Date: Thu, 03 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751573993
