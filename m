Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D368331A53
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771973094; cv=none; b=CNa+RcX5/OGhfovTACAaDKmhWgIhyFYr5v7Q97CKbia/x3J5o2hMHjDlJaEDp8VaBASoWB92pUBMGhrYRoR7k/458iygb/R0gwWC+r4E3isspzU60/MeckM4HwDbC7MCWGPwdu/0XqWURYclEs4E4vuNja/i3HSVqVZtyr7EItg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771973094; c=relaxed/simple;
	bh=I6MQXP/NnzokuITU5jEdb+pfQIyYI9pcMnC9sHGDAD4=;
	h=To:Subject:From:Message-Id:Date; b=nJJBdi7Q+DQ/k6jeOcqBkQBvwNXiuEa8LPnp/nZaRcEnJg02VCbzMhzO5LJ29Cf9z8yFwe4y7M8nFL6sC1+5GJDmkOaqBgRHixkXb4MAnyY1K9x0YLHS2IQiaFRNBwBzL/RxkPf7VFXWtfy0NVU1Tu9a39FLoDtbW8gfgf4U4NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+BrwPaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+BrwPaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3CBC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771973093;
	bh=I6MQXP/NnzokuITU5jEdb+pfQIyYI9pcMnC9sHGDAD4=;
	h=To:Subject:From:Date:From;
	b=C+BrwPaQDGPAEML5Szc8Kk4cu4L0q4sEuQMM9CHWVsZ3kFu1MPF2alrzW5qnUuRZV
	 9cMurq14eFMG1H8XPD32X7zoGhnx0l2jkVhkeK0lPBk//Llm5HmJ5Le5a3AusBLrv9
	 ueDYlsRypTTQ2Q/ujlfOt8dirjiDGlIaW/EEBmSRfeJtLPeXIimP4Xh1J6Bjaphdg+
	 JENWZNZFMV65rQtxAoX004ol9VJrBgXKuKj72v4x42KG6NQUKC/PYTL0GXUkLn1bDj
	 j0gQpJy0xbP45oOpUw9EVfsNdAdU47149VzOIn0AeLizGhHB6x4b6o6sR+UYWApkt7
	 3DHtuUYfplLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B7F4BB98
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197309359.7196.5507223542532325848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246dd335ad702c6937b8c60066debe41bfda41ed42d7dced8fff78027b3aebc7
Date: Tue, 24 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771973093
