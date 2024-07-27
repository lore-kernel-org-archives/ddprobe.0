Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD5B469D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722054354; cv=none; b=LrwU4QPOth8PqTxxvPtARd6p+jbfaot/i43VU6shMIRq5vv0GJD/NS5IjiuBYHRXTn8g+0LuyMRn0rvB/oJ5IfQGkTUIhJeuEQFolfc1L6adIe3OUjCzBndZkNBbw0KpFTmrNtFUboCErfTxux4xhVaGTa6vsbovvWlYjyk65ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722054354; c=relaxed/simple;
	bh=iF6ccXtJ+NdJzymrLbkydetPWW9kTLyrOZGz+PMbqzA=;
	h=To:Subject:From:Message-Id:Date; b=q614G7e20cCIAq/Ph6qMT4JjHfm1OKJEUVtZT2XNjL4v5XjIkM2r2rv0qs0LYYtADFA2Vgm7gZ5UWnEK2WaZfVfxlDAupEyWP/ZD+ySIrk90Bd00OdbSgMSCRUTlGtA/chc+YR+92CMXlYO2hbpp+R58hI624gZ5mbUuiaIofHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hR1gsXfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hR1gsXfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC218C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722054353;
	bh=iF6ccXtJ+NdJzymrLbkydetPWW9kTLyrOZGz+PMbqzA=;
	h=To:Subject:From:Date:From;
	b=hR1gsXfMTVoJAi2bqpS7fUplM+QAE3A7T6kLyD+NLLdbz3vSQTrru+TDYpOHPLGvU
	 j68wtjCx6SIera4ZTC//yVa0ybpJGe4hE1VvnqrZ+OulqWy8TYe2F4d44P2utX99eR
	 KqPTty3GB5aV5YnMz93fYzyJ/DFOeayQBFtWAwdviFUUVKt0fPFA2wMJW9Migwj3Ar
	 aHbjdBu1V2TnXkRlnZRBiR3+O10bFj7EulcwXWNThZL1sobtEgOkNR+8Bg9a7+QYDw
	 rUhqDgtGefN1J7I/FyeNLsYjWzMC5AD9f/7gYtIdB/f1WRXZCMlNj0WgTCRCRuuhT/
	 7R4X1jg1YBtww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E88EC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205435360.2317.16330994919638970371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2ed84d486114a6652e39a2180491fde515ed2d8f8bd73c5900ab2522738e184
Date: Sat, 27 Jul 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722054353
