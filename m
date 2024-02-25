Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E692117997
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708894097; cv=none; b=gqQLeZ2Hh2kMoQtRNtEVsR90dLYYBn2OdRLPBHXz1YYHDK8qQHr1Mxv7BPBHx1h9jgKJrb/ODFCrG3BYQuaW7Dc8sQcd2Aob5Z2MxJLh+skcjHFjpD6d/LUyn/BfFJLuGCjw8NFeUcJQswwqcyXcpCrqcGWxoD8J+UZkjX6ICEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708894097; c=relaxed/simple;
	bh=ePe1ALrRv3sLT7msCqT0OZZUC6TlNzrTjGoj6Kst64A=;
	h=To:Subject:From:Message-Id:Date; b=aPQ4H75I5EnsUTTVw6VQONWF/BqFK6mkQBRdZ1hpV+PH8pC2F4pDnuUk83MdyQHoMheA9h0ao9AP96OHD4+cMscD8cUYkopFLce06ISa4Rxp84BxrZ6v6SddV/oanuoEJyNOWZXQE0tGq7KvG9xGyqiXTtGF3vxQ/EKGeqngTjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjRYyElO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjRYyElO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D499C433F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708894096;
	bh=ePe1ALrRv3sLT7msCqT0OZZUC6TlNzrTjGoj6Kst64A=;
	h=To:Subject:From:Date:From;
	b=CjRYyElOhK8/YBHLl8rUU9u8DfBkENMVfVZ1eCueCt6nvjzrP9+tG3rZvbEO3A6I8
	 J6ntu+339iRTG1W3QZS/RcL/rCWJJdZop0D+qNSeMJ2tACMUNLXwn/YYL03NyFtufg
	 GfesyjdaczLIHzAavFmxYZPGOMc5CzXscaORQc3s3K5C6wb57VoVq51DllfKbg35jo
	 oxKKsmS7y+kzJwO4fFuQl9W+BdKBVjalFPUXBXxMoLnPdod9vX/A3ifgRq7DcsvqP9
	 4ylswRu/miCUjRW+2zEhXjiEmac13iKbYEiRMjuIyGgLNX3QUC5JrDQGr4MPCxABeR
	 jVCffPldYRv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649CDC54E41
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170889409640.18699.7731990194122104429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e5d8801772824a3d29ae907e2b7e0622a7f75eaf726b65530c5abba9dcbc40
Date: Sun, 25 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708894096
