Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C7F2FD1D6
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757674195; cv=none; b=PGBJbOBxnWISdRqwUaW1Z7e+MgDi/BHU/1hqhgY1VV3ymCYIoSu1rcF7/osw5bf+CvFCMYPb7ovVZKDcZ+splX4QRa26hLcRbv4YpLzGGBra44cn8op54qzDA9gov+ZMtPjTpu3TSVTbEmrAaMR1w8yZJRXTXH1fMt9p6uAUccM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757674195; c=relaxed/simple;
	bh=627lTtKdmH+YBjt/y/YwpQVlSDrnpXf5cxgZozoo5uA=;
	h=To:Subject:From:Message-Id:Date; b=elJOd8bh8td75A66uq9gyCD+AY0m0FHAeoF+K0UE1or/CHYWnn1ZlRq6I0N3PJvXiRnA6LNq28vpCo9IsE7gqMhS0sETShRCAk3/1QZouo6+y5WepKDTmQRE2o7cP4wj0TJ41XV1/M9LSfwdSFNu/wONhmldkIjjiP/XCij5FzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdcfdW7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdcfdW7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CAC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757674193;
	bh=627lTtKdmH+YBjt/y/YwpQVlSDrnpXf5cxgZozoo5uA=;
	h=To:Subject:From:Date:From;
	b=GdcfdW7IcbOrcOnzOohN5xpHzn0Qqls0wyNoIMJtMU/h8HEQW8jx8lsdVmXYG14mD
	 q1QMwDrwaukq9OpvQFLdVtvn7DpSEcOGb70g8UR0Kc35HyZlYDBWZaPLcFKZXGLjpk
	 9ZRb9cK+nw9drFRMtjc5pmyEAaFWp7WJLcMgwfULE3YAByUi48BVCyob1k/JMZp+UT
	 TPissFHLkKsqwCt+8bjlUwHmyRbnx9cA4pDGjy1PcOmoUe/d5dKGB6YlJLvQzX2COE
	 T9HN+AWe9EnnEE+0jHKeKXP0ecWRuNP79cMFPJA/h24gIUFMcp84SvC5AA4U4WWVYj
	 6nfTB9ROTn8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27DCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767419357.450.8364627920250462331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dc378d2cce46bceaa2f16efd3dee1d94ca748ae0f1c47ed04fbe7789893a57
Date: Fri, 12 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757674193
