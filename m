Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689FB14AD10
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720462583; cv=none; b=K+RKEJhgEfDYo6TGl3VVqGHcqYe+Tz6uxfBep4iB/dju/5WiWmpTF0wDa04TcAKbUcgG81MLGos5aTABEzW4PthxRpvwuTd+vLQFIqWvb+yeUtxYTv+O8fbt1wVhsILTTSKW6jB0P2yDRA9xSXBaiFwjx5KN4uocuvb+xyPhz0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720462583; c=relaxed/simple;
	bh=zONRnTfbVoQ+PmzAClgnvvexvgkpZwxnjvubZAtTYRA=;
	h=To:Subject:From:Message-Id:Date; b=Sfm63WQZO18y3gKL6zpNdQk4wtH5WbrKTJF5CB18DGpspiSFNyhE7OiXWvN1KUfAmyI1IQdI4rJz4QhvyV1PvYBhY2K3KYIAiBTgNcqIgs7KvEwxHURXPiPa0aAO3qi4iWQtWQgsazQCTReXygcdmNP7zrcwjw85yCEJa5R+fpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNE29MDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNE29MDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE395C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720462582;
	bh=zONRnTfbVoQ+PmzAClgnvvexvgkpZwxnjvubZAtTYRA=;
	h=To:Subject:From:Date:From;
	b=cNE29MDrxKDKH02zO0uRhFJ223iXGHlIA/D4VnGebef48b+NHAl0ei+DRTLDg9iO1
	 FGEUB2WeSWLGywSRy93AasT7hczKXQmr4Jr5i5TcTBHI1LL/gVjgOEHBMNEtBCKLva
	 ZKqFcKAl2OXddI8wJ8mkAYzs/YG6B8mJwKwogjlgcHCw2auv84dh0MLm17+Ga53+90
	 19O/2rMSim4zkEYAwfJrA0EefvAkjUd0rT1UOK+d7jUiFT8WmWEtkRS9dDtktEWd2R
	 Fmu8aPfwlyIzk6jHLJ1CMW/jZvQmmCPKtsMHazUWS2QC5f1dXTas79K0hlMt0z9tAo
	 uMdo+68e9N2zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE204C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046258283.9230.11667460634098469425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbd7fec3b375d29115dfb7202fe465f88504c6583a3081b01e835be56ddad54
Date: Mon, 08 Jul 2024 18:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720462582
