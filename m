Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DD1374D1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720507583; cv=none; b=Uw6/ruUv45jqfJ8gJMKSFJWbW34Z5mG9+1646knR0CwQF5t+E4Xbw42cqqTGtCWOBqhJL4GyPqIg1GMb3AfX7KyEMqK35Lk794QVMWT+oaghi/ZbhpIGF1ffZSvAklEwcCysrDubX8C5iVN70paatPa1mS/3Wvq4W+aVUgO3TXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720507583; c=relaxed/simple;
	bh=AGDVUTTyfhLBoF1W5qTwQqmVMWN2x0IOdSKkYxIVDOI=;
	h=To:Subject:From:Message-Id:Date; b=WreJ6xKv3bffIp7IiSywH8Td49J1mqGKpegU72mJLFYJti9ZGjS+Lmk6MEdh1W3c5kGv/UpcN61rp0kexuW5j7tMfOYRIeBAGEA0pPQ97NxqL6YS6ZT+y9Xhx0cujHI0At4q3WTfTOuAezWyv04KYLeMMCCgNeAkQs/QNHzU8y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fe8AkK5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fe8AkK5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D53C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720507582;
	bh=AGDVUTTyfhLBoF1W5qTwQqmVMWN2x0IOdSKkYxIVDOI=;
	h=To:Subject:From:Date:From;
	b=Fe8AkK5agBi2ZlaaDC4TdpUB+3W1QCas15iVdgUunYvQC847WLjNYYEW2IdKoKuFw
	 X7Us4aMNUx9kUAhbWHLfzg3klfIR+Z3Dqd9kv4qjc/F+rFZtoS9iTGTMviBPgSsMg0
	 UxP0e90L/LffA2ZpkzFITMnDO6V8S7B54tjk2s+RPyYEa7opAAOfTt7q7LomqsCoWs
	 +NRkzDccUZVvjNcUEipBER8G66dieuUEU9ey1NLZg4VEJx4ESHEsHrXAQm4CQCzv+i
	 k9L71jYe/nqrACrgp2ZuADJq82qny8LBFRWoLxVd/FuiYMqZHzXqGB5SSJk1u8zRUY
	 jd3/3w6+Htw6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD934C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050758276.16420.10714600546260263490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7dc8030dfb67789e0d2389a4b55eda3f28844635cad02e60513df42e82b1643
Date: Tue, 09 Jul 2024 06:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720507582
