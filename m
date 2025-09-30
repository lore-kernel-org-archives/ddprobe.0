Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26452238C15
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759228794; cv=none; b=RGLvC1PLpilPX6xCCno2DdSmu99aUXQQEmYX/A9qtacBss5WpJCymwiVum7980L+B0iIJvnVYYLKwp6HHbQfZCQokm8Ff4xC5KEbPoICvUar+h4zE6DeMQUnwTXHxXNm/fo66oD+jg23KAJf6KhrPZ9NIdyz0emB7eLv7ubHIgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759228794; c=relaxed/simple;
	bh=+LUn/6ZY521dasIhAIt8xaWcjqbvs60Lt/vCYvu64/M=;
	h=To:Subject:From:Message-Id:Date; b=QEUBFHafZHFzTjxhoS5UWZIa4PN3rDAetl3vHQdUpBN8OTuYszNCfBPiJajHIrujeN4SfiHKB5UpMvfTwpFvN+8VNyYZ0/RD3lQaPH3z3M/ZAM150olo1M9YgwViD4Nq1J5e1yOvjBUUI2S5Q+zsaktugg069/6+WWOFEWEvE7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBxJGO79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBxJGO79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A783EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759228793;
	bh=+LUn/6ZY521dasIhAIt8xaWcjqbvs60Lt/vCYvu64/M=;
	h=To:Subject:From:Date:From;
	b=HBxJGO79UiROsMsr8i29rcvgaN+5xGhQZW7wXjC8QpZKf4hA7xO4RR0U9GAqLTlVl
	 Er40IYnUnW5lCdsePrsiC2Bar53romNmMDegxRIPBpDfeCQdKy1VlfodTdLf8WPkp2
	 kuB1+82lJfCXklq2eFJMP3KMvdnXcQNeJ7uE5nZj2BvYhJh3I0Iavw3X7wprObJWHm
	 c3rcdOtj083AHKkgPpCI60RuorMRBLx3z6eB71QIK5/n2w39qg1QmRW1dMwVdfYtaX
	 eARfO2/quUOrZHzCOswMi3Tkd1EdQDBoFA+oQV2CkuMUssFBclg/EvzUnNfpqcInhv
	 //NvpI+ca2gLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935A9CCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922879359.6861.1259703823230148403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb4766e1195ae8fd8547deaea4656935b5e5edc74b8cb1507b816b2a07cfe4f
Date: Tue, 30 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759228793
