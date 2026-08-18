Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A61F477987
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787059234; cv=none; b=ln79Zel/3PnlNcUx/gpJWUz1CgHWXm1DeTH+Os86eRJAqRUA4CqAFwmp6YaWG0ouSpJjODkedk77fpy7WP/Lc5SmA9+gRsIq4UNTuMujEt0rHogaD73W0vMH33NFoLSxxsxgR+ZuzuACzpAeX4F2+PUbolaUx4kGsfmx95OFKaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787059234; c=relaxed/simple;
	bh=UM9nO94yVM2iSxn8JEm2u3mfPqN5aeo0I6LZBOAOjyY=;
	h=To:Subject:From:Message-Id:Date; b=EHvLjR96Z3bLHYu6qtGlwH5ooMCkKDtiz5yC7rbTzP0bBsjzRsfftTAK61bQqLywst+TCDUcgkFTp2HJ85ldHS5BaAyrDn9eZ2CW1tVO+jhTXfbdNMvp5rBuWazj5gccWRT7P2xrLdzbbXpJ/p9T/vcWbTEdQevor2dWEZWG1ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVugnF+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVugnF+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDF0C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787059233;
	bh=UM9nO94yVM2iSxn8JEm2u3mfPqN5aeo0I6LZBOAOjyY=;
	h=To:Subject:From:Date:From;
	b=QVugnF+IKmghyGlnhhe2A9RbJmiKtnimtvSE+rC6coc2I3J2J7T6VrRmOMQFaeuCo
	 UNAozSAYfyxZ47a5QdmTf4CcsJLrJu9YzcbTuv/+rgHApalK/SUiQdkEwNGR7lijIw
	 w4vvUV3wJ+cfU+zSjqHejzKQ4yoYwptegHhBqrEwRTFeep4BRsrRlDGQd3Y2w8Nl78
	 sW6rOv08LHvZz7ipnWsvxTHiehjaB7JnwccWp34VctX6TTEOtF30n7KeeqZJeZt0oz
	 l/amlvIP0q/aGzjGhwJVCe2JxlrohrrV4uYmfyscDYQZkF6TdEEMQumaGQfs6P4vQA
	 43t5K+9k+dYtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF21C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705923369.26298.16286495268161711970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3cf8a64a346f9c6d7a376353d469e960e25ea0b556a3d7b62ad1b54085efca
Date: Tue, 18 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787059233
