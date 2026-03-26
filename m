Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF1917BA2
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774564493; cv=none; b=lHzY2b3IuVNsOUnbBOeolAW3cttXVeIec4RZWukY1gXJoSnu8fLG60/DF+GBqpVhq5PoidF9B0aalEZhDrpLJ8jSe2cCju6QVG2bpfaUBYQswrHEFQsUR8xYsLTGOjOF+hbMBKPgJ6t23qBmsd1XO7i+vD1GOnIvtQ1MoSGhhgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774564493; c=relaxed/simple;
	bh=Xw33F7bPSfNGjedz7oogYNEqHIOQBwYoaV1B/9iKg8c=;
	h=To:Subject:From:Message-Id:Date; b=ZHwaQypMMOelVnWGmJC7rresByy+I8x3wvX/HhyDXaGilK923eokJA6T+LJAHPCAHIs/8pWhP4GW7xECat4NPRh9zyVca36uPFsShDgxL8OHvjUqg1pK4qqpx+fLtrxXnRTqtQxDroHn/yvd7HP3tUqLzQ2hycCsr97VPyoAX5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxLPEvO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxLPEvO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AE2C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774564493;
	bh=Xw33F7bPSfNGjedz7oogYNEqHIOQBwYoaV1B/9iKg8c=;
	h=To:Subject:From:Date:From;
	b=MxLPEvO2SdHDR86D9llOkgwUTNDdO47l0FzFa5fQs+Fh2SPrEWwW5+Vcx+iPd7QkQ
	 ZBPdgzu2YLsjXu88BevsHhJDef+lwTA6aIOBXgB2715zLT6dimNXGj5SHdocw5q2am
	 HkMvLElZdocHMU9TZ+6KJ38FS/DPx8VeYKLipdumyy8WNUywXvm4x7YKJ5vczN2bN+
	 RYDXGylCoDfqMip5av1FzFqs0CKDeZ2kt/CIt4qrNJB+N584bfKx4Ru3Hhlka9ciPi
	 hnqDNv0H62ED9FT7a9Ag1cWCVQDJzfkKTvsS+1TXgnMvwCvheJ/m43yMtDYKOu0VD/
	 c3x2brA5RW2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459A10AB822
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456449358.5544.6530225019983987266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4501e26865629c00962c5ecbaaba4d749a6566bee3ff359829a5d302d41c656c
Date: Thu, 26 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774564493
