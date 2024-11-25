Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216BC16EB4C
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732575354; cv=none; b=H1WiIiyRTclL66Wo4Ugo5eguMicbd793BAjToOEkvRYVPuVwf92u4rjvV56fCt2mokGPJ0MD23t5oklgYwQ0pFf5TrjTIfhH21MeztAhRdgrsnRG1+hFbuz/AztjTOjT7swc5ZwK6dV1kXdZcQVciAf+qoSDuvXp2ZnjCEv32qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732575354; c=relaxed/simple;
	bh=3zcoSYmLFhv3RZd2gqTrlgCGKfJ00XHpO/RwKHLORVQ=;
	h=To:Subject:From:Message-Id:Date; b=TL/6yrxtkrPZm52OLOG5oBZbVRxL9aYybsrV1tbWQ5LR14FfME9VdWH+ti/X2pHjIX9DIKzAbQTxw3IyXPCsEQ05QGMkM9hgSACsw+EBzHW02uf9oY6OZqPWwwBhkdNILwqUoP+rGPiMtntFJCrVZXpxHIVK3lKQe4ale9z9gyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrtmXwM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrtmXwM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10D0C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732575353;
	bh=3zcoSYmLFhv3RZd2gqTrlgCGKfJ00XHpO/RwKHLORVQ=;
	h=To:Subject:From:Date:From;
	b=hrtmXwM/iewQxa7Tf4Gl1Ti/30abmH7AeQGE//ORhiooAOMrRs2cWXTyXPi/hgVLG
	 EjzWgEolJ7eNjQHcebXMaRefqK5ft7iIBhiZqGVGws33OmhanVVOIKbSUIF8UT4SuR
	 AqbLF+fEldAE5IgHv+l7doi0BDog5eHouD81c3rGZ/5GiUwszkrDr4IaNId1ByviLA
	 pRvi9b67QpxEeoREpzD7oovldE5UUqIR/g9rMT6ydUqx0nz4FYCBBLZq/+UJY+MOga
	 eFucXufGrYKY4IOcvkrWK1oM/CCgZhK/pR1L9aMdp0A8NfKwQvArvHl23BjyV3G5If
	 2tJZpHskW9iiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D3DD59D64
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173257535358.18029.15889462014987697465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac2a3d96c2c47ad684ea85356c9487bccbe08e7ad5c9bfdfbd6ba7ba1b16d38
Date: Mon, 25 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732575353
