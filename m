Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E57E38AC79
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789426234; cv=none; b=YavOWpxiYI920j8Qsams7F7zYFJb8ulVn2/NydaFiNPh/vFparisvfvtNRQlcLHAA/S9VySzIYF+0F//TucgmqBqJRDE7tR5um/CPHdkhAhoIlYd32rKmV2PDcn/MUbP0i2YY26BhLFM2pXlRhpHyyinrevD8FAbnvd/4YuIfkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789426234; c=relaxed/simple;
	bh=SbFumRsdA3j1HGdG5n/duyYIHnlSIhSAq4Wxh8Lj1MM=;
	h=To:Subject:From:Message-Id:Date; b=NpKYCxXllvWFaV85Hbw4tGYv5R2RPjYwEgM/W4wmOnlcWibU+ry2NLeN59l1cQabrdiKuXxmLq5msBa3puKLANPQu8S1vsXRYagjH+XDae0vIfA0UAv058W899isCicIGwcrvRBNLpKJeXyp6LWZW0AxOEon1U8iFXUScLdWK6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAJRR7U4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAJRR7U4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81D6C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789426233;
	bh=SbFumRsdA3j1HGdG5n/duyYIHnlSIhSAq4Wxh8Lj1MM=;
	h=To:Subject:From:Date:From;
	b=uAJRR7U4dwD7ufR8tXUWo6ljQMLpOGuPCOC9IfLz3mD92apHNA85QZGVzd7nN2DYM
	 TuIMip/vJhAQhHlLKC2EUEeyaEur9j7BE/2UodsD18H6xWIPGbNJaOZvNSOuqma7Kg
	 z8ZNyAmVjZXAezz+QQyTM1prdRQ1C3I0qKm9OjhhQbJvriDXT/4XytHkoCE3K4/+KR
	 Q0Jz7tvLkFs+04oVP8rqgrkEQVvwF/txDRcjBxqlqUyVBjm5Rl65S8qVM1xFhQYrSz
	 CyD5GGfqAQGjcTI/Q3VxTKjWxnJuyjRCRY5MrD0xKeMT8UeGt8d2JEd0cPKgfmAAec
	 uVZ+7UzaaK6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B343CC88E75
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942623372.23588.9504452567868383993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7add95c79f10c246b019d5d48f6c1490d0a807e02f68f3939c965b1902dafc0
Date: Mon, 14 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789426233
