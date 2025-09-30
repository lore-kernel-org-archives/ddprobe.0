Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205BD168BD
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759194594; cv=none; b=aQjT9GD9wKdYnKKkpb4Jy3+C/pfMmRq0M/ak4isSy4RY1jmV0kpKptc6FD0dQXV8sPZ7FMhY29AE2mv8vOB+SnX9jwsC7/XFA8KY345+OOsFCDdIYdOIE/keHTCPMeaTYkpBPeL2hr6b5q3PQzsQwori1tR1N7DliSnreYr73gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759194594; c=relaxed/simple;
	bh=+mdxZjZU7kSrnRCZv/Gpu/4Rkx3byJGR+UHqP7gX3Bs=;
	h=To:Subject:From:Message-Id:Date; b=oEPDB2eDeMNM2Z7QHTtpzx4N3CGWwLBi14rIN0hEmUZuQMv7RzEys/yEjfotFGciyNiACKsHTDkdC4kZ+vLRNwRhnGA4jtQRFdCt5G2G7KNZCx9alixYzcQbvz4PFqPGAv7n5q8/nwTdJn5k+uXjg6bOTimJj1iNrOIaXDaZrQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruRiRS8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruRiRS8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FFFC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759194593;
	bh=+mdxZjZU7kSrnRCZv/Gpu/4Rkx3byJGR+UHqP7gX3Bs=;
	h=To:Subject:From:Date:From;
	b=ruRiRS8/qZMQ6dc66+CW3Kq3B87mWzqPGd3RvkIUFnzL2ACBeswEtFCVPBjas5gz/
	 4YkmaAulhkWJCtcV2PJuYS6r0KKA1vJNZo+dueZiQuuDsXf8TidW7F5Cr/tAk6UJhe
	 d1E4k5ElrkH1DCiiYnJHBIr/diIfo2VSYo3C3mJcDW2qxayd0BjSLWiOL+fDPAxxXz
	 VERfVyddhp46G6DGPOyeP9M7j0qXPx1ytoIl74qf7hYe1WCwRNkrrb5j/CJpJzztA/
	 dtVG3AO9nQ+rSSo6ciaOjCIV49iF96QINISf5XoMf6rshTfiXAQz5JsTEMsV5S3JOH
	 3p2t3GEamkNjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902BDCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919459358.2253.4850345482029961945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67dc13ca7d63c78b975f6a6bc1c02c9fda62d0bc0d2ef8a8a28ff157f69691b4
Date: Tue, 30 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759194593
