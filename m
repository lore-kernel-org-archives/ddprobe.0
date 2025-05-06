Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C611283683
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746544794; cv=none; b=aKStqV3WPiZPGktPk9gvHKXOU2+slG/EzL5u2WzIv0ZjhM/TBwcFOgC4brj41znZGBbM+hmjdXHHaoM4yKWAwNxB9w2/oEnimU5L5RYiY4u5HZckHVe/BcbvBlwcuBi5LYlxz6a6mKGkjH+quYQpR6yg1DY6zVJLFMljX31Ngcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746544794; c=relaxed/simple;
	bh=vfJpg+6NqO5TGKY1sPdQvSYlHKmbanMmNS6vuAFArg0=;
	h=To:Subject:From:Message-Id:Date; b=nb/pvqd/ZD6gCPNTHMlH8gHdYVtFv91pTQkx0yDADuR4efcPF8O7M9VopRbBSB7+bTGQipqUuZZ45HanxLbfCxBad0y/tdPP9NJjRNYi24dvoZUyrzWeBFvf2G00JStzLgF0HTyTNycZ1i4CaEBN6/enJSrHSUzcik41RxdaN5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cx8luepx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cx8luepx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF33C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746544793;
	bh=vfJpg+6NqO5TGKY1sPdQvSYlHKmbanMmNS6vuAFArg0=;
	h=To:Subject:From:Date:From;
	b=Cx8luepxS3awXd0E5f3/5oDxThInbs4ACRcfzK5qIlU3q7nfXKY9vhoZS76TcRSal
	 5gUbCG2O+tMjGcejcMge2jFOT6+NBY26tlN3a9FZhPz8oSdbOfRd3nBHxOIvjn4Fax
	 5gGr0KFsnd3Al4h/I12Ty7mkx+Cck69mGXsr9qS2GiA0FIwvGhpaEg1mdEqFSLaBST
	 2nYCPvoqqt2I8hrpJ0ANSRqnOr0oBRBaKqnB64u7lUhQyex6dgUM3qSNSXORUWcG3+
	 7j2x2Qtocmdqg3jKfG7db8CZAP2/sKpEya8ij8aNDieVLTNgd07wmiRap5sLV6ynN7
	 RjLDuo5O5a37w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA10C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654479358.3970.7327031958678472334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1852864bb04cfe5e23295bad6dc0a3ffa0b9ea97cec473652e430b02ab94aa26
Date: Tue, 06 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746544793
