Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450292505D4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743025194; cv=none; b=mWe9b2vbpGXKqvLDKVNO/soO6+2mnHZ2r5BpwxwbkmSRC0cNuHXMI/j+/ekIKhYqGtoGdOnMdyJIUo9XgoQSz2Km+N/RfGW38B0a/9QwxchtQ3ctUTwz6TqGHWRnz6+5I1bBwGyd7DbdS3DltQUISJlAX+vA8quMddehIyXckbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743025194; c=relaxed/simple;
	bh=nhHrr9owJEhcsYIlLTDZxDs2U2IqMf7ndLPcLD+H+Ro=;
	h=To:Subject:From:Message-Id:Date; b=LZ2SM45mepP8l56iGaMnQFEN0TuXG9teOOY/JQQ510mhJFesGRPOMqGdLvLpTvjLG5rq5tCsqIK1lgxjpVzNOSkp8vQLgN7Fqvn1dSIjtbtDX0rvtYSFabOIG5atvFy/KtiptclMNFC6yYYCuxW854Osbc6e8cQoJfWqH9oAj7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/ELoATh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/ELoATh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B35C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743025193;
	bh=nhHrr9owJEhcsYIlLTDZxDs2U2IqMf7ndLPcLD+H+Ro=;
	h=To:Subject:From:Date:From;
	b=l/ELoATh6onV1TXafQL5eX2ihmpPKNlPV/ZglaTbHfz3OGxikf/WAaKLzXLS6QGrH
	 SQZjznCdLqejs+p7zMxZnJmEf9NoWITX2VmJFHyJ1K4atUg0bYli8jcdlsqDlggTfD
	 NRLgrM4wdRVDIj/N8uNXdeBFIAb9SBQCRivZiWhlgUaqJpsWil8JmhvcugdTffwZ+o
	 f2JXZD+E/fgw0i4pJinIGwuuEdW/9C6zwwUQnBK55OH8V8YQjdKc1P9LfQlSaevP/Z
	 vRqG95nRrZPyaLvwbbHP4ZEUFBdmzy4WU9e+IFCkRbNZ5Rq7GGGzdZN1DNgis1bvpb
	 jUukfM7QBZi9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B4EC3600E
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302519364.19619.8160983171623800559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b420e13c222774782a5672ef454e3ac5e652904382c0ca77e8c47edf617fb2e9
Date: Wed, 26 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743025193
