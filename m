Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBDA2DBF4E
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750079994; cv=none; b=YUEqFBvULqjBwsVakShhfRfsShU4KcljQygWsT2vP7IM3TZkw3kKcSNPzhIwSdMsKrtjniAgFg9gIGltQrba41DJVfnQvgfKtW6So5VWMATlwFHW8bssr29rpTbPBCJnJvz8Z8EFFoRB4Tjst54ojET1jZXUx0e9l5XoiffLYAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750079994; c=relaxed/simple;
	bh=LzG1t0Dkvmc2jUlSr/8AL5kMaDsSlma/gFSSSkJBy/g=;
	h=To:Subject:From:Message-Id:Date; b=ibOZbOQXNEXo4EWkXhvhimqqtymvS0bA5PaFfiRvkwu10FBk+3QlBNStBStQNJO2JZ433iORgwdEVq5cKze23gEF6MTwAC/EZEUOaHJreVtbHtBD0jyZsyA6wmFFh/uJ6HzRhMDD1fZcFoswM+9UrGneH5aqwSg8WywriOAquHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrF+2HlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrF+2HlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3923C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750079993;
	bh=LzG1t0Dkvmc2jUlSr/8AL5kMaDsSlma/gFSSSkJBy/g=;
	h=To:Subject:From:Date:From;
	b=WrF+2HlEJgdkky95dx3KIzR3SCdhjs8lrF+CV5BOsnkxsQtF43K7zb8xwnc4NPNnj
	 +Cp2V9Fy8xUAwia9va7ToUoQMz5vUvOvb4hx0fUmAvnov4rbWNOZgXeuhcO0oNv3ON
	 A+p1hM/IldhJ218HjGrEyYk48cMHYkTdS9gTaql3mQhsJlBg3ZZFdQTOT2Xr2dEftm
	 PwurD/mWgKAyT/DwLVS5aMWYDQVJL2REnvnopB3Uj2eECG6iMG2FLpbzo6IRhirZdp
	 8+9KNSlWS5vG7EUbux/F+3QmbJwtfVQUKR8/ZaSukKqbHoXhg4mvxziUsuYAOZb+Th
	 Dvea2+QkR4H9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93563C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007999359.9824.13879608445244265573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4ce25773a6b7d84cb91ae2a522cd854c256a994887a02f7dc0ccab69c973b0
Date: Mon, 16 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750079993
