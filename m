Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F7155385
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732042554; cv=none; b=dGyAFCMiDt9SllssyYhCKguVJ4rgVg4k9GbJ6HKViovhRW1x4dRuZW1J7yOifyRS/s2gyHCTsTtlBpN7SeOoEY7phzJQNgL0Nf73dQLXMDPDeQ+/j68+S8DbsN7S9RILhgnssnBuC61+eT5JI3PNFMFTO+Q+VOwtG9O2mkOb+Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732042554; c=relaxed/simple;
	bh=ZCIP3NdSL3JeIwIELh3B5BUOT7yGMUfrx0EVwM/ej1o=;
	h=To:Subject:From:Message-Id:Date; b=XjstqPijufFNU2Nvg/r3qEnu2g9rjZ77s1VUkbpjS7uMfaeZCfu1fnx0Z3yZTiuzIS2fc47rm+CistpGQIyvL/iMO/yueAFtGOcpJHgvwhc2nsHB8EKhoBoXaqAR/Wz9M0XJ+X8EM6vKfeWz9FOVJApxxVD0JI6x/UT03gnSfXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAfXlM01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAfXlM01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBFC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732042553;
	bh=ZCIP3NdSL3JeIwIELh3B5BUOT7yGMUfrx0EVwM/ej1o=;
	h=To:Subject:From:Date:From;
	b=fAfXlM01FuD2NIFjHi2PEQmOaihTrS7VYhmXsTqmVBfGFMTLnmiWe677Nryq4U8HS
	 EsqD/IKCdQblKe1PMNfeEyy6dWSn0Iryd9Jodu4WiOF3xudsjmzmcuOVuZxVodWa9X
	 IX5TsvRjYBGrEGaxHDGdD+U2xfIFejw/iYSgEwL6IBbP50Gj/o6xUhhvrJw+wOvqDP
	 9Z+FHNQVXqEu2s9MjrHyoFTFrIftMJQ+gMk+cbyTs93Qpd6I5Axvjxj/UbjbeByN2+
	 hY8o79jQAzsRnrsc6HctUYpZ5ui291yC1VmnDWS8cqLziNZ6ppeU5BZ0BpYfYq65+W
	 ErXLYvJ0NroHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96911D6C287
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173204255360.20198.16260223802853448159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17717de5f8e41030e010fd3a97105c29d25fb03a1dab88a82d0df6e98602135
Date: Tue, 19 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732042553
