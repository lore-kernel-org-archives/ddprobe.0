Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6F43921D1
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789369234; cv=none; b=Nk+x1ljeLBomykB4pwRFlADKbjQVGSruIp9dD+roNOzZD3CXW+9IlzCNWLGj9T0qpQ789brJ3/spH+gYIxKTLl1ToUMs+WnCPMtZ4c8oNj+xsEoWEDfoA5UNTYWOCQtFIrpOfpPtUQJ7BbM76f4B+8t1qr7Yd9RELo1JctvqRwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789369234; c=relaxed/simple;
	bh=d4NpJLvCjFPTDmDagl1CZxgIYS/iJciKEd4VQvUS3kY=;
	h=To:Subject:From:Message-Id:Date; b=crW+9iMPtMtaC7ZOns5dVlr/LUbEZ3HlRQ/HVfyAgMkAWN/IGfcUE0BL/kH7gfDYY314HUIM33IX3PRL0a4eAGgkBpNSJvz8tZQ/ySkeIUw/wB8I7KJ3gjmIf9FzCcY4oGe7qqvZwyUMNJWOchm3n6EEO1UvzNp5X62YgU/hM90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbPUDIW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbPUDIW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB1DC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789369233;
	bh=d4NpJLvCjFPTDmDagl1CZxgIYS/iJciKEd4VQvUS3kY=;
	h=To:Subject:From:Date:From;
	b=QbPUDIW8EUK76bXlxsXdV/Gq65g+GDcfHiXYR2SkG7erbsKhG/UV9dXNv5puDPurk
	 DmB3GM1er8nr23qiUkVglP+3vQgv0p1Uh/H0HAWeHEbkWWzl7hAGW5Umwgmu8KFZ2p
	 8YJaC5OipU/appi47Qe2Q49jlk73jHohE6HhQtkwALDTm7P+AK6l1ZzGcnohbxnmIU
	 hXLYrSBSL8HFsx7H9ehWCHv7QcJwMoTf7I9V6xAT2YPv7FScYvxSaYr4cpb57ZP2k1
	 +dCYIRWZshw1u6+8+kywuuCmUWSxu6GNf/+q3vEabz4TYQcbIU3huCh4AyItS8K6OZ
	 fucKPCq4/Jbyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BE7C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936923371.11603.10437157130032113385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac139a4d57b19500489ffe4564204ebdba33c02d7a58ae1c8b36c5055a0f917f
Date: Mon, 14 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789369233
