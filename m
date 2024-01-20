Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEADDFC12
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705766897; cv=none; b=HNTLVcvqpUQRf/m6hYrCE5tvNrTmj7eHCm5/CHfqGuH+ztDG0RYBK9leUZDO5OGUHqovmB5twWGGvR7W1iBrmhZsewDT9wd86pPjjt4a5yYFAbRThZCKSIDcCoIy66+3UcDzd5sJpiQHGgNcI6QTwMuUa7vXzuI8pIqhwUDK+Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705766897; c=relaxed/simple;
	bh=clD+yWmQg61oHRVfZ6NgWkmVX0kyO/b34EeTEoOjdfc=;
	h=To:Subject:From:Message-Id:Date; b=Y0sNFvMLBS7gSkHNcMa+2DU2yhUdidoq6XqlTyElj9vAwTTvio7+zw2Fpl0hbguANzQzacrkkFw2Y+vp9H1t9T7yJKoPXJ6tkGxL+eWs5bQVp7xgUxMGaDBp0OhOWMw3hCGRr+rz3bfLM04c4+NSgvvoNMsjTK4050SDGKkNERY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYa8X4Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYa8X4Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BB6C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705766896;
	bh=clD+yWmQg61oHRVfZ6NgWkmVX0kyO/b34EeTEoOjdfc=;
	h=To:Subject:From:Date:From;
	b=XYa8X4Daqaz/ISh+Bc6v4x86gP9dsU/gvk6cgCCpC59axiIiAll2MrYGw65dKrlYq
	 NqVNaWFPGTeBMXGgP0QwvWhCkJzMDLaLTG0HagAlR+r3io0jPu3q7YQkX306yMZNUw
	 j9u0t/Wdiygvl36Mg+BRNi2+aV3n2n4+3+yNyoIhF8xdW6KzkK2cjPu4BE0c7pDEHu
	 0k+6bw02gu3675Xwc3PQeSta3eC3XFz/4sXOW0wTxy3FQtC9QVxhfGWxXFvFm8GoxI
	 M7Gts4A64DQD8/LrHX5aGw+eFiAMC/+dbn2+R2A1wNJKy3H8yeHpyPTl7dl3Y/iF1o
	 WpmQPoPMM1rqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6027BC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170576689636.14688.15156733478521530453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ea8d9f6faf21d8d98ac060c2554a72c4c38af94e403e5f48bf42689213f944
Date: Sat, 20 Jan 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705766896
