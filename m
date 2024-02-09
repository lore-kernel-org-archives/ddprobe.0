Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29792E632
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707498497; cv=none; b=VSw6lCc/I5pFun5t2e4R1lOaIKF84aIeF+RSDiUe21UaG5OOTYvb0Je4otGB/fTwrhZDWiV6iKw/CnjM90qYCCzOVZq3S5el7AcxC150DB3Ccv6hxwfGh8ltJlyMf01Ke6UwLveOoVt8sb6AADWMovpD3WrI0wNgjyV+R7cV2Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707498497; c=relaxed/simple;
	bh=tSzPG3onVT2EgIfpKN4Aeu0wkjSU+QkUueiUmlBGRqg=;
	h=To:Subject:From:Message-Id:Date; b=V7BRLl7fWCBw0BdCqjniDriSZq0NETA7PSPtU26SBN15hqzoS4eMXSP1bRGM2sUaHgHoLHZfVRvvnFIibbOAuahYK8SFif4qwv5vxxshGA0fcs+8qCMgepiPCsjePJXeR2LbFLU9dLMUHYkpTd7aYt+Tnlmdd8ovLSQ1S6JCa1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Damr7A1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Damr7A1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782C7C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707498496;
	bh=tSzPG3onVT2EgIfpKN4Aeu0wkjSU+QkUueiUmlBGRqg=;
	h=To:Subject:From:Date:From;
	b=Damr7A1fm7VQt6xPe75HaevYBvf8dky/j4Yv+yAff1PEtDuj9wwFksKfrfzmA1a6C
	 QIuSmNYuCA53l7tEaYOAkjCk+CbhQGZ+jT+GOqRq87d83F5Tvs4njEINVBeZ3ttE0B
	 ObjF+iKuXOnr9GoIKWBfVEV3BOzDK+vD2V1TYZNsPNHyRTUWN0bRWNuq9PZ+ATgZna
	 yyPBye1QTFs2Gvd//jxLmF502GBpiqelsukivy3/7Dltt4QCPZ3bUPySOXKCteR9ZG
	 7tLUUV37mJBTSSDeVU+BG8G8uXPowqpgQ+pOJ7kIsVNHxWWRlCKEe0psWtlS6w2pCA
	 ckkRkliZOtCAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60578C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170749849638.32040.1959841917547208251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef21cc4595a757da3ef1e2fcc6826a26a25e2f6306fc7e9f2038c70e51a9edef
Date: Fri, 09 Feb 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707498496
