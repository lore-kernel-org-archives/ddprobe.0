Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750C5402420
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787571634; cv=none; b=KbUissIE89MhF3WghIV9991gHSfwgBgA1COPwlJOdOzHFQxZtIx9g3RlqTxR1TKflFxS1G9QNop5igpAJ6e8Z4yeDivI2hleoI7n8BTJg9E+r6GDOIsL6chJ5QdhSAdTfD7I9FQuQ68Pn3owh2PBFoVk4Gc8wXCf+bbLhIp86o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787571634; c=relaxed/simple;
	bh=7r38qCi7uRzr1UNaPdvyDgaP00i8SJjPbFxDtTDkOwA=;
	h=To:Subject:From:Message-Id:Date; b=TjtKBTQqOChXwu4/XchENpzK1UE8rzajgMbKYvzRk+bUX5J7iM0N/6WwRsI+dW3qovslRO0qJJGTWLgxk3jf7pEZfZvff/tHEjzhDyLT2nsAEUdg9c9xb7If1C37ngyL0byfkkLNO4NxpsIMat4ZSgDg0aZrjiM2+shqyb5qJXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhT2n2oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhT2n2oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D068DC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787571633;
	bh=7r38qCi7uRzr1UNaPdvyDgaP00i8SJjPbFxDtTDkOwA=;
	h=To:Subject:From:Date:From;
	b=dhT2n2oi837+jYVJd6hSWRcQYdNOwhaRoIZfb3shQhsFXcRZMgXRmaNE9v6iZivsv
	 wPANvMm4wUitY9UJ2ABfES4sPynGcK7pwgM5WopzU88BGfLwAgoCKbIE8EtL5vMyKN
	 qG7H3DTLKrrkVGflVRXZYdgSY+9tuBwqBZ1A0sorTHgHcw5iUDVbL+XxTHPkiLljWS
	 fCveUtYaIn8rhdWVMNUBJ9KCWPh0ou0srcjX2Mw1fsSwS1H6Swb15fXIX477TSdz5g
	 2Ix1ODx5KT17MKtPpF47DU7hdv2M6jEhCR21XvU9Dqa57KxUM8FszbZC55KY+EbuTx
	 jLVDv/B7pCt1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAFEC5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757163370.30554.213973706664181561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c589ff66a64c6b7c1059f09bd00e1394508f5513c82fd7f41c65f83fe4307c67
Date: Mon, 24 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787571633
