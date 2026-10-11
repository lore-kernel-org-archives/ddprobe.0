Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E04364935
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791738034; cv=none; b=VOgruhuWxfZc3DeXNBHmqaNciZuoBF1hVr2ce5Kb2HKL9Ly/mmwMMXpECFF6TzFyTGPETLxVQmxvDLC9N3AMXRU4pJ/W/CqTD+4NbE1FHDTFEy7LDSy53OMjvqKOpCgWxGIbXZOb9GwKs5x2wcTTxpvgwcrSdE+U6XzQQIV6/LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791738034; c=relaxed/simple;
	bh=Zw+Kl0XWHWYOhDvVMNuP9PLsDsRjeEVzzl2t5aU14kE=;
	h=To:Subject:From:Message-Id:Date; b=FsnAr6pJmhklxLqCaAaiRrOaOPQFWuvMXTPk7GSwDm+WrIp67CSQYEzxNXzbG9q6QKyTnVMNFR123gsrua41huc8WLGfqqd3GMAtNnQT15JnZUhbsHIYo+0mkQDbIx8RG8XksCpNLNCcJ1f5Bug7GAG400pr9h8h0ZYTr3ZAM0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtLlqIZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtLlqIZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23B7C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791738033;
	bh=Zw+Kl0XWHWYOhDvVMNuP9PLsDsRjeEVzzl2t5aU14kE=;
	h=To:Subject:From:Date:From;
	b=FtLlqIZEwtTL8aUELtbPLty76NiXwIts+QNYXBmxLhv0jT0M5Ckx9A0hfppUZkpQn
	 p6t8dFWTQBLQZJcqBRBquwWris8fhAI0ihowOrSVN/OafRDN3EpnhWcX5AO9cwx8nB
	 ENZPgOJCoSxJwlXP6dL/F8yCPb1KI4M5cMk+KvUIExzS2WXVQhSEJZwdBsMtAQzow1
	 +nFNFNlNUN6vo6eQUfpJfp50LvSFYmx78QfEhQgYWD+UI/h7k6tc0EDGM+mnMzNsfr
	 MQLG4kcS3DrfCnA6XjfJemTLOySrSf0ZRE6IoayOFanT4KzW1bamCqIL3BJ8vj72R6
	 Y5nBtHjGm6r0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD15BCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173803368.5655.8045739117188961050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40273a8051364988972a3c00a59f4479d2afff9da0b382c7104ab9d51594be50
Date: Sun, 11 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791738033
