Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16825257452
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775007894; cv=none; b=a3yTNBsH29WZhDYXo81KxSGDrrNcjfyuTHct4IRUQVf0p6EiXaR1INTDmRDHz250KZmjgrMEkmXBqrZ3lZTt4MVtATXi+ADhxD2Sn+8I9PvWYCGxK3EndtR7ihhE56iX4Ey3nkdorI+jgIOPrJWPlu+sDNrZ+2RYJOXxY/cFsU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775007894; c=relaxed/simple;
	bh=3+VHrA3Sc3TvqQv8KrOYxsN5qiM7OK4QwesOZwZx2bk=;
	h=To:Subject:From:Message-Id:Date; b=oSeGmKJyPO46Vsvi/hUCSYTmZphHsk30kXnZa+tH3Yl4nDRLXXqNY9qOsJ33kqj8QIy9/cOXsmKgHUD9XOdBE7Okjx2/7HUM2V8iHPV3Y4pj5zayguik9vbNSKDUfazFTSBPBF1ESxmZVcIsayA4FIEkPSh88Hjt+WauVatPc9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdrTnY51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdrTnY51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05C8C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775007893;
	bh=3+VHrA3Sc3TvqQv8KrOYxsN5qiM7OK4QwesOZwZx2bk=;
	h=To:Subject:From:Date:From;
	b=cdrTnY51KJgKLD2UWNKn2osYRds4wOOBJ/gdNsDMK2xT8pykkL66gWARfwI8BL3lQ
	 2szQ3JcYjQvNXol0or8rTWKd78yp+66lXVI8jKMaTd5IVwx/qgWYEp3yfdEY3aF6X5
	 DMLiloVCI+Hjfnyelz0tGE4mbB3z9S2/O8OmGHtMRuu7HlCKSzgj0n/e/2laRt5JPM
	 iRqQsJosPg0fb615r/hWE6cGWPrdaxNLDnrAfWjIgz2aYnlrt0PXcGmEBiXn0kc2GG
	 VdmBehr0NTgdXtRzSP0omZ0jNGSEGvlk/ypx3UtPQ45PCW4URb3qFrrcuuDZe1hqSU
	 dbb1tTHqwGO4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B22610F9318
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500789359.21299.7694121514466587229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34c36fbbbb3cb70f54e7e1c9742140a68c93e95bef75a891c53282c04f958f6
Date: Wed, 01 Apr 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775007893
