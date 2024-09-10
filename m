Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20938189BA4
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725996954; cv=none; b=aPoDGsl+PvyNxdVA72bBElgFn6r2h/SFCXBKQZrl6v90Uz6+I9dqq8qUywWhmsn747ZfP5Y+RsyN2zTdMdVsHjurV7dqAAR/e6GbQiqJU7ZZ+fRmYl8/Yly59un1Hj1G4+UtXFvzVrNjPdzv8HMGrzxWOY1rYA86hjsn4NnOVv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725996954; c=relaxed/simple;
	bh=j0QyaNzCvtNUJ/aE7aoQj7h1fXXnKkjYgVLMJ5MUZQw=;
	h=To:Subject:From:Message-Id:Date; b=DwGqI6ibKJ1ZgfITygwwWeCABpag4rU0ve8LbuaIHriT1xJwXUJK7TW5LdPCpThQXTLHuL8Tpelnx2RscFd146TIb9V9fRMA2zq3A46szvGngsSz0ebgA1q5uDoItpsn1xSrJfgA94LkGb9rC/fdrFyfnsrKWnLOgb8PnfguUGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyshplfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyshplfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73E2C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725996953;
	bh=j0QyaNzCvtNUJ/aE7aoQj7h1fXXnKkjYgVLMJ5MUZQw=;
	h=To:Subject:From:Date:From;
	b=hyshplfXYyEt3hU/djkXkHu9tsWW+/5zZKFIlvOGb57WIkCSj8/IP8g6HyQIFUHez
	 MIsc7FRVD+PvyxZiD3LpZidfiDzNGtnIIckC7vougit7bOnYTEq3ckmvZjf/c30lgL
	 fU2K2eejW63BP+hyb0su4mHwhafSXbpYVH6yjaeINQPFOamokXOKMcvAFCaX6W92cu
	 gASO8PbJpM7kOJKMzyFY1OhLL7VJSmhP35G//cqOudokraJG1W5xCLA8Igccp29yuY
	 RQVw4iAa4o12Ble88WRkR8gVQ4JBNS6k9lhLqdADDMg9UfAjRe2dzl/I0H2EwoUgzq
	 s74sF2SJGE3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9130DEDE9AD
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172599695358.23183.16923341014908982789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23c1649914a47a21581f12904f144a97487703ebc52bf0f3b0513f50961c4daa
Date: Tue, 10 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725996953
