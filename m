Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8AF1D6AA
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756647594; cv=none; b=pyVuknL5ukYP5Dvf2BD8RztlUE2PtB5QpNV0LAej74FSODnqexfs59PZ7cRn/vzbW0oVoKOinLtxkCH5zmpBxrgBbnqC2yRjNjoydneDGqj7eq2BQKHtAsf169Msa5OSfuvb5lFiVuV1MRXy4BDrQTAYnkvwAqgywFj2BNhTv8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756647594; c=relaxed/simple;
	bh=Yp0g1zhWRLoga9SHUG+CepfjIpZIUE7dIhT9C22fTG4=;
	h=To:Subject:From:Message-Id:Date; b=j/DFWhpybKKrOFwetlo1QC+/a5qHLwEDIHXkobVwRI1cYaabiZYxsGbnWM6wPdEQ1JGZqr37geMyVJHDGfH2tiRythS/KK7/bLBcXHGbO1dXhHDzQ+lNQLZPdikew+TRIxeCCnqgsbeAHLLaH6oEtiDzSX+Rik7K5R7rPhULeTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xna/h9LI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xna/h9LI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E17C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756647593;
	bh=Yp0g1zhWRLoga9SHUG+CepfjIpZIUE7dIhT9C22fTG4=;
	h=To:Subject:From:Date:From;
	b=Xna/h9LIkwzKbnmVpMEZAWK5u4YMczG+LgyWCkdBmiAvCxyN4n+r4m5PHJGk61xKH
	 OpNrUFWB46yI56qXBixQOj+jw8tECcwGd9QfIxJDPAV4CoVtqW8dmYO8nvDtMQd3jI
	 d+OgFQfsJtAD1Nazv3pat1CX4HP15uuFjhK80h+i580Sz6esh34fvkLbARt9d/O/xY
	 0eUUpYbMjTxxauCbo5iy3JSaNbZ4uxKzRrDauFeQ5NJ2YNc99x9YBeeWkAfyPqfnkG
	 qnnBHw44Qax9+HEsi0aSeMeUqtYGQk+f+/BP/w8Ikve8R67AxfaJ5AUbFSRC4vRsI/
	 m/ItqpV5+KoPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2DCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664759358.32376.4905440183366287186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f463c9574b8765f4cd5bd0cb791033b9be20214ac26e454664a9e6fe414085
Date: Sun, 31 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756647593
