Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 776DA2DF3F2
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787281234; cv=none; b=s1XoEbPid0V5kDwkB7BKkYkxYaKL0nrOC8jo9k05VnIo2SBpZpgKp7iNnVVNGCUEbtRXvyzWH0B8WIA/JsGCHdpI3kRgw4JfRwYaDcDM3LGoEuXnQCn+1I7MAzbi9wqE7DzVgV7tyYSevhrFaOxfUdAu6tkNS4MZwMVXp5lpgJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787281234; c=relaxed/simple;
	bh=ChPPo0TC+2TBeUpCB3IirpqX0tkWZxLv8KJ3K+1Klhw=;
	h=To:Subject:From:Message-Id:Date; b=bx39AdzBJjy7Sh8z0mr8iNuaROkqibZLTjXhXLl1pOaZPwrLOUgprdwr1mdS0JV54Oln9bUeAlBXjS3ELi25WUeqEFTJTcF7YqgY+Z15mucAGjhiOpu6XgaVp4lQHEweSAResdeJZlbchb1XzQ1GKoqaJL7LnMD2rV2G/+0vMV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwZIGb5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwZIGb5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE525C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787281234;
	bh=ChPPo0TC+2TBeUpCB3IirpqX0tkWZxLv8KJ3K+1Klhw=;
	h=To:Subject:From:Date:From;
	b=IwZIGb5sXts+IgCGh4bClcCa9Ry7JQkYkmOP2xnxFtAFDj1AyWlbBlMFCdDQuEzE7
	 VDFbelLlCr+qVWK31RBxmtP0dPdhoRlYsBYIhdrlGHRw8MJ14Ijp4265o2dukG6uOJ
	 O6SlOWl4aJpFU864WJeNuN6HhNsKA/PmxkfIY+Mu0mc8LBWpMqnTMz4b0ChAI4r1hW
	 YE2zI0MoBl6+T3LJVYQqc3vpNXjLW6NoAEU8dDaCKlby9ejTMGyaUBwwh2fYMQBsm6
	 xc+SqHk9jrYKRqJ9pwRFQHUSCkA16XJPc35B7ltaf2yA3dlMmfVdK0tEvYOwSKfq/I
	 j3vScNIMKwdBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B53C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728123375.26951.10751020250912669331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a279ec015b8d2473b833270819baa3265e3aa7099b04d43293741f3b76a47b3
Date: Fri, 21 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787281233
