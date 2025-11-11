Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17ED12206B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762832994; cv=none; b=oWDYiuxCD40eXRSaWbfcEfUR9uFQYZMMmcTeaB+gGJcjMjgd+hAkjvNFDJ3xN5CaZRO6GMykV8hNgI9iw7fdhXwQJJJsifBtoEjf9h8OFm+Gpd4ZfzsMnQ9r77o+2p7SJEABzX0Y0MW/dko0PJCKysGMxpT5i9wfKUvsPGB2mFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762832994; c=relaxed/simple;
	bh=zqKyi7qmLOmf4702WDcWs0t/ZpQkY6RXiTSVEKDgksI=;
	h=To:Subject:From:Message-Id:Date; b=PsNPZio5mScC7DYIigmo7vBG217RL0LMuL7Xzcwv6gHgl57ViLlCugFtHWXNHE+wurSTF8CIO43BOXKUdJ3RNIfeelWllX7SPDbyXTqKbdgdfDUM9A7bIHFE33TW8SXKfEmmQ7ahGnonLC8oIVlgjpnhLMKp+RtOc2A4aBXzNqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgrWw705; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgrWw705"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E83CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762832993;
	bh=zqKyi7qmLOmf4702WDcWs0t/ZpQkY6RXiTSVEKDgksI=;
	h=To:Subject:From:Date:From;
	b=HgrWw705Mj+4Gp1tRXRcacbjs+ow/yOYYVL4/PRnOmOFngGeZdMHUz3Losd5FiI/s
	 Xcf3LRxTU5E+qqYey4fGsYHH9bcCphlnoWifWXPHO1lfUC/E4JU9GiR/OgtvP5thAx
	 MaLv7fn2j/Xdlqv+lBoXEg/UdZXGu2Y/0mfLPLhjYFkWqK91fcyS/+B/woL/Jb4K4t
	 3CbhdbEQIZXtXmlCDoXwBPyKTWRI46zanIaWWUQ5iV+QHvVRwIZTCkPX5Komh4wvkV
	 DJyPIjFWMAO3c36je4HqAO6dF/4ypPfPX/q9zMmOkCnAbLCH46IYu7nAr1qMANGNo6
	 K7IThDm2KUwNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208DCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283299358.31416.11350700865910368252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5668ac1fb213877f15bff0efddc6c7b71ae4c72d2d10aa8bc69277767b9c523
Date: Tue, 11 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762832993
