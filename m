Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39530242D70
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170034; cv=none; b=Av6nmi1iC/lxjliOCSwXN5KkFWh7zdgOsHXl//vzMNs5yh0oauVfhbaSvL681j6Q++T+r+K5nbNYcGQC0OLL6kbsYNDfDihf30XZDJ+0J9TfHuvyaFI5P5Jzmd0rqJQvIizMwWyuU0tXW+rMJldxOmoSwkaDpIXYVZEyw8x8Q/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170034; c=relaxed/simple;
	bh=If5KoDMiqkGGJ2+nIQPBhww8YF9HuaNX6dVThRTOu1Q=;
	h=To:Subject:From:Message-Id:Date; b=sf1DL3t0ye8i/sxs/l7etBhXIRRPOS3bW7KAcWmpiMjMPSWr1aXTdUx9Rt3XxnDuZkJP9ALjdt7J4MwwkttSX05zNkRrTlWxg/k32MNlAyCILwrwEMSweVKw/9b9xmDByJar50YLtzl/CsAFyJG/+IGN9nk3Yq+pqG9s159qjm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmmbvvLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmmbvvLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0844C116D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767170033;
	bh=If5KoDMiqkGGJ2+nIQPBhww8YF9HuaNX6dVThRTOu1Q=;
	h=To:Subject:From:Date:From;
	b=rmmbvvLxwn9qSwGcF/nCyT3FyMd1MVZsabzK315BfERnf/v90mGMCZYLwYXHqnM3e
	 2A3BfPmm2L1XBRmr5aN7Fc7uk5ESc3XBhHfyiqiNxUBmsKUQgmrtIUQHecUAlw8PQM
	 k3GSG5zG0DsblSsnZnF5FF14+sUe/mdO3QiNDvj6DtmKkIR/ntScQAworQQ1HX3vNo
	 WvWcxkzRD1cKt7I6JEwu1PhsLN99indgN7PZ2FAACf4a5vfuNQnKZ3eG3Y9z8G06SP
	 +zAFjt8E1vdlvQdFvy1hVpsqgwrXP40jwKKqmnzJIF9W7xmvwcUXAh9ia2gpvvidsv
	 aeTa/TKT/Lqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E2EE57D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717003358.13401.14262241269546212838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf2619a9e54a521187dc304b6b8d44d3827c454056e48731610604870fc50de
Date: Wed, 31 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767170033
