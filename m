Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317B029AF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727749554; cv=none; b=EY/+acyloqBSciuNByEeYGBKDWbsNoBjnIBu7Fzxk6+tiT2peVcvtL3tp+QgWstmrtZBrqA5lWKlOyYm16euMATCTOGHKpf6/1UiiyIdkMbrp6Nwrvnr9UhMlgwtPruUO4OheHRaxUlYD1BiVZ46anH7xszfFiEucZzn/H50vvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727749554; c=relaxed/simple;
	bh=7ADZV1b1RqIaDn2rcAjswRsPba2B0uOTmK38VYDlCeo=;
	h=To:Subject:From:Message-Id:Date; b=BLV94yVOu668Got2EzrA0FrSw8VwlnwIjTUmH9659h0DyOYvkyfM4E3HggRI+TBytcSal2m+X/hD+BJKhDPx0KPjme7C3qNu84VLqWxxkxEtVplsnwHE0axdFe8nWXkuWCZteznQoq8MpWoaKidwNy0l6UyTNExza7xr+f+t+I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUtVvVzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUtVvVzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C92C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727749553;
	bh=7ADZV1b1RqIaDn2rcAjswRsPba2B0uOTmK38VYDlCeo=;
	h=To:Subject:From:Date:From;
	b=jUtVvVzgyP8E1olvojDf/7BvY5lzoit7EkMV5hbDDyYCMKdfBfT5VpiADQARwrrw/
	 s73rNRNpw/L2DhQgRbhvmpVyYdmy8KzWVmyPal9gaHv5rFR1uxDJOtn+F69PTxjHzB
	 h4YgH+/+45cVV7RCz11jxZBvBFDv4cFO953UJOKdrMhkpvNmZ6faypZfwiw/yySasj
	 mFlavkG/m0jz9WVnI+9aZfEX/Spqi+MfR14POTfCb3UovMujV0ZmDaC1R8cMF+ADq3
	 EkvgxaqO8rFVC1GhKDZEQ/pDW/skwe0/lFRd8v9rEUf01Y3BqC9YELlMTPZWRgyzcL
	 yWOr9ED7Oj5sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0724CEB2DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774955363.5952.10034943330544266329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddffd0c5aeb00b853984821eed3c8dab2ec872dabf16a34c9b9add22ef2bd13
Date: Tue, 01 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727749553
