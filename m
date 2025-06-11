Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8B6450EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749619194; cv=none; b=RT7WwofzWUH1SwD3kYOLOdRdqxqsVYTbUQGT+1InUernE3x6Ek7sQ0ok9G9XJkWm6uxgz0HlB8GkbQvx9Lem1izq1dCri8UOl2k+QzaxqYQeuSGtm32hBDNyU0a6txv6CSh2yz98eQfHt5PmdxsyQEjoSGgXIdEdW+a2kJUF0oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749619194; c=relaxed/simple;
	bh=4TEVcwXVxB8EZPdIbLHmwGbpYQ93G2iO7AoLzBp39eo=;
	h=To:Subject:From:Message-Id:Date; b=DK8dv9tJY6Yewz1mi4jIh2u9ba4Ep68soDP8Juj4J9TmyVlsF439x7X7TzxHZdedz4hq68+PyOYEc2/4j3rjF1vlUnR4to7dos/JDKFcINcBIg9IC5xdoPPRzztSyh6s9r8ngyu5ZV7kusKgxEjkp1VD8rnXzxOLZeaHrHGXhnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hl4loxwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hl4loxwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2DC4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749619193;
	bh=4TEVcwXVxB8EZPdIbLHmwGbpYQ93G2iO7AoLzBp39eo=;
	h=To:Subject:From:Date:From;
	b=Hl4loxwbYHFgaDBOulC1w1KK6NMnUVdwUujzp1ZtttGfHzXmAw0ANE+vFecnPN884
	 KJCJYEgUw+kMjnv4fOUCG1MfSGLan3NxRlVB8pBbxhf06Q2ZwesJX3AS5bARR0/aa7
	 a3NAQNCs1RX8OFOsw1whVrCnQswONaC/S29BdpAk/nt6IGv0DYbWyBv4YlEQAL4ReW
	 fDfIOTnrQPFfFKC46T7ziGjGk0e2NLKdqorPbBr/LtAyahCv0ZIyW+p9VjhFZNlTC/
	 ZK2YlCRbUMMumxSxGNlkqFRrKiAJR+nzAVD7TsrFqutHkbabzgFDJB0rd6OOHxjzXO
	 HPtq3C6JdIajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C9C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961919357.2063.16021389660657192620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8972df6fd5af2564a31003b253ad5c3e5d0be9880d8c69e4d3fb5faedc4d109
Date: Wed, 11 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749619193
