Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BB021D3E2
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777952854; cv=none; b=V+rdFcPpr1cbAtPJ3l6VdTORrwFC405eQuYyGRrNObBE9YDEnrl77EIEs42Hzlv3/niXuZ/fy42Ra8Kgk8IFNqD/hEpTdII4bwxdI1OW9PyN+AVSRrQAa2P9OSzVvxxlfTsSe6qd6B6WXgBYVy2wMHTc6dQs8rT0LoVSvsee0So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777952854; c=relaxed/simple;
	bh=RnvbMjFXjWUikj9AVoe1kiSrHiI3UtcQSn/tyuYJhK8=;
	h=To:Subject:From:Message-Id:Date; b=c8DdmR+bhlpWv/dHWCma+LhDvFzq1I2tFJh6O4UOIWjQeS+P1T65TOS6tyuJ8CWX4wxLC/sdF4hOKf/GXcUqFdXbGNLMXDeVZLbLtg5j1VSfz6QHmSF8BcI5rmmWXvKMPQLGh9Lrc+9CrZIJAuLfR+Qh3sbN3VWoXbBEo/yu7R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjLCSPzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjLCSPzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2E6C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777952853;
	bh=RnvbMjFXjWUikj9AVoe1kiSrHiI3UtcQSn/tyuYJhK8=;
	h=To:Subject:From:Date:From;
	b=BjLCSPzCWawO+Bu+VakGTmZwW6/j2r0x4HGFzFtI//Xg5AyZjYV8I2eD8XPpGCXWo
	 Nqv/0Ma8p1M0JqPO7dcL/MHmENhVrPprfqO6fD1tNJ7uSZT57jhqXgnIh7wNtOXCKj
	 34DeyT1kADjiR9yKtb3emvzw0WSBCip1oiZQYWq3s5INeZLe8lG4xuENvcdSRX5ycK
	 U9DhqwcN0BM5YoUp9aoGQbXGdUeR/JMHrff30DnGKZo/j3QyYIyzHJLuMHph/AYwf8
	 sMSZnifOXb6GGVgvXeyUn207IRqLUk4EWp21PRg6Sk9Qd1AZg2hm+eswugJunHvCxZ
	 bLfaRQrl4ZjxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A928CCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795285368.4356.9051225695167261926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5ac0c578e5032e99d79d577b92f2bee682e137bb1647a396ecf9e930e72073
Date: Tue, 05 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777952853
