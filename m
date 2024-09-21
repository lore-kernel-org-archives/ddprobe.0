Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7E33207
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726884354; cv=none; b=Vc9IxD+0lRBN6BNIMyTYELi9JZ5OHhlYYGJfLNXDH0uxGq+DLjP3cm1+URQfmtbBxa80kQ2jxvE7AMyhseFSXCfsssRM7xsc3hE4mlfDgC1nBOlZ702nVodenoi0Qe/QziEwmf/jtm/CdpDuRLCZFFNDoEnh97FSqz4D1jrJOYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726884354; c=relaxed/simple;
	bh=FJJLFsYVJIccwoe0cLfJPdinR+PP39SZPu9wxFlBCD8=;
	h=To:Subject:From:Message-Id:Date; b=CuyJTkC1pZ9G7a5AcmMCQ4cjEL0qYZPK668ijHXRl/mk8patOXMZ5nfyvDHWrx5Oj+yFVfcMD+bLKC8qexwwO8nHHug/hHhADBFSZxkUTwiQDb8guN0VIxKN9cfqidaESy40FECcTL0GgUcIaGVqYGsC+6PGkIL/VbnTyC5xmO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eucr4twf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eucr4twf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE465C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726884353;
	bh=FJJLFsYVJIccwoe0cLfJPdinR+PP39SZPu9wxFlBCD8=;
	h=To:Subject:From:Date:From;
	b=Eucr4twfu2A0t2hPWI9yMcf+6zvEAxH4pjcixIIHErGNKmdev1ygda6OrOgdioqwd
	 C57ra7Hr6cufMPjR7Qzoshc0bNzNW2cCm+axxcu/hwhpjBJ/iPrnrBGG5kYhFcD4Az
	 E0/cArYXviocX6HPkyBBDwzoacZ4VHdlFZLFDEdp+tUJMNccVIzZv5Hz9PCthRLdQm
	 7INX3Yp8rwN6TqeRB46dJkjohP4rqrXWn7Cp+BJgq8H1QaSwmsVbZG4KMsfiqzYHhz
	 YuXVjRb4oaz9DSudODI7KIKkrWB2w96C/Q0Jdam1D4JeiVZX8OAsZZjSiSJCPb6jsJ
	 N2aWVlhybf63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94540CF9C68
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688435358.2246.15513402204250319900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a35fc7ca2e4181a564a1be1957ab1b76955d0cc3f0ba74d7fe2e41700cff1b4
Date: Sat, 21 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726884353
