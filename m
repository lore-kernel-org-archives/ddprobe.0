Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B023D6471
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775247934; cv=none; b=t3xE4dmXj5dQapeO+pvGEP27OlUhLHnXPbHn9maS9RkytCOAskedNX4M9JGmGXiXrCtpmwYSdMrUWzDxILuH7T1K2VQxiYsl8h62L4wr7CBBI4WxCbpb01pQCsCIaSqEN5Ar0bhG1HY1E2xppnkWTjgvA2mJP4NlTG61q4GwTe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775247934; c=relaxed/simple;
	bh=eVf9iT4hVSS658zUXUZO8oKepXRBgiGXyp8i1IRpYI4=;
	h=To:Subject:From:Message-Id:Date; b=RUEXP3al3kxA2UntiJ5ZeOUAsvQH9Xv3gitDv9+mOk0we92m7TRSWraKtSv5X6iXyJuBRPJrZBPl19H+y3t9zozultzpM/FDQ20/y6MHN9hFVnAAp2BSuQ06oqXdIe5Tj2r3Fi0tbF8V/JDuRDx8joLOn7nEUenS15tE00SgNC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmkyUDnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmkyUDnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AC3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775247933;
	bh=eVf9iT4hVSS658zUXUZO8oKepXRBgiGXyp8i1IRpYI4=;
	h=To:Subject:From:Date:From;
	b=nmkyUDnt5dYhYJH2IP19YLob9Zv5v+jHjR2G4Fp5F1JCN209GfjgGDK+gaKOEvUNR
	 5/yJJurd1mLTEPtYGC0O0A31XBap7qBOOgeu7cA1cSFOZt0ByFZNyBUfMj49liwpdX
	 Xp8pkVr4cnL5bUB0j0wq9OnYsf2K3f3+53qmlIVIsUug5+yNftFSIDF6ldEHuMYa7i
	 PP3N2yzD6sTpkGBHvMxdCqZ9fqC//lXa/XsHoN3ta5z/8jFaJJTV300+bBVzQr8Cb1
	 PATDqvUjrytaO+LIJw0nkMTX0vM/IGZwIvutRegpdBuxcZ2sjkuDUEsuz40KbOpngu
	 lBZYj7FKA/ePg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6645E85368
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524793370.22249.13868603219580267467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0a155eec4073991dc81a1d650da50d83fefd9bdb168827af4a396a93a3ae0d
Date: Fri, 03 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775247933
