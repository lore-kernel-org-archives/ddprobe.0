Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B88B47140C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784664515; cv=none; b=R7tYWYn6KWXs4F2KZV8FcNoZtaiWSK43GNuWCSpeIB5q9qbWPZhRZmWNkYCnwZdMHoyZOfDO/tau4eo6yL7OPF0ut2tfRcQtmUIanDImKxtu1zA+rUxzDmzKCoz9KF411DlPbFK+JZI34QfCbpOhqxRl3B11jx4KvQIsaefnbpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784664515; c=relaxed/simple;
	bh=Wmt3KVNYpI9t8IS7adL4xsXOMDqfFqVVlBpGhd6zaXk=;
	h=To:Subject:From:Message-Id:Date; b=b2T2nNZVMkvLB1IEswHhxClMyJ+7Y5xL+ktouI5sojiGryZ9Z3z0ju0AOEnrSjDZwg8AJeI196wcjRlLLwgwllq5GxcTnQDn8heuceYqQBW1a/Q/PYsXhdlLhkHZiJp1xViCHsKnfdiBt29QVmQEPfw7rkWDbMRA+94ahLLrNrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXGnpGF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXGnpGF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96F1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784664513;
	bh=Wmt3KVNYpI9t8IS7adL4xsXOMDqfFqVVlBpGhd6zaXk=;
	h=To:Subject:From:Date:From;
	b=kXGnpGF8NtCp5kApjQqc3DpMhF2oQsKZCEpNqUi2VPwXmgkJfPJDXYpfxAe5trC+q
	 z5eXuaf+3rZgBX2brphjqPo/ENZi+0tmQl7AHNIhrlT67GkyJ6T1EM4dE7cxYnYPWB
	 rTP57JDNq63MyNkMaJPu73AsPZjA+XI7i0t377d6zrCp2yu2dmiWHQviU0o0+E4G8Q
	 ylTWCiJ7izoFCIISORLiDimLwJz6TveEZ6GcL+YYKDZpbyDH5h8xfkCPwX9UlkOIlh
	 60qqZFTI8QR0M/N/rGj0n3OddfUm25tFZ5V6XPSKtlHxHdNbIGentTDUVrRBSRONli
	 NV3UMiagGb0Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCFEC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466451370.7147.10534975200215015777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb00146b124c5bdc3af3905e120c33e6b1d33d4e0139cbc733d9eddfaad0abf
Date: Tue, 21 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784664513
