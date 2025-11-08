Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4879A937
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762600793; cv=none; b=cuFytkLSzYLq4aJx+tqPqVNu0JWDYf7u0p1d8hpqx/+Pr0nOTMvyhpMitziakYKgz+oz6dnJkKrkteZn6brV+Nn69ALnp8GQgq5NyqIkvHjxhOOyPQlT/IWrPFy4O1ibW5cXCCJFhX7jocd2pLds+EIxszpZdPqJ99lfMoMenR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762600793; c=relaxed/simple;
	bh=m3Ek9gk1nBUVXSwVwS1HfvWIbcvh6phBzltY+ACIbpM=;
	h=To:Subject:From:Message-Id:Date; b=nplJQqUtOzdsYVCRcq/vb1NixTnOWkzuzZ2gPibiiz9sVscdBO+qmB3wg8HwAzCTHHFO6GCkYVz70dSxIIUhRLLjHPATQRLv9PpQOpV28X0NVNvPBVnhlG1l3LTo3jbK0kaIKude4YKXbHnUODDFgK6+SVbIT84raEUMfpPyl6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzYkZHHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzYkZHHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2168C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762600793;
	bh=m3Ek9gk1nBUVXSwVwS1HfvWIbcvh6phBzltY+ACIbpM=;
	h=To:Subject:From:Date:From;
	b=BzYkZHHntQMQZii3tvZoJaSae0wqLcH7FIynsDnWJsxRoml2aWoZq7sddZbI6u3+2
	 AWkE0j+bmhsp/yCa5oNKvA4pISVxPZXIg4EfhPuCkKlKbCUlS61KZR7t5gN1+HIbEs
	 cHEBD1/KWLyMroA+JY8UyGKuAe8eMZtzuq9l1eUDI2luXifpxPY4V9nVgTbOg90ibc
	 0e2lOwCIeI1gakQSs6aUlQwEOI4itGP8U9vDqFMWTcIdkMOb76SccNORlA02dJnHRk
	 RTTkBb6+kzsKr2Lc0h8yyYyQrIFjGb6AY3VT78k+MqjVq2crrTXm/0cNGORv5HfZRb
	 D2GwHfmc0WWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941EECCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260079358.3250.6518711672539703673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4471ad2f4c18db9b45eafc59f592c436850cd1d374d98c35348e1126be1602f
Date: Sat, 08 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762600793
