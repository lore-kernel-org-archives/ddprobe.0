Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08145261588
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761607794; cv=none; b=MaTnf92VMurBYOaQmibkTatwrzvdyaBf8Vc4RLn9yvatd2D47zcmhgUVyfTxOJL+whla82R/ls0tOoe9oLTr5OSbt7IhA4vpVATzOMZzhvpBIGAi8gRPjMCWuVQgBuSuJ8RerCd/NiGdY1rrvaDIYRxJWirlXQr67hWCs9gcsgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761607794; c=relaxed/simple;
	bh=GvYRb7lUAtnI9lZndSutfqzmQqe990NB1nOg6wc4BGc=;
	h=To:Subject:From:Message-Id:Date; b=qqxaQrZJy9/qBb5QXDL5+Wj25pKjBTpLAohfISRd7jo1sYzq3YY3qK7BmX5UsIS7ShBn3WeZLregN/XDzGx18oaDOwnRieHhioqcfB5/hsyTTkSwWiAU2+s9djZTKl71syJb/TcE/T4ukqvflq07xIP6yY5+Z5V2neRaMc3VjEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hzhuc/Rv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hzhuc/Rv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2207C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761607793;
	bh=GvYRb7lUAtnI9lZndSutfqzmQqe990NB1nOg6wc4BGc=;
	h=To:Subject:From:Date:From;
	b=Hzhuc/Rven1J5KMxWeJ2LX5VA965Sy43cl80X+l3wDXzMyMJ+1aePnJxMmHuEqM9B
	 0VTgNC5xTZOPFnfnsE4oLtU9oNQ6VRWN2uZZMxmyPIk3ctanCxVbSW77XqrpH90lHp
	 ba6bDP1qdOClxatg03sH2iWwjvfmsOKa/Uq2PA7SSdIk0rydX5QHxVN7alfGag/ulg
	 Erjc9qa9p+pe2bMwUwRlKNsWkACSUd5SQ4AUdzLI+9NhLIcUk9/GkSKrlMDKtKVPC0
	 DtzT6QQLV18uaIEKTzPQj21QG2x8ateoIEbQr+AVJ6vcjWjloKtqDWboDqLtJKyPj0
	 Rv6pg8FK9oKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AC4CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160779359.6736.7995840565911546672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221792dd66ad2e481816fbb75e1557c4f565b99e978313111c40a37ec9131401
Date: Mon, 27 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761607793
