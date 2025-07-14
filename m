Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2930DBE65
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752469194; cv=none; b=CySJHLTHQa6XwqEN0l7K/7futMWbf1Ffx2PS9i/y34KywX60xYvOzrItnWpj7RQLUlw9j3d5L7vbfJ2Bh6unIyEVJxSLIaan5Mn1SYrfaM7E0+8c6AnvPYk9YM7Ucy3MZtWoz61VUudLAC8dx4av4eO4slW7i9ST/Cy4Oku0yBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752469194; c=relaxed/simple;
	bh=hU691n+COTd6Qw8GsHUfePpBBXLWceYZ4/lMo6AxIYk=;
	h=To:Subject:From:Message-Id:Date; b=JLlTVrLJK+CWJh2bNSTUN5Cdef866uuhYxzwKYpRRw93RV08P67fZ2W5Q8w08hF3QS8UstSOE0HF33BYE4bp2Hw344EJ5LmmS+hgLQjdgstRQzwCqJwVxJq6iA9P7PGuQqdT7eVgbxO5k/2XS+Ac5UPYaFYdK/53bZ8D415RL3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if5qq2HB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if5qq2HB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752469193;
	bh=hU691n+COTd6Qw8GsHUfePpBBXLWceYZ4/lMo6AxIYk=;
	h=To:Subject:From:Date:From;
	b=if5qq2HBDzy3LdTU8b8aETivxz2hGXdM6+Jpye8XzPCyo/jSTfsqUwuoJ+Cz6XbAj
	 daX22GwHN4OF9UY9vdP22LF9VxijV85zibau+/j4OuTZt/PC68sZ/j0EPHBfidbyi/
	 Po5Qk3vxocEgtTL1j20PD5yUopwSebdujpTzHbBTZEUoUJb3LIVSiwLXbYL4zXifjf
	 BHzpagF75bVQbgjz1GJ8+qCr6SoA6xVvWVypErGpMrHSEKGU1nEvjItTLtVQ6zbI3m
	 ePT9DgipRO5fb8c3ceULnj5liD4qzQT+xmFJ+b8XhkwkJ3obdOQmlmokde+Wm/QPCc
	 7PU16Ozaw2GSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94772C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246919359.12189.14840959093276253867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a782d894af1ec2a7021b3f2e85de66c5340f6850f1a4f3c6ca161a0a3821cdab
Date: Mon, 14 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752469193
