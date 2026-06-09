Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F919313550
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781030134; cv=none; b=MOkL+Y/smi7KIyPF3lBu+IMrQMXBEjN3L/vEH1L+ndhCuv1xa99wnejCM5MkiUrPFP4rl85iws49Uwiio83YOlX210DHVWhkryLs0eJ2SIxTaOh3JSXaUGxaG1E/gADDHNdTjiJ8eZ3Smew0ixfGCbL3NMlkWC4TFQt/Cn1vpMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781030134; c=relaxed/simple;
	bh=dXzAE0tDA1vX9cvgvRyrP7KyKBhCnrNzaeZb/Ao0C+0=;
	h=To:Subject:From:Message-Id:Date; b=egJzLNEoPCDB4488PLRdkuG96fM2q7qDVrS6zwWuFRrlqXJEIw/4Bonl+nbuTZXuZVk52rvtFjRiaSKumtrBDBd3Iu8cLGLMPvaavq0BQdbwLnfgo56kNXyrGD/p4BCh2bfwIQRWijup5s33wf+o1MrZX8Cgke7tddSGmUNrmZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG0H58IL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG0H58IL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88A1C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781030133;
	bh=dXzAE0tDA1vX9cvgvRyrP7KyKBhCnrNzaeZb/Ao0C+0=;
	h=To:Subject:From:Date:From;
	b=nG0H58ILqVk8hPuz15vbY8g6wIiKyutVCTVUO+Nz/vFTO0oahPmtX2otR2tPuxIZT
	 jHE6jtG55yrXQ3lEfWqq2+rObhG33UXgrCzcEB2yi0T0luwzZ09mbwaC8/ExCHRpi5
	 o+0D4xMGIL5CM0rTCo/GFyXUpm7RG5eAedZ+wBJyI36qtjTZWwuRcjHxbMcZkCuzR1
	 9aWJXbTFDMiwvR2VoclykpLzbg9VUDrrb/W7m6v3omRB6wwFmbtK9jwne+50P7ULP3
	 h/shx3+IfKS1abQOg3viwRTqwoyX+HS18y7HdJxcGhoTR7rswS5ecWMsZsu93IMNAC
	 91iND5sUKWUig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC06ACD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103013369.5739.5507553708267560615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbbe6cb6bdc532f5b72e380bdf9dc01999fa8137b2abb36426d8e02e3b621ba
Date: Tue, 09 Jun 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781030133
