Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D12F2D322F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756317594; cv=none; b=VTGUcbLiEJXqoccJYcuJ0WyzFfkbeUv6XT30c8ahppYlQghG4aUpDiVZP+RBr8NBo6XEb0FhvbkTr9r/+RMwkyqi83bIrXaC0TZI0FhL69iyeiw2WkqpgQJv/6xdtj8yOX2E6yLB5CUkFQdBWtxkZK8lV7kmBLBWCc6JWyEXuBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756317594; c=relaxed/simple;
	bh=nvSJbEPpFhj+CAiyQLVNAGlqc1Y03ISBW3ILRtH0QFU=;
	h=To:Subject:From:Message-Id:Date; b=OCa3rOjDhtatBxjuMXcJgacrQFvus7rDKYI8PfXPlRrctKDVy17KSSUodP43lVibtrnR52YAZbsovSA5NFhUQ60ZXnF8XYs7vFtvNERo1kJUTuMLR2MPDqsCriBDap8GG0FOj0uEcWMZsORjCUh+LNgvUvl5UX68InEuXEJZudk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE0BO6R1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE0BO6R1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756317593;
	bh=nvSJbEPpFhj+CAiyQLVNAGlqc1Y03ISBW3ILRtH0QFU=;
	h=To:Subject:From:Date:From;
	b=HE0BO6R184QMtp0J4si2AuUoSu5B+a/wtJX5V1JGQWpSQlhkLf/ueM62K1df1jI/9
	 IIZYzipBlqJXq8bJoSi2UH2AOIr8x/PVhErsmCWbs6lSV2hpEeovVV6RLBdPgj3/ut
	 mRpi0IJambU8zPEfbIwc8f4tzbflABi5ploSgOkEfXtMSF5NYbPZZycX5pz4dvYT+z
	 m1UODFbihmh2aRfWL0UthkS86n4Z2q2MGbY+n8UUYQ62dphBs+PgOvSi2pyT8Q3mtG
	 3XYqAW03Sw9ZQBbZ7yrJo72z2HR0yjnXBHF9LcML+t0km/1lO3B0gN2BwZfpupzPAc
	 w/3MFwng8jJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F516CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631759357.26080.10358776592357143987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d2f3a11dfad079c55a838a9d82cca06c4c76037f29e5c40f61bf9e6114fdb8
Date: Wed, 27 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756317593
