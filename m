Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB928EB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754235594; cv=none; b=p1vYwZ2HGA3aKdRiJumx5Ua1GnczGN63sSba0x7FtzQpF2wpk8kqqs39fwUQ2vcd7AfKnAuKsxnV6+4rinhpbjjUsedLzD/09gTw+F1QSSOVC5vuWLav8Qp1yzl74jHv3++2zzkKKLkVCGWFWJg0ELXRHe/lJZY/9BZIElcefRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754235594; c=relaxed/simple;
	bh=QJK885Nj/yskphF5BeYQWOsmk5jQiVGze7sQW5IjPmU=;
	h=To:Subject:From:Message-Id:Date; b=CovvkTrD6AwefdvdFzVQ4nm5oQT8I1fCGb4Sw0QPYggMEFfDFlH70o+AhlJhxTJE30u92kyjU53bdq2Ka41P3aspNLUs1R4Ykytk5p4vFAd9Vw09bJNyQLxvHGXS40jp6xFa0xgM0RJZhBQE/6UuihcP+iB7WTzc502D4hqZ5Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMG60EwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMG60EwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754235593;
	bh=QJK885Nj/yskphF5BeYQWOsmk5jQiVGze7sQW5IjPmU=;
	h=To:Subject:From:Date:From;
	b=NMG60EwYDdbZ7j3xQbn8PWOaZElbQei8K5GPR//qQ7nP2h7m+LfZ1xG/X9tUZ6CPm
	 K9SlQDIY6tYlVlXuRPLSAi5F40QfXGg13aGB3bS1rkYeaJU7y5dD/4+dy9eH8i7YIG
	 PPDwIMh720M5pNcfq/aIfYoBvuVPAZudTk08ez9s2+yELDn5dXfD9uCyu/Vl4z8Tra
	 Ks0n1+dDCzxBurYB09IA+E7fprDK7oUpY1t19qKLO/jRujwXKPIowW89icwtmt68Fv
	 K0JM5Wy6iqECCI5aAto9TRSSs+wR/hP6dx+czZsn727fpR8A6n6iah45QEN6YDXLlB
	 ekBaEakbUHBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F6EC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423559357.30602.8767845949000512073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf4f5a48b6e4a28b7452424016bfc6d030ac229ea62ef12e1925005d2228069
Date: Sun, 03 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754235593
