Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD11DDCD
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775544334; cv=none; b=GwOdtOcnGfaEmtx4OlaMyubCIvaM7QQG4UtiVbeKe/yd8/6cHMshZKLSe5go2gLaF86nHmV0hMgkN4wMCTU4vSJ+9joY5RwywCqRntp8uSoxZxSk0F3X/IQW5QGa8Ba805vgiwonasH25dbdE3KI07g73HZZQcns52ZVm4ZirBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775544334; c=relaxed/simple;
	bh=HPHMNFat/BmLly3E/JpVmW352jpGi6n71ZhACYOdA90=;
	h=To:Subject:From:Message-Id:Date; b=ba23LsvQ0+eD/P6ISrtvDz8grLSKP5or6JyYfv95lUvibqaLS+ydXN3dOou9mr9zQavB6kV/eLrnCqfkRVe+2eRpe+lhIHK8oZa661ySIvsWAcXaX+zs4DMo0nn7YK0h9DSUp4CibSA1wbcUISJWDaMrz8Li+YO8ppoV8PAXW3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JT8pZWAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JT8pZWAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F2AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775544333;
	bh=HPHMNFat/BmLly3E/JpVmW352jpGi6n71ZhACYOdA90=;
	h=To:Subject:From:Date:From;
	b=JT8pZWAmtMXW7E07/0ZQ3fJcX11xcBywwc5BalseXsXztKrYsyxF0OFCo3x3Gtb2K
	 UTvHBTC29S4TssJHOhvcq1Qni8yttR3/3DGlak1CJS3S4RGJBQfJsBElljj5LGcFlI
	 Z8hlmT4z9bL2BITF/OCtFg1x/Y/aLSDiqej6b0iwxlDSh1c8mq5K608nZI1puZWnqj
	 Jl4QPa9cnn5EvX7T5661Sn/j14H9V8JIsk77n6U4/a5ECC4bP2Mfk4gBbXvVq+LA6c
	 yzkGKDs+bRdA2CPtQvFlq9rb8AWlNFdpwoRQgDck8rilQyGkwm481yURFTlMCHMyt3
	 NFSXNO4LnVRJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA545FB519F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554433368.10138.13021445058265590072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 461d9e73572f34936dacf2b508898eaa4eb5372d8c3b5b7791b6d4cc89d5782e
Date: Tue, 07 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775544333
