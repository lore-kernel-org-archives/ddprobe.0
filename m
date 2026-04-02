Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1924C388E4D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775168134; cv=none; b=d7YvK3kdHGNtZPHVNUuS7cuC7U2tQocorzOoTnwbBrVpfA+UDHXFlrNOvQqzIJzEpXnpbUSGTEJ/PonU6hBuoAjoLHNGQaIbpr2Ah1/ixAtz5PVdIPNJQZfzW9m1CLtBM7NJgp3sJYUZt7teOkdvouTgzdFCXKLYLIYRBwVM5nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775168134; c=relaxed/simple;
	bh=XH9ROaE6IGRTz56y24SAxXv7SA8yV1GNRBZJv/Hb4w4=;
	h=To:Subject:From:Message-Id:Date; b=aZhMv4IMCBDaJ/i+IP1KkatBKtsU4SpM9Lnb2GjlF+twHhhFhqgur/oWHfuiPpXp5bD8GgoCCbTdrAsnieYwkhFRIxLJzAiGMhYfiyYF2IABXFmzLPRIjLFQ7al5iqQxPyl0t/NikvpKZ7hQGyC2Lqjm+RS0pnn+rEq2boSZDgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SikFjTZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SikFjTZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE89AC19424
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775168133;
	bh=XH9ROaE6IGRTz56y24SAxXv7SA8yV1GNRBZJv/Hb4w4=;
	h=To:Subject:From:Date:From;
	b=SikFjTZ3vmUmWMP8PBf6YoQe6E93u7my4lLrfbiZ/fILgH77wxTcgxgXr3KfmPQtJ
	 S+g9+gItqs5QrMojLcXOPA6DDX8/7IfdEICH5z6Hx2BAt+k0nAsdzvuUwgGNIj7NVH
	 xhqb0o/ehYHP6DadvBHQUEJlFYA1PFKe3cQ0wR62uPeP51W24aSOaRbp4tv7sO9KaL
	 //6IrcKeokyWWtJObpRG7xLeJE9bAxiKrUUTmbz/b/Iukf1RYrqlRa/0KY9IdcOxvo
	 jTuAcm4eqm1pPrpInaPphMrGuxJqkjYIyw7gAJQYwjWH7JGH0eDiZBfujBTRBHnemX
	 b+3vqFsD5tuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA496D6AB10
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516813368.2098.1108153293538997346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227d03760cc798fc1496dca2735fb9cac00d08762bc549c43e7fc13c48361f2d
Date: Thu, 02 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775168133
