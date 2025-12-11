Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E0B219E8
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765479774; cv=none; b=UQCMhRq9oEVPeFtzhmbfo0WzNtFjFSCKIMVtnz3W9VYdT9CwuQI1Urzzgt0O3Yve4MfF1sT05WYmNDgdRklzvqK6wLrzsEJuWLwXJIfmH+VBumo/qhOdcMoDuVOPzO0kGEt13xErbk2LtcgWTyaCQm2dQhZ6WFiDwc+izi9KpUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765479774; c=relaxed/simple;
	bh=n0+q5OwKSYIFltE2k+qmtXZrA5mKTz8q8G+r80g8eHg=;
	h=To:Subject:From:Message-Id:Date; b=qzoIu0q2/0PQEODmA+C+anS6zbhETLCdqt/kOKdc39QEq/tyGpxvQ9/LFupQkSmqwAk9AyRc9/elWI5VfB5TRd3JCdPTwZZ9QLN+UfjNMShWNGoo/hm52JXJQj4eznkJZAokTxcQzbamwSGCy3P3Aa9h0Fijfyu2QSxx60DZTRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W48IQkR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W48IQkR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA32BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765479773;
	bh=n0+q5OwKSYIFltE2k+qmtXZrA5mKTz8q8G+r80g8eHg=;
	h=To:Subject:From:Date:From;
	b=W48IQkR/W87AWPPfoId2+AeCY72ij0XnY49RCLaiWQBeTROBGgxgvfJ6B0YGCO1Dv
	 h3L8QLzM+Y+2g+UfufxulDRh0FCNeouaaiL5WcqF1Kfz+RvVhf0gw2HVrHo8XNcJrZ
	 ZvgqtYeuiChMIgRLmkPdSQTiw2W5Vx+6vssVVNFyqH9qB5qXIZ0rW6bqFCrt8ptThO
	 rn8tVF8hVkOz+8pOfDk0vLnT4MoeAmZ1b71zYi9Q3yqUUojpCHjb4wMyyIB7AcQsrq
	 uQkTTYmWZHyjTdve42iEyziSobSfMBP+gcAiDKCEKUdXXG/8DAcnmd04A/7XMEwOdy
	 MZ9hIznpJXgFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7173D41D7E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547977363.8256.18418398925963453886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbb2107d1d0ddf7626d7fb0224ed8cc95479ee6820e8ea7491c2322e7abab80
Date: Thu, 11 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765479773
