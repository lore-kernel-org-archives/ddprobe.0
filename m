Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3276B1E521
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746019194; cv=none; b=m88INCXjwTTm8pGTCHX5236xdWms1BdG2rcLSCVWgRCT5ezkvEsXVzseylGQBZVbuCCLDf5mQyFJqt21xYqm0RYP+jvc9qM8HkquOf5EEurYK21DKWRaPWQ8lRwO5HlIYuJr3GZuRWlauKN9rD/Jup2vM+VifAnr6ycRmH76Pkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746019194; c=relaxed/simple;
	bh=Ar7uiFB+079D3GCLMhsgzuuO/bBq5WvovspomGk/HNg=;
	h=To:Subject:From:Message-Id:Date; b=khsksGj1KEn8f7CuOT5r/xXGW3vAjq7keTElJoS9gpAOyrPoe+o/zHkCkVRhA/OKsInV+QjEFIERoYzYEfdMlsELADIAMC63uEjSbjQl7ZQSA/+FiHYHBjvrXUJN49Taj6ujQhI6gXvWhCjKrRDFV7xgb5jnGVSm2vWz3cbzLjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyW4YTGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyW4YTGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746019193;
	bh=Ar7uiFB+079D3GCLMhsgzuuO/bBq5WvovspomGk/HNg=;
	h=To:Subject:From:Date:From;
	b=tyW4YTGwLatgdTlZDpCAmxpOnvj4u2cOodL7bF+qjDQRGHGbu3niFOBhsZ8dPepqm
	 ZfJ6jDKL5ivN1gBSa1TJJ290VHUM4MMdU8o3DXKeB8d8JVHm5flSSk+k0V+dZzqaET
	 C2ZVr3EST6BseJK+lS7vvpqPAa6npdcEW/astFqWmFyQXCKvp0w+qRVH+pBOkpuPAj
	 Rw8RF3T8q87NX7fcEMXFRvZ94v96v+tZ9Kzt5L3dvnEeS+KeL9tlvp+sTDLOIVAItA
	 f+tbDFLNFzoW7qz1i+afTMu0wV3WUBWIOMeQgxHIMv6AGFQwiTS/M7hgMH5Ba0/hZ+
	 qCbREJJIJpkNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90382C3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601919358.29521.7681085975429064506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aea727283d5e963edcd4610c70ec047ea1b3c69b2866b79f1cbdf2e5d9be4ff
Date: Wed, 30 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746019193
