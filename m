Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA91427A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764740574; cv=none; b=IfXDWHkfAizO2j1dUsvRGmCYMRXVg9rwAcAWdRBDuHVvvjyAX+ZcZQxbTNKw5syKoBvPjfckUlHv0pjmOSayWc7P6PI/qLueMyh6qicJDxYVgJ9sMo8wf2dFzKFoOXTPTz+F2h5mVPOfGlEeJbrct64lRTQerfOIPJChd3LZS1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764740574; c=relaxed/simple;
	bh=vIiSJ8Pfo0JQrWqXam4wONpoF8JEVuEkxeDX74I88JI=;
	h=To:Subject:From:Message-Id:Date; b=t9zV7ZSedvxcyWaSDmqPJA4VhSEsu1ejAc9+UE27s4J1zXP0s2tkRpST87cRzadOuWIx1mvmc3PrynHjcvLAGcnz5/pZVDTKBWFq2GKKsPqfnpu4DshR5SzZ+zheEIAU9QOJq+dVdUMebfy6oNVFSUgqkR27YBJ9/EaMAfUgyWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn1kaqTg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn1kaqTg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD0FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764740573;
	bh=vIiSJ8Pfo0JQrWqXam4wONpoF8JEVuEkxeDX74I88JI=;
	h=To:Subject:From:Date:From;
	b=Cn1kaqTg3I/LY9msrnImGWKdkQ4W85MXR6pfDdgdO+lTsi8K24rVdrW9FjJ94p2PJ
	 pdHPE6rJIUkDp7oZFmjC3SfRJorL1PONREMHgn4FRuWM34nt9lr3YbFQ4eajNJ/FLc
	 Pl6fjw5+PjCVBXvAoI0ixpI0yo7mObWIgz3Q5J9m+qlcyIwZljWmj7i6QwUWRhmVe+
	 HN/GeW+G6Yb6//i7+q/1Eq0IxCgPNwKv+G9Wnb1ytRSuP0nRjH78xC/ONRLfTUl37D
	 8EafIcxWoea0NNEIJQBoqIozGzwV7X9kJ0+STEAaYgckI+4sgOzmh4eWK5SNAId3X0
	 69FycRKbwOhjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97625D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176474057360.12123.6269589551637045158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86220209d7266eb2067fff8d5ed49d5d83b50ece642e83236558ff127afd878a
Date: Wed, 03 Dec 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764740573
