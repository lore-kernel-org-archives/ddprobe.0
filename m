Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4754DEEB5
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737291354; cv=none; b=aolVzUBIJ9KdzWg2onVOvpp8YpfqHpD8dbd1dTBFWZvaXjKA7hZ530tYSZOGwtKsPOckIO2xFTQb3pt4K+msuKEAmjlT7Ou/dwvJ5NnCYspwdiH3l1w0ysKjAhOYGfTXM6g38Hfve9Nay6slRQJV74q/GBrVG0ek1301b3F2EHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737291354; c=relaxed/simple;
	bh=zr9z7jw3bv//BKA3dMpudd3pOBPb2Iv/f9PeLHpqC4Q=;
	h=To:Subject:From:Message-Id:Date; b=uudGBkcgeSWO7pJRrRBxE4lhFLRNbvBf5BymEYMIrGmkqoKr7RBvcJoUPVLt8AIhIU0zQygWJq1jHi/Kx8LMWuZLfFVQ8VYza/k6hRiF4B/XkwzCqBU2nmFh/Cl+Ncw0AMomUV46MtNg9OMs515C/lc3AJp2o9gQTJygiUhkL9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTpsTfSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTpsTfSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E33C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737291353;
	bh=zr9z7jw3bv//BKA3dMpudd3pOBPb2Iv/f9PeLHpqC4Q=;
	h=To:Subject:From:Date:From;
	b=PTpsTfSIu6nurtvPhQnw9lwiuI4mQM4XKDH+n2c1DJKsTIW4zbHzdVbSYtRTWU5M1
	 RM8j20WFWBtsiGo7aY1mQLMQS8QL88bYuITNm8EIIpHWVnvKUlyQdA9menfqD2DXPy
	 MkdUtCImS8oOgVC+faOnJfjpAO4XDb04tGVyhPZc+lape5qdXTX+wRX6prPk/S8KwA
	 q4NHMkQpKz0xT4uBI5G3a70FiLeuzUQvHbpStj4iH93NUc/11QSCnyWp0nFDPveNHl
	 A30wU9g24AuRBg1Vm3gaeuMUqDCv1lKLEcKyjmGaXhZDc9D8xNLbaZTGb+Jg+b0Vkg
	 6N9w7J0MVophw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95692C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729135359.7053.5536637439942337696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a842e890128bb69886ee70a25de5f9b62ce9ed3e9f0b366cb487b6e68a787b1c
Date: Sun, 19 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737291353
