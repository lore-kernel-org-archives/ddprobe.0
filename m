Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B5A3101D4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756725594; cv=none; b=Qzt9rI68frkyT4PGI/fzuBDLR19cd+YAVv8RXubZ/FoHzWOMLFMD9iTuH/8vEXmdvU9td6xX4AlOIMMJrZa6AcMUUZzKJFn2S2YbQnFbUQVueF3RxJGFy7rL/AKuBCsqJkQx2RL/HJTM0bsgQECT7PV/SMw/SiKygda32a0nXYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756725594; c=relaxed/simple;
	bh=FIZ/ZOnKlPg9Y0VEnYfXpX1gsWrx5ukI8+ZtiNitZO8=;
	h=To:Subject:From:Message-Id:Date; b=t1Fsk8QNcFtvILbbEk5B6sUv/R5Czn5EPv/JcPgzmEcVbuxco2bvMI/qqYLWLPzZ4UBux7zr3txv+ccvsnOT4kF2G0vc+J04os/Fo3Ry1u1jCN0UjN0thbt8ppLRD0TUJtBQg+LdQLAh2UVxGOE50RnPjX4oSOFl5QjlCYgufR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SC2fbV0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SC2fbV0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2178C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756725593;
	bh=FIZ/ZOnKlPg9Y0VEnYfXpX1gsWrx5ukI8+ZtiNitZO8=;
	h=To:Subject:From:Date:From;
	b=SC2fbV0q4G3qv6ZfqtFm2abuJE/1Sun75cR5kjJHTqe21YvZw0BID7ej2VUEFYnH+
	 32hRYNuFxPDx3Kq8aS0+3ywsgLWSP/bvl3G+qQxDksIyE4V/EQW/lphtg8o+oDiydc
	 d1Oo8surMYrk0D/++TUFgqxppOJhyQLrITXdIx8WkvwoiEVGs+RB6vonDerXz6q2YU
	 8fpg1PSQak53CisMgLM87nmSMDQIz0h2H1C3EZSWc8RWi19o41yHhCMcVZmu6mTOrM
	 CRqIxp6IXVn7cmPk07Xi0g6g4rgZxlyqb/GDBLKhtMNXna/WnK6zHIKRc8Cdne0dAk
	 VGZQSRdZzFsXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90033CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175672559358.23611.540692257374257335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a02e2c596b3668216e3d82cd524711616e2dd86a86efa26c690bd77ee99a12
Date: Mon, 01 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756725593
