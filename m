Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0131A70A
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707516497; cv=none; b=g9vuXm7lRgQRktuY6iuigs2lEavohYIccgelzCITR3hms868Wk9yUCLrMn3hcp97TdxiDLbf2YxkY1HiX9WTCgR63EDndXOUFBoRp+sEmKvn0He0F5TpNuXqE5fmrljqLFh6UWdkwOvzLDAcEl2kYCAHEpIF6lCy31BB33GgEQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707516497; c=relaxed/simple;
	bh=0VQ/M2Q8yWk6hY5i23dp8D2kl+zcB2rVv+OafAoywBY=;
	h=To:Subject:From:Message-Id:Date; b=m1esehxpvOqXeGTYvNnHQrKEb9T+flOmgLIXNgAp3CVC7PoIrS50nT5Ps5NvapNOwQXZwfRDXWPoXrFQ+ZC8fYS4d45MLXP+X41ahL5NAOfeT7fwPIi1zYhDLTOrL9kxakHkGK8iM6Kz6Duh4eO4OtGmDAdT5kv3sb7rV1OXyFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCXyVGcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCXyVGcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CE6C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707516496;
	bh=0VQ/M2Q8yWk6hY5i23dp8D2kl+zcB2rVv+OafAoywBY=;
	h=To:Subject:From:Date:From;
	b=mCXyVGcBkSHvVEcKUxZ8h5Z/EPX8ctvWumDld0EmCF/P8BXyBo/uRFywxEVlgdsrx
	 XXaoIIWvkpqK19N0juar0NN1MvH8fiYXjCNrQyglCtacGM47dh8Z5bYi8DNwEQQ8DU
	 j9wunzA1UEm6CS5IFCz2CkQdXBQw5dSstsv0IZTLAo/uE2EU4WUCTFzK8qgDaQXWj7
	 vIoitZ5sdt/Q0ZMIY94TWKlU3BubhPdL1SEwYL3fwE5aV21584qhmzrZvSAXZjo21D
	 KVzR39nlnXGcUhl1N3qqcRVOxpqE+fvuTwRvKIlWSWhVv8Qk1rnW8rnrqUnvP3/qHo
	 15wIGUto3FdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCD2C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751649640.21321.9489341649292812022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5357ce2aedbe2128902373d3b5d712191f513060f2cd62479c2d73004b9b4fcd
Date: Fri, 09 Feb 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707516496
