Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149E83EBF18
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769384634; cv=none; b=SPatYOZfWO+IiH/quZ58eny8ruyWn/RfYfSvH7RwbjQvYCc8tsSoA2zuLklKxm2Hn13eHhDN+PC2KeF1gm/ZgBYZYyy5B6i82Yo718jf1Cu1YmRwu7CkioifvvVv8BdA+Kowsv+/B6DW40h6rNcxd7Y4m9+8FD1QWTDKI1u8p2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769384634; c=relaxed/simple;
	bh=oU9GWHLCx/idwWHpyWFz7/5F1zVGv996MpfhH3rddj4=;
	h=To:Subject:From:Message-Id:Date; b=LC0+PFUBV6Z+wUBzfLhZJeo+pqOxAzHO6lFTuImBc69heZKkeatiSISIYPOzeW9psGzqtU0HqN9rrzgmSuXSepB0J9EgcWkZFmUXL7njMukPpIds887VScOVDmFH1jZhUIrV090d/19sehD9YWhXbioXNbKBnlu3Ny/5xcVsjSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7hWfoSV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7hWfoSV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A517DC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769384633;
	bh=oU9GWHLCx/idwWHpyWFz7/5F1zVGv996MpfhH3rddj4=;
	h=To:Subject:From:Date:From;
	b=Z7hWfoSVFY/3Zq0ifMM259ed+l2kLSFtoo0su37CL0pGhenlAcy5zWWp0PpbuOhL9
	 uflJXpme67pa3uQewVvQCk2/iNAmZLu4nkb0YdgZpaLdL6IFcIn2D2gar57TPAcD8x
	 L4E64YpUPXb4DPQGK4ECBF9CTvDedFVicaa6398XRrbQgDr631z62QnjN8tZnM/rpT
	 KYA2m+sO48HW+qmZtDf5IZaEGtGz7/MD8flZ4LyTHtV8dKn2t62FuYsAAMQRvmv6wK
	 IpKL5a370hJ6kVNnTyp+pg1QOkM4fkgK6KRIteiiIF9hAPjCp6GO+JFmBZTTwWKgpj
	 nkq36dR2Rcosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CAFE63C9E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938463357.10342.6105680126470812334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0204584962af489958f7562422b8d2da5141962b22e1afa84a634fbc3361361
Date: Sun, 25 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769384633
