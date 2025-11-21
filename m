Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265952D73A4
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763734314; cv=none; b=jC1rTDc4xPB/sAWCC98XtH54wuJh5/N5MWoSwcyc8eOZ7oLd7D6tQmVyiGNhYD0RPa7f3IakKNzWrw4XtneLzwaaIV0uvp3dag+fC8bq6vguj/Drb4jC2Db8o7Z/enuZBDkKYUNVCAI0On1JEMmJIyn40jmLjfHvpSn3qTp5HS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763734314; c=relaxed/simple;
	bh=Quk7qcUG5lJVrb1yNk3LFgUlLH1J9nETr/qZS8+tlgk=;
	h=To:Subject:From:Message-Id:Date; b=CN2/eWkFM6l+ojPxSjSsX6e50bPhwb9S/ZfozrHJ66CECG7bN32mjUYyl8/9KiyF8fnUdypHINRx0O4LtqDc1g46Vs+21H+IFIkcqCOXJkU1uh36bP9f5UYhCS94vAEp/J7kv0ZuNX5r5ky1AlZoWk2zkYmbA/Te9LH8ikkDRYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7WO6KN9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7WO6KN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763734313;
	bh=Quk7qcUG5lJVrb1yNk3LFgUlLH1J9nETr/qZS8+tlgk=;
	h=To:Subject:From:Date:From;
	b=J7WO6KN9LCSln0ck3lWIpRST5LTn9TlASx+tZRKbvCFdNgN0zpXU+gHF03/uLtzI4
	 deCgrOlCPOEEq08a8SpltDDUEL7UXGF8HWtlzfLbgEVdC1I7Avpt62YLaPwyauXkdA
	 tbbkV76rPJRLVZzgg4mt7N2S8SewI3nSv6TKWmcilYrqyi7rOydkKyglWL1f1txzPL
	 Ezghj5YLFre37kN2ax3JLKobaKVqky9w8sMpwtkDeNF2g6qpH4pFuGDVXtGZm0WPmX
	 PGS/ClZrjdNVOsuH8gcSTfBxrIsZnnn4Qyr/ZK0whTWyq006QAYTscjYJ835tSg5ca
	 1V0ZFB6MM4O1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F36CFC27E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373431358.17921.5171436027159003375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad866a066a70713ae998190a54eb4a89589db803a905be6bad45a3d49127ae5b
Date: Fri, 21 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763734313
