Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0131DFE08
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732659354; cv=none; b=MoSaT/8rkVISbhM8Zwb2o8QU09HCRUAbl+LyhICOyhBctdT8Izm/UNcDP+ww6sGRl3OaDPWw8CBKQShu+KbQziB22gi11XoRn1v/MRjPpHYt+PkpssA0pQhtx+pGBCKFNjZqYJAIUfxCNfFTABqRjHgY22/PXejA3FoZaUBYxL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732659354; c=relaxed/simple;
	bh=8z76/ntNjM0qN4RrRvXI/hWBA1TAkFBXR5J0UZbBGy8=;
	h=To:Subject:From:Message-Id:Date; b=b885gS96mXQw9MeAYzE4u/NZ+q6boMuof+1ediCwyEdsfijGRIS7zQRCkQcORR0B/OD1Mq/iREYUGINHT1/JPQcfWZ1Qx4S2JCQltw5lDJ3BDQMfVX8MKl9reZUETwai/TD3MCBMi7kXhEXwa998l9X/CN7dGn8FFd9yQQJ9rg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT1oUuLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT1oUuLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0396C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732659353;
	bh=8z76/ntNjM0qN4RrRvXI/hWBA1TAkFBXR5J0UZbBGy8=;
	h=To:Subject:From:Date:From;
	b=rT1oUuLvfEzFFqcBiv5ZjR0sZEUhoGiJ7jkqu3hZLEv12XZw7FNrGewlxt0GYNGY4
	 GUz9Ptolo/KeNMTUQ9ky1YjP9aA2j4Uyn3na7wNWEUoMBBcZHnKH62vILHPZ7G/8i2
	 wqsOq/JpnFQ7iNS2Qr0azwMbbiiEpwxnUtXNfm0aCU4fMR9G/k5uI7Ny7I5BhCa2+U
	 KKagWOs8GVvPnjQpl/ViO3isIu5EoJtlZS+ow+DcnYzD8O2HPjiH/gSa1X5dPHW70W
	 DVie2ZRVSQJh96u2n2VCzc5pyisiQvIpq9+yvAc7QduftSp+dwGL0/t2w+6IP5w6ja
	 npJIzecUyA4jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99708D66B81
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265935360.10813.4367255273777412334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec660c1556cc8ec9d4a574234f3296a2ac876744a4e4ab06acb1e3db3a9b631
Date: Tue, 26 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732659353
