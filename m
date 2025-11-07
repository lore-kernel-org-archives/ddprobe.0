Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29EA332EBB
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762534794; cv=none; b=ZZh/OOnpPGB8aAu7I5o6dEppCtsVhowMaaz8flYjJUv+hwaj9apQIU1VePQm4fAgtsssBw2CgvErd3C4gsDLdR9lcos9TKF9FnTjGcIa5FKKm5h8fy3LXbEkDuutz1prXsxbXvvwcPzg1b9gr6FBApU5DAsqXjuhVDLyLGFtMww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762534794; c=relaxed/simple;
	bh=LcoB5S/TfE315gTmqzU/2XACXR6//rG+NUkngxzmdFM=;
	h=To:Subject:From:Message-Id:Date; b=MdfHxY2jLmkbMETyiI7NSPQg9i6JBNSY6g/pnq27fSt6Xs8yjGk2a66tibxTnTz4m2swgvvicYoflxPMjhyXMCMBCJu4hUUExGCYxtqBHoRvo6ebBSTTrLFYVwGPr/5UYMolYEiWNNE/imIuJykreVLLDuU6WORwKTfLtrjtXwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khmVJqhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khmVJqhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1B5C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762534793;
	bh=LcoB5S/TfE315gTmqzU/2XACXR6//rG+NUkngxzmdFM=;
	h=To:Subject:From:Date:From;
	b=khmVJqhcvGM+ln6OGVH+db511JTm9CQsudAnokEvYRU+D5UrHUeVNnjqFUApV8vcz
	 IwEbDBQK2mZvJq3bwEM7G+fzq75FFC5ZyDhFGqPnV8fV2LWhh4O3lir0PwTthXHE8K
	 jLr4M2F+2n6SjcSMjRqRLouoOmOikNhwODaHDHGP0KpqzDKaEjVizLB55dMsojBP3b
	 uxulerx0KDidr9/ALn/I2wk4gqUJqsasX+RIEcNWwMEWzjgfNPv1BUmqQqIaTACsYo
	 qYtjQD+E0pyxFiMyG9/MCj/MW3Bq7hISzlpJ63i/4E971rkYo410GPlI03QaCM/DN4
	 kFC0OX25kWvWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6C1CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253479357.27739.615157168780608506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05065d8f1bddbc753e81181fb4b2e04b8b172af4253cfda492f206ef27b92fdf
Date: Fri, 07 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762534793
