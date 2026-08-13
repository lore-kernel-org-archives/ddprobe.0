Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4260B48033F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786629034; cv=none; b=Pgc1/GlGTxir37KoYHBOaMrYfoKAgOBBO4tOpOS4TPi6m5EtpW431oKXBf6VHQd7ML710paeInJN/53iApSxYvZP9Ss9JiOXzSwmzYtifUQVRNIMWj7fsPv0kV1Xzll8F2VLXcKm6XftuwnT4Tu7CRgR3TWCvgqqwHjSiw8wWMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786629034; c=relaxed/simple;
	bh=DzlRekSonUnqEsKAWalblLBBNVoU2CV3gdNtetp4wO0=;
	h=To:Subject:From:Message-Id:Date; b=toAZdBBmTuYke5ErYr/TzA3+S6HBP3I6LimHs/JUzuH77TYJMKG+zxQehPt028JASkwPET8dU+B91EynXMVOtPnKXzM176kWI5U0makouG6uQXUoq5IWm6F6nLEHLKwRI4nuA78K/5HAqJOKsPWAkJhAs/F41CP07Hj3NTWO0wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVM70drV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVM70drV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D2C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786629033;
	bh=DzlRekSonUnqEsKAWalblLBBNVoU2CV3gdNtetp4wO0=;
	h=To:Subject:From:Date:From;
	b=DVM70drV5n+WnoEl5eOWh4FLdUGAxbyx0fVi8vuY4I5rwSmX3F+lJEq5357TFqTDH
	 O70RncTfKQfTfzX0rf2Vd7YfrscQOLNDQACZnnPj16TwNEjkYhqNDIxM1hZ95s07Ov
	 X4AdAOopL6DMuXM60qoXlxaRvcLFkG7N53JHYw4WGRuVy2jITBcHzS7/VYeWwrv6Rx
	 aCnkGVffxOY2mkUrqxEzXlq03Jf7MOJhS/qqggho4nrcYNstA8v1b+IHJJ83ftLHQJ
	 O8+VCQWESDoES+sMPeraYaywuQRL5XjAbhvhz5tLYJhB1TlcGd+WB8ps+pqYPsT03P
	 oPnJbplbc4XJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E66C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662903367.13840.2962709008271140452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c46e05a5ff834de3c3b9565ab3c0920043f5dc8b8814aa4ae6d7a1264acbb1
Date: Thu, 13 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786629033
