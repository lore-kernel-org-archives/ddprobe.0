Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177FE16132A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756750794; cv=none; b=o0UtCMicMjNqJ5OVG+P6uIi6iXltsgaUofelA5Xn4I+nxsX9CrHUDgQqX+TqytQLY8km5uIcfBpo2lapSUZpnT8SiAEsM4gA7m47WaMirudOo0Qs0yy590KHOY6xrjw9LC+oVQsbh63oWHRUhr5+9C065SQfKRYp+Z5D7Jy8Vbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756750794; c=relaxed/simple;
	bh=R5a++f/8o00bj6xoduhOertK0wRiF7F5c9oL+1SofO4=;
	h=To:Subject:From:Message-Id:Date; b=YBfaWZR6h9OP7udZzq9prjZ6tOdvphkAfyWg7Baa13QPzSJuBflPukANrHKx1ON+H7mCo1QgKlGZvdtiQ1CPsdJgK4qvHhfMjl/Y2J4vr/7vMCk6QTVPar9U6WIzBH7AVUx5j2ME7myVpJjIKYO7YtPYVFO4CpDpBgcjNdeiM+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rje5g+aC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rje5g+aC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CCCC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756750793;
	bh=R5a++f/8o00bj6xoduhOertK0wRiF7F5c9oL+1SofO4=;
	h=To:Subject:From:Date:From;
	b=rje5g+aC/VBbJAEOcwdYqrREMJk/w9qLUMKtKiQIJD3UBFOB3UrmU+c8l3+8TYqKK
	 ppAAUDaMx/5yh/r0/pcKyxRNtdmTyXVVJ+e04FEYSiWScFFkmc9b/hkERiv4YSeJxs
	 H+knYo149d5ZYSLGP/R3QP3EeT8eWYnx5m6YWZFXMUQucXbwwdTI7JTnlwfnChuRi4
	 7GQLB7hasS8rCKsOykFDLaCGGEY1ZjnboyVMKWe7TjZHuEArD2rmonidzc/LphRQvD
	 /jk7p8eqS4C0ZgUCz97gX4rju7b5kTB/8KlXbVzNZtoZ7dUOswAFee4Q/SC7IpXiw5
	 4Lj+xXDHQEGhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920DFCA1000
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675079358.8003.17957145022503932491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e749435aed11f9f6da9eba30387f8bd3f13fdd89aba9fac10cf266d0a50653d3
Date: Mon, 01 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756750793
