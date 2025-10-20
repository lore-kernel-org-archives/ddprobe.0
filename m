Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1898283FC3
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760980793; cv=none; b=uYPelrH/jyI2AdxT5gA4zboISQ7I6nmUVkAKU39DBppusmXBvWCo9mVMg9Fd31jchcmKSj7SLBBNQGkTANDGbGKWNapBH3bQDbEJjDYHjKRFSuLfAc+k+xk363nnqx/wbfrXHrtC+AyCxCy3fAgz8Q5ddNQjeErN99kf7/Je0IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760980793; c=relaxed/simple;
	bh=LdxanZytV9jyxfZnToBdc4c3Q7gwwEHOvA2vl+NGktY=;
	h=To:Subject:From:Message-Id:Date; b=GV6agIES95HhLVK9jjIkJTR6oGf4f45ld5bWQKXsSVaHvSqryYlB22tlXFDgTns3gn1y73amVZux1ItyWXG9NyMwO6Vi+TCdsmEBp0ClMgsAU/vZQ6w3UdgCM7BnVmiANNgwNXPwcbycjyOsr1UNRyKLQc8ceQsvFF0zRdnz+fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8L6db6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8L6db6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C7DC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760980793;
	bh=LdxanZytV9jyxfZnToBdc4c3Q7gwwEHOvA2vl+NGktY=;
	h=To:Subject:From:Date:From;
	b=X8L6db6ov4qkpnOpy+j24Uoc/N2KZKr5dm5YLiG04/EZT9PmzmbFG8oZUexa533Qf
	 HPShoDRlB3oPmRyx76E4pV0n0/QBzXvygh+sw9POLVQXTY61TFV0OU4GrRCHP4Elrd
	 G77+AZlVNpl3JXF4grPiAt27aoIV62xCmIfZG/qpyvKOYWvrIUK7cw9zc/FHeHvoTN
	 PbnDLmMVkC1uH6D4r6WrodvHYBd2TPz3F1NUzEcKi6EVOgY8oLsGWa6LACw/mxGzHx
	 a1INl3/7nUc9/K7Cr3BVuH5vHi/StztHFH28lMacbwC+clSL1lJd25Yo3oGUFJc6QD
	 3h98Qg5RWyadA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D8BCCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098079357.12155.17895153140647904498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d582d6e65aab33e828acd0aaeaef86065fba0fc9eb2e19460640b380900bfc
Date: Mon, 20 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760980793
