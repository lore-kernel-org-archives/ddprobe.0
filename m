Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6382C503BCD
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788796834; cv=none; b=dkgNeHsqFHNydvEH5CPEMC/likHrVQLdaF+3g44R+furxYb8j9LW35SRMhd9FBoYlDLTnBcoOtb2IxlXWYqgNcWK78LVHzLKvsn6Def1yVNecmp3Mo9mTnAfLwHeIZypszspKAPrcMYAym+bTQu0sDqFU3Qxwj88U4n7OvMnFxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788796834; c=relaxed/simple;
	bh=kXf4fQcON4tSgwD+gg8j1fV29d5COlpsOAmIFd0LzvY=;
	h=To:Subject:From:Message-Id:Date; b=CMO5IiuDzT9BvpUWxLzaG/bfXpkNY9mKqXxr7SGuJAz8E3J6yXctrLd/jRLc+HJNaKg4hPcCa6Gp2bfchjshetNGmmQYnThb7J2EZXODi3daOediLzOz7FS0hUKpVKXlaytDAUElym9yrNCWn7HExJPykBZyuZOJJm7+0kMHpag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3kJEArO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3kJEArO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA65C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788796833;
	bh=kXf4fQcON4tSgwD+gg8j1fV29d5COlpsOAmIFd0LzvY=;
	h=To:Subject:From:Date:From;
	b=Y3kJEArO6goTuP+iXpP4VhjD7KR2xDFnqkJE+hs8Y9PO+Mqm1DKQt2pL+4e6DU2Fw
	 OVivTpPOaN/foPetCau9gZ1jfvnDxtWtw6h11cJbTQ2ADfW9ZozZAWRV4a4HcyKWdw
	 jB/S2aVvj6dPOFLfMOhlt3vgTNPqVNvrYFUbZnc/JFSwHkbmF/TFGJASPykIGzvqyf
	 JqL14WBnX1Az3jLkIM/bt/ORjMH8gFZIqXYLANCY5pHEWAz/49bBp9U0Kkl8Ir3ehw
	 plAoUbd2NDA7X9A1vTuEYui8AJh/RxMBGgI5nLiNvFaahuYl/PR/juVrl7U31Tr1pu
	 scs9fJfdNzlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD334C79FA1
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879683369.15267.15654312105850754754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca576f9d8d4e5ba6516794baa6024b7970ad8d99a47409e4b42b671110dadc7
Date: Mon, 07 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788796833
