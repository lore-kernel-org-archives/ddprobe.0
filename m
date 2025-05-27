Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE9BBA38
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748315994; cv=none; b=WHk/Biy/WTeb7sz0wugkfyRt253pohY8JOFLHjANzl78F9zVsmS/MfKp6swR7YaCgyBnhmX6pyaGXssS1s9msDU7AM+nZNALETPY87pNmsYExn5qEHIx7M1vsIaUOAA1J/kK/sngMqbzyOgCdt7oUSf3FbsMUtbp9vvXCY164Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748315994; c=relaxed/simple;
	bh=fkj3Zw+knW5Rv8RFQSPDtfZnK1zvwn2tRAQo32WFOOU=;
	h=To:Subject:From:Message-Id:Date; b=deJOk/6Ak2VION/PCKwF/JsFtd3AvcF0feCu5XhgkY80MSSeqG7FGL0o7pULRt8MnZa9FV+Ibl25FecmE4pcqk+6/hibMFENyuubstUpqRn0IIEx6Bf67wIPUn0Q7U6Akk9DBnXlVpRH76G8IgVFZ/WkRhEBKxvakYcaXU/GDx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m63w7z33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m63w7z33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1252C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748315993;
	bh=fkj3Zw+knW5Rv8RFQSPDtfZnK1zvwn2tRAQo32WFOOU=;
	h=To:Subject:From:Date:From;
	b=m63w7z338FzInGhoT/dzl199aVoKriIbXzxNRTD75rv1ZO/tW0SGRzJpMUWMNlWMQ
	 14/IQv12Q/bn35D9y2dHDSarG/LDZnvzogHrMSkVLmDu1UhbZBE2MgtrGgomV1MI8D
	 OUgkI2zBh3xpU+QvqzSXiGgjLA2JtWMe65Ye0t1BaEy2Kh4YzBP3fS0eaCvDpcZHoM
	 ZMs+ccC03hMvUxbP+Q2QGx/oAvuf+5ExiwqMVN2yIlL3HFaY/MZuPnqLn84XOgvuPu
	 Y+3quHZHwYqUFv33ROg3n31TOSMJW1SoQINsVimeSBTAQOrV0cUJSJnc90fWXkLruv
	 egxjp6ZWoZgmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCC6C54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831599357.15739.9042105802359075734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c810bea473336d991ed2921fb07eb02e1e614996835fbbc1d436eaf317ad2822
Date: Tue, 27 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748315993
