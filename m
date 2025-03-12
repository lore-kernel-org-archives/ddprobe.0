Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4802E2397BE
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741777134; cv=none; b=DQfTmZl/sPIJxS1/pdDJh6WoJvMIXFM7hF9iq+CoaMvxdTMF1mV6rI+up66Bpzv8nlbccp1oA1iMLjZ2lFVOeZ7E0RopePrqK+B1N4RhhTagiNFchS0E3TlaV0xSGSgVkJAMPxg54OR07fIRzA5OCDLxgdIvW+GK9Zh0yKcwF8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741777134; c=relaxed/simple;
	bh=QS3ywNxhBTPit7zCH/BLL4rtSm7375dBU+8NrSOdEL8=;
	h=To:Subject:From:Message-Id:Date; b=C4i3oQvQ6Q6G/3GbnC1fuLQ3VtPSgYT4jmhTRre9AnlFQeGS9rEsn0tLa6Dy28caEQz7MChT+MrJg/KhmfMGgqt+Q8qEZJbP7MAU+gL+JbroNFkQYKoY1uSwGJZk9YQpu6YV4aXLGGQZJCrRQk11ebJD88jYSCsmrqgQC59Ld14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK6u27RC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK6u27RC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB538C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741777133;
	bh=QS3ywNxhBTPit7zCH/BLL4rtSm7375dBU+8NrSOdEL8=;
	h=To:Subject:From:Date:From;
	b=IK6u27RCZUUiZfLlM75uz9dbkIz7o+Ya5mitj0w6GLm5TU0/KowTA4N2kkc1g97EH
	 vwYvT17aU7TaBB2dbA833Qc1JAAHJO5nmfw58+Tut2z0slxbIK+XDxntBMewSewSkl
	 BE+MCCP/zfFAdNlvmKL+6dZnm9WmwKLamCq04jGK0ir/S8SAIo6VKUV5F7ZyixKizG
	 Af755r24Hg9uPlEzYkf5YUPiPidWeE9C+FI10rEC8bEUpxIiuS0BBb+HNAumLNYQkF
	 AtzqOrZp3jqpPEV2L4hp2Q3qyoUOfxqf5H2bUMyWVwruBMv32XRrngkSgHb4/4S5gE
	 AmcDHYQxmNnMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F72C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177713361.23369.17589876555721096024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf3f2cee266b2757c6adb6aa76a791487255469d52fb00181e9e42fddab7bbc
Date: Wed, 12 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741777133
