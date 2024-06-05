Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA7F1990CB
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717588583; cv=none; b=fzn07BD/MYG1g1BP3BnyvG43/48wP1ySKxGLSc5mQuyyEi/SD8iXYO5FX2KPsYHu/5hlrcPyFVz17lfFVK5zdlVN3PXqmNbtekdTIwz6WQ77c/C0RuZsFSU3TuCpGlxXL44C8MMIZndFI1KzFON0JvnwLxf9TOmkEVeQ0TTNtck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717588583; c=relaxed/simple;
	bh=qU/47rn1eOn+7R4Dx9tA3HeV58bSMerSBhYuOhVx6Fk=;
	h=To:Subject:From:Message-Id:Date; b=DZb7pY7LpeirzBLJTVs+vHLRlTu7VKwIk3bx1DssxJQ/pw6x+hIBPljna9zy8EYF6MzvHl5f9GB882ponCO4ek+XbcO64Sg45hJKEno59Ij3usq5uvJqN/xitT9DCshGhpO/s/aapgpr94EyulUQvc8UcGUUFuNFee1G5VCiEro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDqjqKsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDqjqKsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21C1C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717588582;
	bh=qU/47rn1eOn+7R4Dx9tA3HeV58bSMerSBhYuOhVx6Fk=;
	h=To:Subject:From:Date:From;
	b=cDqjqKsTG45o6P6qn1MkER45BgGR5iT0HYhmOELmVj6UZXnq57wGq0F3hAMtfBiCN
	 eopqWhJ5QNuIlhNsweGA6du/+8VI1w5AsT17ZdpEQmKAs3cTARIr6h1mRKwnl11h6z
	 NtOtqycttRPw1U6Uin+G3MVgXn8xlX28kRXE7l8bOG1YXsjcb2JUDnoqfl/EUIDQ99
	 WcvTIG/QT7fQ9gOEM58pqodHiW07/ZucDDdxDa9OmjAHwtFuiAlovA/qeVfIxu3sO2
	 +qqEdVYkk2+NHdamcX5AcWjBm1Et0QUG112QjJoD1K+0RwE2mbgLr375hKppkVxGpi
	 o/gC65e7xQpJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4A6C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 11:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758858277.27102.8337938590039128020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0340ee6bfadbbdbec1ddb7614fb577a78efb88e7ed78a42f705b39cc091c6b70
Date: Wed, 05 Jun 2024 11:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717588582
