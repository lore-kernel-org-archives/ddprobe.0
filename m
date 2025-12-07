Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B19A13A244
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765068774; cv=none; b=MasIlm7aymmI5IaxUHydhImVCgE0DiiEnd0R+iSggtVv8K/ITwtt6jZgsvHF21MMoGZQQJNSwGEFFex91XHKYxYgqkh7/GWEawy72R0+WNP7TOepam0ySSB0aLqyws6PkfaorwVDWcEoGNIUYndk2RXkW0S79dl2uDxEcpyaLvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765068774; c=relaxed/simple;
	bh=3odXm/hEVkRISz0cLyw9e6cVnYvD9q0EwQKNOErSf2E=;
	h=To:Subject:From:Message-Id:Date; b=jXVXP9CWbzmLnaMvRkj7IfakqKLoxRZ+sc2frnFLzU/3ydSYCfgb8Mjamq8UFSw1nq9zYNsBBQ02cmFG/1uEZXm9E0SaBgRodwqQZsDB7BUcDnFgjirTGGMRqQXuAM1yRUMyIJw5IBhrWgBkNkmFWwoQVVwPAtmZJHNJfaNZTQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC5n6Q1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC5n6Q1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFE0C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765068773;
	bh=3odXm/hEVkRISz0cLyw9e6cVnYvD9q0EwQKNOErSf2E=;
	h=To:Subject:From:Date:From;
	b=FC5n6Q1XMFA66OY3z2BnfFZiMazEBzDrZGDR6KaqKe9nR5LmJQTFyNcOoN5ivs6ls
	 tc4TXcSK2kYj6yXKy2TaAX/drTe/Jb6FbsSdUFq1udCvYrdDXPvUBoprv85SSrA9Q3
	 7rUlXMVf28TH3Rt7nxlE0p0TmGXV6UYvQCYHPNoTLgxOFk48HOKsfOXVNNoXgcmwD7
	 r/asNAuAWB8eRWH5iOMv/N4/5NxqTHcbQ7m1rFs/u58TEIwYIxYafqswFDcczR0sQ+
	 j/mjHXM5QY9g8QdZPSNzUVcLHV89i0uTgjki6JHKUKpa+AMYiDz+BQKlWS2h95uAxZ
	 ggSWXc7ptna2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B81D3B7DE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506877358.1722.17954646807007488503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e8bccf137f2d50d9feb23261ef99d0221b677007c23677a451ece83ac5ce74
Date: Sun, 07 Dec 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765068773
