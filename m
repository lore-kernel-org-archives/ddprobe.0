Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FC81CD29
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712986763; cv=none; b=jJLJOmRfTVZhc2skdR7VNq4oqfyMQcEOcSrY3PH8ESercOSSpyK/Cx38WkiD5dNzyL03nomWXyAbYzuVDQC5MJsd9dGG35qySjxSNSIjGpg5N2M4QD7gTRBzADUO3kJ8gEz2oT78u12lIjzHgJYQl5gGK8fgk/Tnngb0n3RR3QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712986763; c=relaxed/simple;
	bh=wfKZyMnJewNHi+2RnMRxqZwrQaVCbBtHlNejBBycFuQ=;
	h=To:Subject:From:Message-Id:Date; b=HIVFNu2RsCLA9WSXlMo6XianLXHU0qcS1J9gK2F6HBIN+06z6FEwakPS4qD4iqnjX3r6u82f/4DVa4Comi8az+lTdbCEK27OIz0lZyFQTrd66iHKAwJSbhIwGfXRqobJH5mCiFStMBWBuBJHNkAn4txcris61u2QcYH6lbWK+RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRY+U0mD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRY+U0mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4132C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712986762;
	bh=wfKZyMnJewNHi+2RnMRxqZwrQaVCbBtHlNejBBycFuQ=;
	h=To:Subject:From:Date:From;
	b=NRY+U0mD4soYKfVPHxv/5tKhUUXkQaQwIfgAPzFEw/qMT8cFYa9pnNTvzTf2Lflu+
	 vEeKJoFBvLjRqdDjlsM2lJxUmN4cMuSBJTZJl37uoqpni4Nhv1Wk2UwE2nv3aBlkVW
	 dhrgTp4sJpv+FEb9VxlKvhC1BTHhQsE61ruePJkA8IdgsEtrvPzeiCHbQ0vkYFQXJv
	 vLNqsPy8Ndzzp/1q5f1nXFeGC1ZyA9qZMZOcMVeJhOQJ4Ah+KNVF9C7UvHwvKFi/71
	 4p3i/5rVT7ZEypJPLwJ9+gA011cKWU93OZuZaNwi401aI5FGtgG/AQDhBlU3RHusKW
	 ipNnjlW8qXIcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E03C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 05:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298676277.29567.17923145235446240063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7495435355872f4908e4dec4c2f450d3583b0bee5cd7a53641ed4ab4aadfff1e
Date: Sat, 13 Apr 2024 05:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712986762
