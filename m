Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EC81CFA9
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714041683; cv=none; b=Eq871tCR+xvr/q1ugP02vknfTkB6oIeR/T/t32fPMK72z7Fel9SU0xDperpRTfPR9nDPGQ9s9O6UYQtbmWzePXbI8j32nwq/r1/bhAL+ZwodGCOCh7ofSYqVCK3OccDHh7Ct1cYLkGbBExAKDEF/c1sBSWUqZ9cvOLxXq2RgoVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714041683; c=relaxed/simple;
	bh=2qTO/CeHo4IRqgcJwNVK4kGiP/ufYqvzEM6TsaynkfY=;
	h=To:Subject:From:Message-Id:Date; b=WrMmTLcXtCTvoXMwjiD+yBKh9Jy8MuFv2p6aENQeN+IqHZgWP0BwjwSA9sQeiok95y9p7WGfKv/fimiXLkCL8xYDa3ivpEtXTxa6TeHMv2CvZzWguv0hgHA2wRCWT6TPM+xg6g6d5y98+8bJfNpAwxheI+Na8+VUlWEV0vfXrgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeUCwg9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeUCwg9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF340C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714041682;
	bh=2qTO/CeHo4IRqgcJwNVK4kGiP/ufYqvzEM6TsaynkfY=;
	h=To:Subject:From:Date:From;
	b=NeUCwg9tdv4bCESw+1NwYnz72vbG5iqkAIuVGBvoUte/PBNe1pPOqfIIjmtYK3/PW
	 +rsGHTOFTJ3g/8ml4hHIC0+W8nboOH5GEKPLuMOg25j5QDlT6wc+cakdN2ukbNqcid
	 aZBwGARbhW/U22koBO4H5vhVAewRbEbWptm4QW11CU/7Gao7JogKnBcrO63p2iR6No
	 zHAvLZxlaT4QNBV+/xH5KogpQltn3ChLZt7hMvwge+hkWRFaB4UEp0k1W/WI7fWNcJ
	 JIRAhvprtRcR0scX2ESpGQJAncAula6r94e19IxLUxgWUPAu376rA9HxQYduy9zg1f
	 zi/a9qE0CZmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA11BC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 10:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171404168281.18049.10019124513006941365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f819e24cd1ebd6e1695d491ec731ec36ade2ed868775cd5cac591994128d899
Date: Thu, 25 Apr 2024 10:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714041682
