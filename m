Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4912E22F19
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741582134; cv=none; b=ObyMffH9+QX3mstPZttyVEY5UNFZi+C0waYIp4psyRstAXMlbqubWhDc8FB79vB+Azp4CXdBJrgld2cERaQf1PxZHY6cjO+SCvnkwvoRO7N8E9Er10q2zwu2TOImVx+yueB6wnFRPbMVncwpNjquaDP38X12fIcBl4WbXM4bS38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741582134; c=relaxed/simple;
	bh=yPyHu/vBh5r75UwT6CUL2iD01xsn++4NfzU4xdNmJB4=;
	h=To:Subject:From:Message-Id:Date; b=ILuY5pDYLlrsn1svs6y07wxLXMA30UK/vzz995y+41+WbyRoWoyNhvvXGEC0o3aQbhtk49Io6bxGH2EU47ayxUAe9BI167h8M0/YnMzqm5js1xTI1JwHWdfYSkrp3fL3gm8ueHGw0Hp/rcdVuhQqHBtkun9mi5yUO1VeRx7XzIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQ4rEHxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQ4rEHxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCE3C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741582133;
	bh=yPyHu/vBh5r75UwT6CUL2iD01xsn++4NfzU4xdNmJB4=;
	h=To:Subject:From:Date:From;
	b=GQ4rEHxT4W3B/UewYiwTxRQiDsBuf+YU71WEA+dGNpEwNjvDA3VgfaDGzPZfTYtl1
	 ldOwageulet21YsaH0MfAU2lJKZwnJ84UT79gyjKBPzW6m6tgKM716qAfRuFpNRh8q
	 h7pzf68n9+hNEmKojkZnY9nr4IVUmDZkfYKtaxuiIFKkvmni3cAuZWEXkcZjTqd0iF
	 gyRSMtP+3Aa8IglHcngPAx2LUylulZmorkmC/Ckrzn9EvejH/bt6ClKYe3QKokcdPM
	 EGEynhxwS5TSoAxI0TzWx4J9FlSoEqztoH4BW4xd+q/OpjXcPTEGIa/PU7lQ4G/DpI
	 RCniGgOdnIZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92150C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174158213359.22616.8870421577398994842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2d4abae773d155daea7bd093d3d177c92702758902a7ce0367a95a883ae707
Date: Mon, 10 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741582133
