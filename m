Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDD1274FDF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756558795; cv=none; b=nASE0gMBd9+SvBjQwfphtIwj6eHPLrECpA4UZx91pMW1GqKzXyE5c77ikcPJ91Xn4gLFyjKJ9v5NURsXlSBXyWLI2yAoTAVSCKqI6PPzbpWW8XA/NiiZpISfX+whD+dpZ3G3vHX7+lK9evdzNxg6TMkwBlsD5rYeDcu4BY2u7Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756558795; c=relaxed/simple;
	bh=H6MZobFPEQ2FF6MrcFI46xH4zTY7tVCdcmGbt+FTlSk=;
	h=To:Subject:From:Message-Id:Date; b=gJfWPIyCHcT6v2r08VS+z4iF7bhMa6634rMEvsM2awHeMkn39MRTWy1WFURC168eY6NgDBstokkh716kjQ4kvAvq9V8MitqX8NWeqEyvV9jaXV9kL1g5ucJqmnwQY+9y8Q/9zMjhHjZvpqhxhuhs6F2ByCVVJTqkIOqXp8o/Odg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcdOhice; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcdOhice"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F799C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756558793;
	bh=H6MZobFPEQ2FF6MrcFI46xH4zTY7tVCdcmGbt+FTlSk=;
	h=To:Subject:From:Date:From;
	b=YcdOhiceofnrj5BVNsZEq1NElxG8P87wF01w2tSl5xFGc36H2jd1H9jennWaNkv4f
	 L9j2hBzv8KxitVaQoxWMAiSSk8KT4tPfhluNKqqKEQfY1MWZQOHUIQK2dn3FY8Jz6Y
	 Wfd2ThiIarp4Z0Wu3368QcNkudBjTikca8HXFW0P2t+J4OOvCwGSbdNRmaFRaO1fTc
	 78cfohDC9Dp9h+HGkaAk0yn04iTaRcQ/J/3pZSDlBpmx2pxhWVpmjqaanbY/IzYZlw
	 3X7flj6iUYOJh7UNO+0k+QNrSoxn+5iNFDUwz956XHcPRTignDlK00YInOOF0xFh8m
	 4b/lYTPeaQEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E240CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655879357.19951.12469255932748671234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72760eed9f8734bcecdb7e695ae64a0d85e38bc2316afb670b75668d095bf134
Date: Sat, 30 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756558793
