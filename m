Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B112F5A13
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782603514; cv=none; b=TPy/pIJIOEExCBL/mzQrf8pihy/EEb6xCOm51IDiXP7J8/O+hg6ACJrPsho49tF+koVO4/aJLZAzst87ya24wXhWHwxlVwuzwr367La8t3M/u9Sh5USHX/QT95H3x/WppYJRq2gXKTl/hatYbTVeuyGKRAJXTyc803V9GBHVMek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782603514; c=relaxed/simple;
	bh=SZf8KIzmFV5Xo2SC2YEac4/o6QntCIiO/fGpFqanVuo=;
	h=To:Subject:From:Message-Id:Date; b=mz7aWFH+IpUlSKAhM2Y5ng6YJQueyDJqXr8LMNQBZvGm+uNrXoz0GYEXGSR4v20anPZlzK1JX4MDjsEVtdMGWragQ16vOmnLt97d6Y8C8gPKuVnsue2JLGQDsXjdeWtT5pDOlpDhBWO8mYkOqhsJ8DqbdU02HZikgi1Ugt4eXmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKcIELTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKcIELTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29E7C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782603513;
	bh=SZf8KIzmFV5Xo2SC2YEac4/o6QntCIiO/fGpFqanVuo=;
	h=To:Subject:From:Date:From;
	b=lKcIELTwT5g3C1SGrZvMtWQr077PRBQxM3IXUEoQe0JhXkI3UIofDfdxVw6mA1kSl
	 RQEM/50hblQJA5LAWEZ1IbX3XOVcEXqTBzm+AUK+DKhEpO3H9l1gixXT1vYTtVJhgG
	 c+aJPEZdrq58h0eb2xjYgwiJy1zMDyah69H4gaXOYb3ICbIycnzctZtmE6k9avreAF
	 mEffkAejG6r4skmOhT7O5xXbBSVhbxOe6t/uDZzw5DzaABEH4c76GTCbl7ALZtis/j
	 co5clydT/qeUsnGK5l+SdD0VpMQdOZa2tPQh2k/0zQ4aPrdaxnWwcsRgqoektlnVML
	 owlqJZ2q5gDmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB98C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260351375.8160.309479705711915849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264e2b7a34ada8725c3cc52817dcc84a4b275a8d1dd97bc378f7cd608f655105
Date: Sat, 27 Jun 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782603513
