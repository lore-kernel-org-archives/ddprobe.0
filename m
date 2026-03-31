Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5A43EF0B8
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774964694; cv=none; b=O8BS6vGdk5wU5W268dWgDzv9f5SkQEmDP7+M/mdZTMJCUtZnk2WppAM/3dGiiXcRkoA7uo+Qza4U29CtZh5iuHCGTkaehkuqte5qjeDDqylVhVHjLtVEAKHO93UWE8hFQ6CPRb72ad/NDfm55oJQAdIsM+l6yxPeR/gDRS8ZiqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774964694; c=relaxed/simple;
	bh=sW9BHDLGVAKFg4pbXyE4/RNR/cFYQZPP/ll+//J2pLw=;
	h=To:Subject:From:Message-Id:Date; b=fGncgwLF168IySzpWIJKfkm45VcQ6qx4eRZUiC3Es2EC7Hi5M4gzmJqN4m3QULq1FYdUvYjjaVKKiGk40GAAIDRfEPka3x5c3YUxEuzsuCQRYqt/JRdlhr6s2OkzPLbfOflB3ay/TdA2Xi2TPXwHymMcsKjW5WqX/7iA1nZtUQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ8wDa9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ8wDa9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D9AC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774964693;
	bh=sW9BHDLGVAKFg4pbXyE4/RNR/cFYQZPP/ll+//J2pLw=;
	h=To:Subject:From:Date:From;
	b=NZ8wDa9o6x4UQ2VbxRFAYtaQXxFqX60SpHw5uLhhhDMJN9GMWyhKWj11abR7kQC1D
	 LKenUoXCFzVLO6pFMiRgePkMSLfGGYAtdgY5tfmkK9XGaprf2GURmL0DnJhpbQRkSW
	 9XMCJ9M83AbWuLJt338wRRphjDik9UE03MxTua0un7Qe9qyAQ7Cs2glLpBQ/PPSWjV
	 h7fG+K1bqYBks4LrYe3Y3uTmoWGBlT65VDfSVNaFzNjM9j1lhZsCNfaHyW/FXx4A2y
	 JWwEvFXaGYOKXvyDB0ZtoKLicdSBrOQ5gTRmoFlESs2taSC4T78SKnSQhiNmpFT7y8
	 4OyqBVotgBxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BFD109B46C
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496469359.27125.2208885028626241243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3fc15788a88e4f77840bc63e8e64dc320d7983f9eed03f1f526cf58f291d12
Date: Tue, 31 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774964693
