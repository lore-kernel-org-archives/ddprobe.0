Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A59B1BCA07
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756243794; cv=none; b=DzOQxQ3rIm9OhwCd33ozLa0ehBkJ0KLOvJAPZHNKpJyq9MjoD1B3HeRZvmJ4SMta6I1AfehQB1umiMcjnHxRpfIMmTjAWOnQktF9a58cOSvewvX3dwnSfBy4luAgwvGRi4G+HYa5Hqw0ioF/jfllJLd+fVnWJfvXxCn7yDcrHBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756243794; c=relaxed/simple;
	bh=MPXfbIl/NUMQ24uLigJjsVORXtQ4bndBwfIF1RLCanY=;
	h=To:Subject:From:Message-Id:Date; b=q5dlyL6OcLUboOurVy24mKJ/J/enFAiwAL1vUhkkT7P3h4kkvoOIgJnSKQe55Vfv8SFtIKFVU/CUsMqiK68XegWFpDZ/nxEWKpLzyBkr0Uvc4/GCoPba3sFdbRnmIGx4UNIcsbVNLd/clNAYQiOK24kl6h6qGEnJd5hLltGg94A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8+9e7N0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8+9e7N0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756243793;
	bh=MPXfbIl/NUMQ24uLigJjsVORXtQ4bndBwfIF1RLCanY=;
	h=To:Subject:From:Date:From;
	b=R8+9e7N0uuZ9X8Zq9gzSdYLf52JPA7KH4PvPpuYBd/bq8sgLjOzwZAgzOXdGOCRYz
	 9Pp8WLD3u8W4WD8zoKCs16I5izjGKCSFyqS59ZTW0E72/9W2eCr63UWZflYeSSvFMV
	 L1EmAuCgTA1AlWVwxJw6cx51JC4RQu1sWorvjMWqxl0JbarIxesur2shDnqXZQRT+x
	 ocMcKOwLlRSYcVR1vpjstFzMhx9QJ6J88jOC0LuFlKXdpodqHT5oDMWQnnugF9Bh4+
	 lSnwpk/SVmJX+HVNcLhKtpiG/FhTdwY+vUohx2ngz6OWFVyfdMwR7UGgd1n04YihGv
	 E7ph5AlGjka6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91192CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624379358.4266.13884086237813247837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c6a1856b9a55c43731c30fff75dae7ec3189d57b4f743d996b3ee6c86274b0
Date: Tue, 26 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756243793
