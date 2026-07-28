Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4053B41F35A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785228634; cv=none; b=kOvRGz/nAAcyukF8GnuYsBeF7ewxdsbNCHQhmTEpcTzwj8Zlr8zUEzR78kw1ZY61X8Jn1VaedMzA8c5aRv1KRM/uvAM2YGRdVHBHF0ZiqBi4JwX5BQfFgdM9+boFb04WZQCZ+Fgj4INZOckELY65fIbOvBOMoMtEjyxFG/m5H9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785228634; c=relaxed/simple;
	bh=7LVxP+LEB/azBflNh7u9XT2MNYdiKPe5wCkb1aFh28k=;
	h=To:Subject:From:Message-Id:Date; b=L45NLDUotmuq2hWhNmpmA7044mmfE+tHk5LDd50EbwUHq4kkxv3R9cSadfJyD46i8NQVv765T4EJn0E8cOrVw4LATqTHX+Ghed5XBXug8kujt8yllwsKkbLc/+fbUGtG0P+gUEtBCAHAOkhSdwZXqdRlIqdsRdC9d35XQuVHlEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNGUoJF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNGUoJF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A86C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785228633;
	bh=7LVxP+LEB/azBflNh7u9XT2MNYdiKPe5wCkb1aFh28k=;
	h=To:Subject:From:Date:From;
	b=UNGUoJF2SW0gQcRQz2ExFor8jhkvHJdz9SxWu2P6GXYhAk1W7cpLxCOOvTKVZrDK7
	 QBxt49cojOvJcAQnkOzQDgQN51pJ5coUAdUMnBQH9QcHoKS0ynK94PrDXLMWobpH42
	 zeCLbz05ZGcrcqARMlIUTR7rIUixYSius3uhIvdvk4VHVh199AcAb2hXuk7Cb9ra/w
	 DLXKT33YbTcuh+NHa/hFd45B1UWWpGLf2/ZM3GBWhHFfYpfoyaAXztVTHIxuVplXib
	 igsCwX53GkHEZzi2TKCH1JFMBzqFZEsG9IVppBEscfn/q1e00O4VwSVaQZQgn7Nnhn
	 km7XzaY7+lJxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD00C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522863369.14360.17830176103149184438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e039d512f8560f09b2ee7d8e47fd6298e92948a800d25bcfbe888c98bda861
Date: Tue, 28 Jul 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785228633
