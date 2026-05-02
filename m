Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BDB3803E8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777740453; cv=none; b=A95NQGDHIEYiUgvbbPvQS7s4KdRAKAY0jF3cN22VfH80OSgK2R3oQNCk4sdb3RgoX0L9OI6bOM+Nrp5MBaGRhE7pdP6rWRk5n3+6gBVAqV6t8ESPHEVWC7NVgImnm3Us/sCSqyVvKtMGO4zpSsZmubv9n3cqcxxhNhWxUue2M6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777740453; c=relaxed/simple;
	bh=oBbiePm7n5MpMWReuVmZDdlFIrKTHDTt99FN7qGr3Qg=;
	h=To:Subject:From:Message-Id:Date; b=ptq1EeMxgvPODRVtEEOmjlqJkJd3t0Mvy+EeDKmsVfLHxCvkoAsehs+kCQY9JDTi7GOFvDY31d+AHoNgO9k8qO0S8Sz2jIk/YHSL4FB1CSZUIh12zH/Mhqkwb1ZuxReuexYJ6tHe0CGJEEgcgB5xKaSSWSJIy74SrewSiSIMBtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRh9bdIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRh9bdIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F0FC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777740453;
	bh=oBbiePm7n5MpMWReuVmZDdlFIrKTHDTt99FN7qGr3Qg=;
	h=To:Subject:From:Date:From;
	b=HRh9bdIxkLf64im55rye57ybxrOleRwbv4tI/xUfxHEV3xO1p4R2FtbigKY8p8+A9
	 bcIzSPTRzANiTzg2b2sGyBFok1XgV63A5E7Q6Oah07x3GTl/xJVx2eM662p6gRu6Ow
	 tLF9qBEPN1JUEHA9Jd7zdXsrfp9zmk/v7xIV6OGo7MDqiGXndLvu2nelpLHSChtOLL
	 NJ7GeSv01uyu31+74ZKzmXWBQOrRJ8giB8pQQtEwJlm69/Lfcwe/0xPFjHRjKlc2CF
	 qwnaypNd40l2ns+pggXUvz2osCktmoPJ3qwZUY3oXA6bVk7s3kdXVb8lLfbAcb70gu
	 yawWH3a7yUvLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC8CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774045368.15837.14398690315733811752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2a20e475b24f10c8844535ce995d3399c1cef1804a53252c5f745fcf85c8c1
Date: Sat, 02 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777740453
