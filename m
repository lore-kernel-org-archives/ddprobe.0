Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365262942A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737307554; cv=none; b=Dj5UfHfgPDZlitbYxL77a5PFWrvajKmoOz9iskWtO6XtDtsMoT5LXqPVnxhn3wbZ9yRFj99WSg98QwKHj1yBA61MHQbqOHi73MtW5rwsBrU/Stc4COcx3ZZhPzsrPdPJLFUSPjONoZOlxCEIKhElqospMSoW3WRH8rOljQLwwZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737307554; c=relaxed/simple;
	bh=lJ8NI8LD/Ct6C2BRiiTLa3RSk80deRwNJqdzjRBgrvY=;
	h=To:Subject:From:Message-Id:Date; b=kV2rxKU3vMjsxCZMivW2Uzbx2dYuStq64QWUaelX0qxEIWeyflSF7lxbHKpvOEbNHPbW8NXYkR8imNGhtT9LsBYmFKpgMNqvrldvaiaYfAb5yDnFkTIZSCRXxEJIkO+ENVNQ9KgZqSyNPCin2XiYenNWFxxkd3iSepQGjM1ol2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDrbrlsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDrbrlsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB3C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737307553;
	bh=lJ8NI8LD/Ct6C2BRiiTLa3RSk80deRwNJqdzjRBgrvY=;
	h=To:Subject:From:Date:From;
	b=vDrbrlsY9tSk75YXwz0NuyYQO9Ymm76UxZcAn7OYOyNlE5KeMH1+6q/ha6sMM/bTL
	 h/uiEGNyW8o0ay8+iVZ5ZCBzPSm5ICfF0EjUqLHCBwDuQwjI0FgvjOgTbwYD6iRG5d
	 q+GccoAYSzie8QRPesGScTyHyrpd+gRacidPtGEZGvATXrQT10LWF4rwguPrTbpnij
	 y9JmtP6Q9tH9ylwc/FKdTRB7Y8sDUUqJpsDe/dyWjmuE4TFCEsU6Piw0HaMHaOebl8
	 +tM+ucgWkO4uqJjGsNpxcsrzaxB/kRo81HxYtWgOqBTVjj63RNxQ9qjCAkwdmGctgD
	 bItjdQDw8BV9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BAC02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173730755359.1776.9632438006341646736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539bae48a32e5cdce965c3c487650c65c1dd1341fab3c18c2ef8a4f8eae2528d
Date: Sun, 19 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737307553
