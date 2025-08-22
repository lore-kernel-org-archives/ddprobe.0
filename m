Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220701A5BBA
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755899994; cv=none; b=i8RKRs7p+N9dJjpJmmZ7QyvGg/jpumaiqaeapr4PmH+L7iEh1XG064Dzd0pIhYyJVSWrfL1Ldbdkr2278rndbUvJrCk5Ykybw3MElepRfIjzYUbU/fT1pwFxw7PPbE554fDm1bnU/E0Mat4oQdmUkJ9N3NVqEhv19x9aPwbCsBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755899994; c=relaxed/simple;
	bh=o/t85fsn2WNt8hn+Rgf0lEdnHymTJcep4omcdJd0dEw=;
	h=To:Subject:From:Message-Id:Date; b=TDV0I7g1aSiCMDOm+IJKDiPsLemzBHShRRea0k45xkcEdqiHadjJ2TP4TrdaGkeKQVlnCm53Js7F6GB6NfagImWeMen70jukZoF+qLoRiB7w5obM/cse0TQ/PLBCJxdUHTr+CsLTO1JF9QH2Yacb/OSAxO44VrnHkHGPC0/uVNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmWP4N4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmWP4N4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1920C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755899993;
	bh=o/t85fsn2WNt8hn+Rgf0lEdnHymTJcep4omcdJd0dEw=;
	h=To:Subject:From:Date:From;
	b=BmWP4N4RRbYH73gy6hMMNpExZlDGyq9RJOP/D0o0QyoLsTNaFXK7cDn1UZKLdjo1u
	 Sp5P4D2cELyldJE+LyMV9FW0+c0RMVVQEXqXlt6KyMqGZ03fggTGRgut+6LZO4/qPU
	 pwlcs6GIiH914jG5OzfWE21qDW10WaybLHHI7AoZW+FomlG6xBmDjc5Hcgc9qnBwGt
	 pGZqNWbDSkHpeq8Ms4Ah0l1LpGlXBO9gluuTztzud0Ideg019JjO0dWqTVFxNXvIGz
	 ggjbBb7u44+JQ6g9cJJGTRr5GHLFnycSePdIGNMNuZHLSWPNP4l9vuLeqclziXPCni
	 IT/OWTxe7TcXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC02CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589999357.18614.4495154192600378096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711e81b24dfe665351239ee16a6bee377be15d7b108d46dedb13e3009d3c07a7
Date: Fri, 22 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755899993
