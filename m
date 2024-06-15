Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD5F2561D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718450303; cv=none; b=haKMus46nc74X31BMqkehohXm8HMs5O3EhEJbvXsZA9d170sGA4ajj0w+ePjGOej1VrK6wBY4NcjWt8zPJ2Q+tZa9jSbU2ZkxtG4Ru9zU2N+Zj+mpGC0E3bXU/jBVtlUDrpQMljp5iATZfKeSys36Om+uZvAqBTPGTG7+2k2xlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718450303; c=relaxed/simple;
	bh=Z5wG1yuWC4+AccO5Th+YcpNt+dqsrvTnDHCzXceFSdk=;
	h=To:Subject:From:Message-Id:Date; b=UthnrVDidPA4RFvZtnHGTi5lbyDgZkWlfltyPhuLYqeR2Pzd+FrPvBZB1pCfbxH7I38o9pwtgwzYsSaFgJ6dc3Y/Ua+uwzSB4sq0jjB4NX9vxxnN5NmVryziEdRVYO3mugStZ4ptnT2KjJs8enVPRs4u0PcvTcAC1HENEF7mPQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD5U3Y8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD5U3Y8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE258C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718450302;
	bh=Z5wG1yuWC4+AccO5Th+YcpNt+dqsrvTnDHCzXceFSdk=;
	h=To:Subject:From:Date:From;
	b=lD5U3Y8CoYDZ0e1BQGg6OFdii+/jK2H4EwxM9q+fPmLHz7ioQbgbqwVrk1pNqGCsb
	 u1fVu2FJIhoJvce2dU2ZrSoTpkVvO7BzUEX9e6FDU44uvJNY6nsWANE8mJm+B61fOj
	 oREYKrTAQYenpWS1NaO+2KwOjceVicUQ1h1SjhV/bD5enRByLHhgx1M6/CT6RV9+x0
	 lQCl1iu8xu8PZ4kyQD7WsmN++lR+ULCyS+pbeKWfzWV6BQVLA+bEr38jTKm3059C9f
	 E4JxiyXfVymHJ3OUdhPZIfWRBAh8nIwZkR0xFqciNiTdKb1S1U425F+g7MDg5FU5hs
	 T/2bKaLwtFE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8A56C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845030281.17582.7793370409939232805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89dcd907226a5dc541b2d0e49811fb4b7a1873cc6141d70464d31f6fb4419ed8
Date: Sat, 15 Jun 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718450302
