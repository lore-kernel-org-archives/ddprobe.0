Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A988F5E
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101154; cv=none; b=KILGdP1lPCSJo3KRnPi7peKIRd4AZ9FjGVwvtQpgVNWlON3heTfLvweIwAUcqXgAtCahKz+iEvHWE/6QOGTpVJZ0t8HpWtbG9Q8DQBuZsfPwh9VGK5gMbEXGG2GkYl0B1fQXZsm7zSGUE/j4TP1lnNOBfpWwAmYqz1etOpistko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101154; c=relaxed/simple;
	bh=XNKGGLBxWSO4q3bp6yQ53yPKkhmgqHLSHQhJUHNxGNo=;
	h=To:Subject:From:Message-Id:Date; b=E84FQzOh+elo29sJyKYWGAKnnaLwaXnAhZGdsnnrXgEtcLlHleyilX7GMIKdCFl4nAin/REt1kJtTYvIzmhtTZUkIZ+ZipQNqfPo0fb4zD+dZ3ioNwgwMQShLAPpZrxRVeX1brN+K/s19SuZfmR8mcSlOvwEwq2EPwltsUZ07c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4CBkLZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4CBkLZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD645C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734101153;
	bh=XNKGGLBxWSO4q3bp6yQ53yPKkhmgqHLSHQhJUHNxGNo=;
	h=To:Subject:From:Date:From;
	b=R4CBkLZAL1PTL7M3nxe+X2gHk6K3JtyMGzbHJhfMzjGeP4kVElV8ohb2cgjANlKzp
	 benzXW62YLIin9ScNwNpR7hJnbcT1NpDPUbSNB+S64W7NzLeVsT/CS4zLkasvZdgrs
	 qIdpTTPi50v5aTNgiQFe0hl1Um5FB1NJ9yWcVZsWcpP0pcHXqj/tjgscfct99SfrZN
	 H30J2oW5nO8srzl5XS+o95F6/YuPyba0lbUefrvWYnjhWOjVsOqWY9nCdF7yG0gDjO
	 HB9dG+rk11LZSauAsdis4ckgjxgMoxuf0zNLDgiuSA1kwHQJqEiEQ9AfICM0/fldtV
	 4NaQ7jIXnv/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95875E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173410115360.9556.17360432076280727945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ee4acdedd6a3da139a56168633c4870317d664e2288054f5dbb97ebd4e09c3
Date: Fri, 13 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734101153
