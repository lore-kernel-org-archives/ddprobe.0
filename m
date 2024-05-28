Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FAA7EADB
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716859463; cv=none; b=bju67hZKOkL2mwcRApxs1G3RCqIYUsUGxF89Bpdelfr41NhGxly17e8eDRm2/zo4jLsti0dbFE1GFdJxRrYyqCJTJmcup7zVZIJJUELd9L0yoYuL8+XEbOjQzpPU+ctwcr9+xyS130SCeXcpXtIJ939KuhXwgJ7vtkoHNf/sO+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716859463; c=relaxed/simple;
	bh=3NNXzgFTqBOqrMgARSraeJYv2pUWyifaT7Fm1EqbAnE=;
	h=To:Subject:From:Message-Id:Date; b=Et/NBz3bpG4vliLHBOQ/0Xikzx+jUn0DX6UGOoz+8UVZMttl26rUbzRGh7V3He5UPyxC7G/wl8tAhhrI/7MIsvwkNYO/LeXBjU1JADTiToBn+DbP1DmKQEVKuxk4IhskaBrXfI+17+Nlyzk4AEE5lMw7cmPPVG/aGP3UCXLNW0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3D3y+Kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3D3y+Kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DD7C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716859462;
	bh=3NNXzgFTqBOqrMgARSraeJYv2pUWyifaT7Fm1EqbAnE=;
	h=To:Subject:From:Date:From;
	b=g3D3y+KkR0tg41dCt7w4mDlNU6fWbgM2Rq2onWn3tJR2+56Wyqjic+yiqL64Y8mpK
	 Gw2UaywPwDhZPK+lTS+jBjOZ45e8gzJcKQEaRefmeLiF1SxXQc7fcAHe3HW3GIDn/X
	 4xJkZAj06QEGnqtHDhOyqIyxvnm+K6TIAakeyxVuN2TPutedO8LMKUnLSW/5HnPNny
	 tWgv2k3EsoCRQ+wFuYlBJJN7Yvd1/Yqbg+dWy+1fqvCCK5plmYoY0VLRzDaCntgwSU
	 NuB+6Uoyv5wziWdT1SFcgR/WMLCjzx7ExGAovlr+htexzQ85/uVsmsmSQw1gsFQlK9
	 AB1pD6oF7lKtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE51EC25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685946281.29760.8659469011970704024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2105f51514fd321dcb0fa1bc0a1e05e21636842069c14080f95ca2cb0c93e121
Date: Tue, 28 May 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716859462
