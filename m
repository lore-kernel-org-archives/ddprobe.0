Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D52A54728
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735971354; cv=none; b=WpaKIzwGqso2F6W9uBRoUEyPALkiYpx49Pn7K4EGULxyrza8MuWdnyW0YpEStwNHZez4/5bhm+H8x1waSnfNsFaFmPXNs1wTTjID2fJOkdvzp7LBBaCsj9KPkOd6WuW8zM+uEU4hyz/aQRJ8GjjgoJAPODKkWgf/cIQK7SyYdis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735971354; c=relaxed/simple;
	bh=0wL/CvbzrK9PcyniO9U/0jRbTBWnzKPYoRvcgEevfDM=;
	h=To:Subject:From:Message-Id:Date; b=Rysc1KhZt4DDIp8F6xIvq057amu7X1ijO0KKzbbAhC9OGKyWlyvoioUUZur4RBnWlc8jB+wDfY9cHZ0ji345c2DvJbiD71fYUfchg+nt+lBcnou95QgkciWM+yOPtRNRZwLbihJFDXGalt01Rtf3reh5XtRqxmfkhFWWdldRMCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAXUaNQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAXUaNQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9F5C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735971353;
	bh=0wL/CvbzrK9PcyniO9U/0jRbTBWnzKPYoRvcgEevfDM=;
	h=To:Subject:From:Date:From;
	b=kAXUaNQZhnTWSMqU+CAeklQBjHv3ebAEFOzoISbRvcctUYzJzSbEKuBkM+c3fDpmY
	 acTn0a+jenBwQOUdYdD5BkmW7Iftso4BE6Y4m1RIjlU4kUs+VmUswXb7cSX/b/o53b
	 vRLLOFRZACdOz4kXCJBK932gvwVbiio0CsVHS8ZYmg2K3fbeoipNkpc/l9CwSjU4Fv
	 vnClBchJVnvwC6XUhD1FxOs8/FcF0c8Wb2kQokKBbyzvCHXluv8mem3gEqBU50fsCJ
	 7/wF/bpMz1ezjKzS74wnoaCGRZQ235ix4kuukdD8+pnSVNWMb2noD811vc2u0F47i1
	 /swoYsoRKOrTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C62E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597135359.14083.5707751462780381699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c63dec9a781fdb34ee91b43b487f2d215426789814b58d9e68bf7374508333
Date: Sat, 04 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735971353
