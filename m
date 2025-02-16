Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377B4C8E0
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739721534; cv=none; b=QuepR4nmiHW66Q8FHi7M4diX/uVH38cnOSSMrlcmi7M/F8WUO77ILnl3H/vmksXqPWk5T0PGjKKp3MAVWie/hxvhV6O3s8rbnQ4OnP1XsOCWjnycCGUyzI+b8YQvhZKESZFVg0ooJJ+NbbBw4CyM7NWKtuWfqllA+JoGqQEHomI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739721534; c=relaxed/simple;
	bh=CSmFpbB1B2ev0DXSmjqwTy33XYFP3ZijHovvZWENMXg=;
	h=To:Subject:From:Message-Id:Date; b=MOlm7w0C6E0nx8H2u76H/gK4pQ47Mqh2azhpcDsmk2NSdbcapK2CYXTlhXwe62QBtFhu9qBpdc+0qQL8LqEb1ebLVPaYcx1W1mMJTABY5khjYR6SCJ5npMrc9waBNqon4riLoUfsDKUIYmOgorKWXsP5AxKm0jaAhbvrvCVSjeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxgd2ivU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxgd2ivU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3351C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739721533;
	bh=CSmFpbB1B2ev0DXSmjqwTy33XYFP3ZijHovvZWENMXg=;
	h=To:Subject:From:Date:From;
	b=bxgd2ivU7kY23G1sa9WvN6qJjXH0Kr9PXQ4/GZ1jEb4Sk1tS3cwsJzVTVR86bpkHk
	 V+eI+sIZVstnGwAVX0svv81P1Pxw3fmaaxtMDy7gM6wAl1YDoeS+PhQSraqzypyrqB
	 ts/6sKzXJBgoVmQBu/6PflPmEPCM+vr6N0ery32kdfaqG2FLbTJzHlK8bNnCIVREKB
	 Tw24nAjcUKmKQ1HyrN+GpDwLOU+HAGipVnTLOUvZYL1ccej/oaz/zvmLHWNiseppwy
	 KqNOHWFJtCHAzkK5yHge9IvTwEoNYSFuha3z9FrOo35D172ogsjbzO5svM9EWOogZv
	 Q3QJorWfs4pgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E30CC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173972153360.22863.14470710302296048711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6966893df220532d0168a267355d01b33bf92789265a152b41235696b2999abb
Date: Sun, 16 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739721533
