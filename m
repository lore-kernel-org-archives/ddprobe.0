Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4172C21773D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780256074; cv=none; b=fHSTL2RX87OE+4qDEhCCY3q/efT3HAQWZCdjWird6tqW1HJJ8/Oxyv3tnduCh7y11viwZdvbzxZJ5n9S30T4vrvr6tfDtshpaFZVfEeiw9vb+NFuE6nwsu+mXwdSyVXD/RLExtW+6yR0UiPz89VjZTjJnwRLXCYpiYE73joiDZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780256074; c=relaxed/simple;
	bh=dFWqb1mHOmBh969uADfCaEkgdY4AUJs+YrwVzV8gCa0=;
	h=To:Subject:From:Message-Id:Date; b=HWF+te/eprW28T63T3EwXbuTlGsrJuLJ7ojWEjovgzGgCsNN9ei7Ds/EchySruPugHczHbicOkhxCXKlA9UVS3wWNaTAfi8It+lRKKB966Oyb4Mhhckz6ou5c/k7BIqdkMzFtwf+Bokv5Jh9v+HA+ydj6wbtmNm102YkRZkNmkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+ln2aGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+ln2aGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8771C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780256073;
	bh=dFWqb1mHOmBh969uADfCaEkgdY4AUJs+YrwVzV8gCa0=;
	h=To:Subject:From:Date:From;
	b=m+ln2aGkdLruGc/1EirqXgRoKwtoT9pVfiRBQg3aVnhMnWtMj+rxh2hlS560AuQHk
	 KUIWaB38PV+4fDj7JD8OoWqMKprMnnZJ/vZBe+72hf5DFGSD8vVSCbyKbiVk7SXNJb
	 cmnm4NGEZg3sMOGdK7EstuIML0kvnL6mbWAral0+dbLl+jqjSQi33dxKNzzmMUMoMr
	 EOj7wx56nzyqHPhJJLrsyqXleg+BSn7OkUGgP53zFpCbtJHZdCEKzEg16sssANwUU1
	 qucckZFJtcJ1qAgDuz+FNxtGeDaoRTWZ1moebV6ST78zaxjHHlrGOnRaPymgYJbAT3
	 TRWid6AsrKhmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFABBCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025607368.4970.18220480128611540331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c22633124f3566a6e4368dea9f13aa2ca0556f6dcc57e1f032ca1dc2f61038d1
Date: Sun, 31 May 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780256073
