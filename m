Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB231E9919
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775067334; cv=none; b=hslDBRAKhg/7dkOahi6AmQBnp/qxjHBOg5OYxtwVdbWCfBvKUTkDmWzZ3cJrqfSxk2zVyj7r2kJjln8fip+FTqi//IvZFUF1QJ/I632YXyi7aGtv90le2VmYXJ6XELdO3t/AA75L87pqbrTiTtC31ngrTw9dNdhTJr6b9nEvMI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775067334; c=relaxed/simple;
	bh=9v5G3Xs8e7HPWaLkoOwg0pJGj6VPBvpvbVd3gfcY1Bg=;
	h=To:Subject:From:Message-Id:Date; b=jsiyHgDeGG7evxUr8B3kxSuDhfIccygsbe4JOIFt6ABTeJYVNqMyeF04vs3g/J3uJhLpE09sjgPyWxxrvI/vCOiKPPo2kMP+w8FtunzqenokOloU9XZODjxVMejumcpqWQpQYUyoMlUXf7Hx5Ndm9WaGf+s3ICPbSVjlrUzxXWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrgPauzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrgPauzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CF7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775067333;
	bh=9v5G3Xs8e7HPWaLkoOwg0pJGj6VPBvpvbVd3gfcY1Bg=;
	h=To:Subject:From:Date:From;
	b=MrgPauzjhKClgrrmRW1IJVnE/1RWJSCwy/JyKPO4M9Hk8ktKdd6TwScdBxjUVEMO0
	 l8V3SGIZ7iSbC5xbxfEjkSh9S3OAovt+cQ0IouA40id/8yzjuXPSmNahuBmbtMxt3A
	 lWqFQT3qS7yrGYDiHPBKZFwmkc86jXJrz3sZvyFYTavYOk7n16nLKx8/ZMDpI+LDEQ
	 27vmWYzu0HR/bhkMejxv6mylfR6EQq5QUFsrK75VSUbijnmFnBLRWhiMlK5SzCepLO
	 Ko9oj0kZwQmUPwMP+gTz+H+12uMRSoI4eTvxzSQ6cjGJn3mu8wWhhC4fa4RAE1bVTt
	 Z2UJ6sW988uyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B128D10F9313
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506733369.10021.12671456426954992587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e40ff01378e102ab9764d7e36ba626dca63ef1fecea1f4d3f2d2eeec8628be
Date: Wed, 01 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775067333
