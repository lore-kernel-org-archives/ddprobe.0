Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CFD178372
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775956654; cv=none; b=rnzSi4qaeHCcEaxWgP5ImqMY7ItLsciLbjiflVMEq/1HLRF6gLhqTM+p7dLCtoehsOlheQ5gXKXemJgJRiDpJDWWZOKkRPlNcSyaMoWuPbs8niZNFLCfNhQcanjn/4t3RPTcrKMlg9ifvaL7cc0uvEiN0D2+Tw+9SFR33ZuAX6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775956654; c=relaxed/simple;
	bh=S5RRKUfyrPif60wz9prmSFLdPpdOPLss39v1sYN1GBg=;
	h=To:Subject:From:Message-Id:Date; b=TVaxZvIgSugcDyMcRSr6WzTMliyxZU6YcYH5fyByJ7Fm8nHgbUy1y8HfGhAWIPe0feD5CJoNYTK6CdBdBxiocRwXKYRexYCmoyNN1P/MSkkisoHPPIr8kuAbw9sNQIvwFfh7nVrtzbkHl22lVoeWhIFtTMZxfVmFll/RJ5joyGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxqV7gn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxqV7gn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41ABC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775956653;
	bh=S5RRKUfyrPif60wz9prmSFLdPpdOPLss39v1sYN1GBg=;
	h=To:Subject:From:Date:From;
	b=ZxqV7gn+d3MGMM8bo0LvvOmQZ6ie26C4Ls1GPvw8f+DpBYvhnyYFmTwDj3ZztWg+i
	 SAH2VAw5iK5O4drnZX63Zn+5Yh+nwHqrm3DakU552EgkkmJ/9UTy/UccJ8NXZwGuq7
	 MkAZIH/qEglMOEPzeO5ewi7/RXmbWYpWIAc6YMkSuPPj49R8xef91g+rHOcugP4vNx
	 ljdMzpbqwr5WF+YBLZUaTNJ6vSqkMObGelPYnh3CKnMrC/YDoih6ajXwe6u2y2qsrx
	 h8dyc27E+UDxOfSdC0dMSxdpcHdZP54NA2HZxcWf36Rf5Cs3jFLwGkw3Ay93GoMiXL
	 UErSwtYTT6azQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA276F3ED6B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595665368.13592.12908001371598920038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f545a72fa0db802f109d2b478c80f39376d353e3f17d21b8d4c84f8841f23cc3
Date: Sun, 12 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775956653
