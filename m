Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A821E7C23
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763829114; cv=none; b=XpYbfiwSzIhnH4xU8aeYNce4mhPGU0xZzTfACk7GME6oJ6wesTW5XRwIoi/OyMC1s/zkOtEyo0VghDA2VGjJvDnN3zH/S0REr/uy0UsqhZ9Y+EaD9tJlSnNs7kHiR5+vveZKpHt3T4CPTSrbow1FKN6maVD2npiGG+kAktb0jWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763829114; c=relaxed/simple;
	bh=/6kFKcMwzWbgSXpkqE4SlN38MqxEkrbYBa635V/yy1o=;
	h=To:Subject:From:Message-Id:Date; b=hLRu7BEpobA1QItJr3ssipPY2edvCqn46/VzV/36Jt22PJIS2aJqUdh2YwS/ITkrYjjsAXaCXYYEpYUscZzi1UFVZt38uYVW1x9kNb1kcZHATQrAs1PHUgRw4hX+NuVNO7XvqCNBs92DmF4TJbRj9vpsseBbgbdG87V2aiNY/jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqyW66Em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqyW66Em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1794C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763829113;
	bh=/6kFKcMwzWbgSXpkqE4SlN38MqxEkrbYBa635V/yy1o=;
	h=To:Subject:From:Date:From;
	b=EqyW66Emh8AT+YinmrUUQoNrxg+mSodyV4FZwCbHjNF4HzUxXkqe1T6stBoBl0mtw
	 YKQbggbslQyRRulruWhxkrs4+MuVRO78dt9Wv7AS4/mH7NmOUyV22MwpkhNdGtXhEM
	 Ax32yX0A/0yOkHSG1E/oU6/dvrFtcHd9P5kTf6hQCHK7mzdau4spK1w1cbZwgiOZZl
	 pVIsRENAOOZBAp+Pr7BK0LoBknOvnNvcBVlx1W5zTS8gFh5Lbsa1QN3BNTazthSoTG
	 +x/X5TYkP4NIW+VsJiVvaUVrXztOJc6XMOggMqeQYc9k+vvocUD2K78zjZIfGK8RtT
	 8MPCM/EDWetFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9707ECFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382911358.29245.5128190740435106638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95b060ba7f7a16a6bdeeadeebc5a6122956de113e4f760735d0d75ac5dafc6b
Date: Sat, 22 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763829113
