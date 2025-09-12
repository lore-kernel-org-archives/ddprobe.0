Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59481798F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757713793; cv=none; b=QMSnFkCTkJPq5FbdCIRDnADMSVWA282fEy7vwL/IDFH5AnFNeZ2V8f9C5WjQSCp+QMRaJwDtzldywE2J0wMmQujaaTVAlYbutx01EJ1QQVwF6KjzNtRKbBodD1ukgy7Ot0q+M4ND+PHarpx/pYZiSTVhRuu1RWapT8FS0vsE2HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757713793; c=relaxed/simple;
	bh=gAOIOc+Ex1+D4hPbQ8YdIEPBx/LH5zNWutM5br+HOCk=;
	h=To:Subject:From:Message-Id:Date; b=ZLEiRsVYTyO20fyG6GG3jzYz1W1EGIMNesl2pK16eZN4cZXEhNxWAT7pW8L1OcB/78ISMa01aR1i/fSHVXzdYfKeYZzC/6IjDCuf2+2f5AkZ01Gn3ryvbxImkZQ1S5YNry5Ufo0FBQpNY6voJUmR7lFuFK+TY/1BI/3mm2vvdL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gY9O9Up2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gY9O9Up2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A209AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757713793;
	bh=gAOIOc+Ex1+D4hPbQ8YdIEPBx/LH5zNWutM5br+HOCk=;
	h=To:Subject:From:Date:From;
	b=gY9O9Up2OrfYjHsw76d7cx/MURKowvrfilHBJPvQEVjOtKpx2uRZlWKDPoAkkQPvP
	 sWxKRlKviky3Y+js37a7U+cuR//AfwzP3h0iFJ1pUdvkoJx3if3G9AYM6GgjtgJWXF
	 Be7yo4Bokt0dDhHOY4MkAXMr0Y3NE7WFhnleIxPKxnI0lnL0fFGaLURGTYuHjpr+zM
	 vMr82HzzeDuvF46JuRQmjF67KUXlRD98ddle/4+JtUXRkqb5au+Si5uKNq30MgdUYj
	 34Ve7EwxfWdvfSDKr+VNHeWZtY6doPu9Xxd860bVKY6eew8Vx7qL2pqRk5qnBTtrfJ
	 517PLy1n1irrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F966CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771379357.17666.14713847805284724552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549ab3537de19ff57fc39d8d42a4f07d06d958edf212e546b69d1c5ee923dcb7
Date: Fri, 12 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757713793
