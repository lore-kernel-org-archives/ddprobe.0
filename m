Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D93246BC6
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756231194; cv=none; b=dxds7zwrC3pjmjE/64a3SRH2pAMkugi/c/qEC84OLFFCK1EUHGc8z75MozOdZ+skUpdeajTQBz/qYVhiaUDWalm01wNkL34gqa9C4W9dpwsHMlHTgDPYLXnZTA0RvRvwULbdBS3GS37lDYgErU8OSKLEbqwjR4XQwYTbEwgn74A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756231194; c=relaxed/simple;
	bh=4poiZNmq41vYzGoFuU9lsVRta6KsdYTCbOR0Qj3g6nk=;
	h=To:Subject:From:Message-Id:Date; b=otPEQWpcCyF6EtWFr0MhkE4SoOtmiarhVkxJ5awOyxSiVLexYP6+ddlMXmHgSU5FZep8+If8gs47COXvoEAunIwKfUdXugO2E7BTE8QNC/KL14DqDMRKGU9hhm02OAOiWfZvIAtSU12Fwsv6Nvp2yNp7Ggk53Y/RGann4i2AOrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGAs8SGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGAs8SGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1785C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756231193;
	bh=4poiZNmq41vYzGoFuU9lsVRta6KsdYTCbOR0Qj3g6nk=;
	h=To:Subject:From:Date:From;
	b=kGAs8SGGJXM3azyaAbvWUOtO9T4PR3RZu0P2x8MJA9k1wlthh71DTbcM49fY/mjEV
	 H7SSenVWyDxviIyqbiV3UgidmpgnsWM5lk9F1pqcfbKz4J/1yR5MB+Qn0is/PlQuEk
	 c2bzvhGYlMqzR2lB4mgFxJqXu24Qo0VLvm7EbI7Lhs6+wJ7L/4EtXfxck90JLni9n4
	 MTX+y1UUNnwPh24pOuMSqZQ+A8FcZ97xvInqmeNRAbS3uwdyW5ijdwtG+cHEjlG98+
	 i2FOybEMOmQ6uofo5wm98yas38APoJhizDHCrJburQoUYj7kCoWPdAqRS8cigG/Rci
	 duqc5ilauIs2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CBCA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623119357.18181.5027930080657027622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44cf2afd307a0971efa245eab0eacd3427cb9eb6eca2ff13bf167cceacde35f3
Date: Tue, 26 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756231193
