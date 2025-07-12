Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD9518D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752343194; cv=none; b=UfYxJXOFjhYiNCESptaLkl1uT+sgj8mxW+3QvBNr8DoGNPP2uzN6o3i03ucBQgSqxv4KHnH9PkbFo45SWmc7HjgLlZ3sUKQVt2HoWa69/kC4tw4LW8rsBwak5tUqJIov9nLAaScZoitcujuLDtQaD6SHBNlQ5pweV49m94/G+zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752343194; c=relaxed/simple;
	bh=mEweAmq9odKxfr7QW5Lmd4xtFR0joJ3oaieQ/dVpGT0=;
	h=To:Subject:From:Message-Id:Date; b=AusZRljb4He+zLR3ZCh4jC4WEGF7FtiLIPvLekRz7teZGokFDffG1vDicECGekOXstXkTf0FrQRXHomsG5Gmshn+vJEyOpqyaztdWxU2+tcwzrHpGcGFg1jjjtcGF8IyeinMWRnva/FTP9dmrVf5xUzbwk69vhCvS4m7qTry0BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUyBRwrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUyBRwrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24D1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752343193;
	bh=mEweAmq9odKxfr7QW5Lmd4xtFR0joJ3oaieQ/dVpGT0=;
	h=To:Subject:From:Date:From;
	b=uUyBRwrbzYMjw8o09qGx0HVEzz+9mJhlo68Jmy133EFe5BIxfnGo0dGd7dks6589M
	 NWMuKneMJVuGCCnPTvYrNmc21zGn1qwt5ZNBIZORNzC6TItr7UEFnMkuhJAOYlMlNy
	 3A7DBHnbUq9lw9wPITXoEhMLV5mnvpTE2zgkE4ri5QAJ2Ao7jGXss/9OlNd0gJ+Smx
	 +PRbD3q1B8VFr0em5yJso2Pq9dRcgrGcDS/FMi/M+oDwt5MP3loZMM7vF7jLciFpkH
	 kyrfguMEIFVFClOlhAGABF6BGNcn9whkzMQgxuM0SrTV1HMCD9MkObpG53kk1IlFLd
	 sg+9D7I36sbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901FEC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234319358.3241.12900720786293390797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7717dd9d769f862ac64c6e67fbd84951140528d6b758ddaaa8c8493df95e00
Date: Sat, 12 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752343193
