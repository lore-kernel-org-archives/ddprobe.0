Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CDF1F582A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743781796; cv=none; b=Qe5xht3RbfAouycARz12GwuQTBKmoqGNEZOvs/L0v2bvgVCxeG3GMLRAGHPcd2VN4OSvsKW3PIOBHrFPel0CMWFmGVd3V1k44a1QF/hdfwIbJaum7PBUd3qzPSuqq39W7nl5CCp10Iv73mF2F7Q8ULygo696lgG5Afo3Tdd0KDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743781796; c=relaxed/simple;
	bh=HhLSPNtLNriPTo2ebX/gW/chkXQta8Z7GRXOn9MSn6o=;
	h=To:Subject:From:Message-Id:Date; b=TFSVbBFFxf88MV3PzWc2iLcJAzvq6NgTjsilGIE9PMgRkt6qNdYKtVA08NJeVdDw1+L4DRDT/cf1pD6a1gKjcoDlFabqjDZbM0t8Lmnz7H2u0KCoFEJ9WoS/aivzrCL/u4OSgmDY5IPF3xQCOdGSgo4Sx+SJZQK/ASERMWjpKG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InbDXxpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InbDXxpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79FBC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743781793;
	bh=HhLSPNtLNriPTo2ebX/gW/chkXQta8Z7GRXOn9MSn6o=;
	h=To:Subject:From:Date:From;
	b=InbDXxpxIFcfQyku3Yg7n/uUozghzrlgRorpVqq/yIj74LcYoS3sLzf9KyBLwrL93
	 6qRiSyYdeSDNTom+QmHt84q2BmZdJ/1P++wsaOjhU87EMa/9h8jplqawIpe4h51Kvb
	 fiwEroADS2MAtG/t0brc14+58DiP6hcmPXcZD0UUsVj2+PyfDHEWdvqielUakt5q3N
	 l1R/hjiDA9BJN3qaPDmcW3z9gfVBkKTxk+0y1CM0hPOXF4LWT5MFiT5Cl2OJs6niPI
	 PeoPoqbdG48J0jID36EcOMqqqbSPwCVXPBkzxpGzCmtYi501WxUIbt5puVy1HvfCOx
	 0pk4xKpmbn87Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB364C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378179368.32053.2477196244840034067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9c84cae0e5db2cdc6cce785f274c2c92adf8550997cc6acb2efd075694a944
Date: Fri, 04 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743781793
