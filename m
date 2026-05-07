Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E87515ECCC
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778165854; cv=none; b=KFMYu24KnVNbB7uyyowSnt1YJdw8Wo0YAaH73ZiCLaah6gTfIYwDKXlDI14pIdZpA0xnUadw+1ssHHB3J7A283JQtucH6EoaoDmSniHjWEZvkkFhd8s2APsQRXrlRN1+yTtERBU41AtKChGD5nfrgYjYVKXkGYBA0PiOIA0c1U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778165854; c=relaxed/simple;
	bh=qWcAwAEj9HK7xyhMzPSj/Nu1n/5vQw/ZaGeBORDj/wo=;
	h=To:Subject:From:Message-Id:Date; b=n0N3I27ci9faIS1+PTT/LWTQhBgUMzLkqdTycHBOi81XisETEy2UQ0wT8cKCU8Izw3T+Itp6R0n0dJ/4Sb23Jacb7lWY+dOGKl5Fa/TiCoWgCL3yg1LUSD8VTmr9zxNf1D3Td9TiBQueDGnRcDhcoi0KEqD5AircHQ1/exiL+W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg7C/4/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg7C/4/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3E4C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778165853;
	bh=qWcAwAEj9HK7xyhMzPSj/Nu1n/5vQw/ZaGeBORDj/wo=;
	h=To:Subject:From:Date:From;
	b=Dg7C/4/mrj16kvg1Da6ow7BNL6CBBfS5dUXr6urULjPFToEmdVO9BmRaH79qxc5nW
	 8lotfm9PXZBuYVijFTeeM4ozCJ+qUDdSKq9gktSu/A4is+j/YutdQIJ6aqGZRvtJkL
	 cvRPYvBUtO88beccXJljyHA3lUCYMTqiy8RIyrJPkdWAuDdjrix5Oh3kL1IPKkJ9xD
	 24pnUhiCARSQ1Hss0EFLiVuX8viC4yQJKDA4dS2Kxks02s3bc4qpNfZWx/SstcUivA
	 YlZa8j5VypO55wKFCEhZkM3CTCP1ZGNYN7f5OegDnDqbTSXBUcbD0bXkzpaOwiZe/o
	 22+4grMlVP3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA79ECD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177816585368.27249.7780436271680031326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a0f04e1539578ba51b6c6ad3f841db2051dd49ece1848898f0b03449f3ca2b
Date: Thu, 07 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778165853
