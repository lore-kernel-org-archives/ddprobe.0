Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CFF272E65
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755542995; cv=none; b=TTuP8LHXrKTR25YO0eiQd9t62ceTKbwJ439mpFsuebiJG20noPxbz2wpdgUusPIxAC4kyxx58DzCfPgBlhgZuGJ5y461LYKBq7G1WKXn8JEZGvmatdAogK0VPJfPl1zdT2Q7RzNCzdxc19CWE2wsC39RMu/x4iFaeBAsMD4Q03o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755542995; c=relaxed/simple;
	bh=k01X1lrngbHMtqTnsDzsxU+MOuGqubEncJLcMIV9EOE=;
	h=To:Subject:From:Message-Id:Date; b=ipnQr9jLj5U6nG3aYrF6Jlj5AvOJFraesj6TjPJQZOCrxcAb/gTV48jMDlLaYOMosWYhWyihcH223O1aluvPu+qvEmnM4MmSKoQYsnq8tNN3EdVWhp+ayP7lrmrzlY3PKiSf5IXVz/ZtgzZbeMrB6HpwpMhLvJEvFhF4t1AOjfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrUzWRzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrUzWRzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05B1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755542993;
	bh=k01X1lrngbHMtqTnsDzsxU+MOuGqubEncJLcMIV9EOE=;
	h=To:Subject:From:Date:From;
	b=PrUzWRzLrSbOR5grE4Emtyz6WGee0SlX4CBLJnzUcu5BZvj+b/EPXOrrvhHHgCL1G
	 OSZzoW1dxe+6wMRgmyxwhguX4WXdKjRftvOsfYXy8gdFogLCamM7sMbBCE82EPSIVE
	 JGAhJjw3MRpnj397gJTTa8wek9gcAOCdMhPkRKnLiwWrwwHW2WHrEM+/maHPHKzB2k
	 00qNF/XsPSHabxcHx+hgcJ6VwiIHr7BuqQSNKlxM3YBTpYCCbOVDlkMT/6t7gNi8ml
	 Lz0Jv9jTa3y6nZfQkmPLxaoj6+1pKLAbaLSfU5Q/Ukp5EllbM0T4ouzrq2Xamhb1US
	 3kBEYM5jQ7dLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F640CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175554299357.13629.2227678189317249387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f1084dea695d01559c05d396d9e6e2b7a2072fca499535d8cb74f9304e8611
Date: Mon, 18 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755542993
