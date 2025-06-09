Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F293F280CD4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749452994; cv=none; b=BFX6HsvWWUhCZ+WmB2iWsurgEWRmOuRWBtv2RXYStQzgW5okIZipEU3Y3Pl/i9+PSTUikVnje4HWKeM57UxlYlsvsw92kO5F2ZIMWlbRBnpmtlYz4WpLNgDv/t5kyjOspqRXPz1umjREgKTzRdRNzwLFZSQJ8Ff8Fi4eiMp2s48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749452994; c=relaxed/simple;
	bh=R+dOPePGQ4y3rezeEV/TTA6lWozdF+Q6vV/a2zOMcO0=;
	h=To:Subject:From:Message-Id:Date; b=VoOxBITTOdw7zDXoZTEPmIdOIWb81hxlDSvbpMtjHqbLWjvCegOWjHWSBs/VfoU3U6XJwc1Lved2TTEbPXO9Juo70yjArscx4BfUITbqhVxA7d30W2a/9dXBEync6i+B4FoeC6CeAI0eoSpAtKfobnsW+ZdE7MSeZSGnireqMA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1qhjLs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1qhjLs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE26C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749452993;
	bh=R+dOPePGQ4y3rezeEV/TTA6lWozdF+Q6vV/a2zOMcO0=;
	h=To:Subject:From:Date:From;
	b=r1qhjLs2SJVlP1EVu56Xsc87EHA05XljLjKzd/27vh20nJ3IcQcvIsq0GWT8NiBxO
	 bbwTbfXUGOfu8pSGSleKjKdhSWiBebJ6XgwBvMdGmUG5Oc0c7Aw/+Ri5GsBXG9vJ2W
	 bntsADiKusW7Nrwoneos8dzpoFXqbgDumpWsMXTPaJs3ZBivExAFciLAaKwfyd2iIk
	 9k6ZaGi14VhBjn8NojX9y6bBNqiF5s998++/FsIUSPBSksoNl4zaf8dY/yROWF6xHb
	 9NqDz1+ZEp1xtKe2Fk5Kh/2UqJKO6JmZRESpH1HEJGhgafjHn2h4+2Q1lIrFCnFZkN
	 lAqqQMguRbixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEDAC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945299357.18422.14926875478555951883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d6370f20104f20aeec9ab68e51e1cacc1825bc9a72bfbfaadf9dd13172b975
Date: Mon, 09 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749452993
