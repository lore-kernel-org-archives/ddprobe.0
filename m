Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAD017A2F6
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778327254; cv=none; b=vDoymhyVGT94GxG8HkR9dlw/OFFNUBJdIu56IRCps57e9g/AqS7NCVUuH/EQvFRcK9vz/emB0Sjfw/NvInkZwkCp3wVl4OtlWzxMHVFHqfTsJUUuCWLGztBO9Kko6tq3VQQE2Wm7FVxhR40RXjcda2i0FZp7Bm9FL2CImRYLaDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778327254; c=relaxed/simple;
	bh=5usCY+T7V319o/GuqeV0vvC+emT+Yev4qNG+9Aba7II=;
	h=To:Subject:From:Message-Id:Date; b=MPpMeV3DhQcya3jxTekc1Hz4FLxI+jGutPHjUJhSDgRAHxj9NTBt2J2cCtculqxaCPUSq0/IQO6rtVphwUfVsXac4gsiJeQnf5gncr+nz6y6lzE+1IYTjAwCJi9skAywuEDqn6Df7xCwN3rpYEBAWBWUNFi0UGY8oymWpc3X/ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxgi6m8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxgi6m8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1719DC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778327254;
	bh=5usCY+T7V319o/GuqeV0vvC+emT+Yev4qNG+9Aba7II=;
	h=To:Subject:From:Date:From;
	b=qxgi6m8IYXvhGteM0qWBumw3JJImnmKTatNFjv3AFykm61wTKiD8fXetNQ4pZjlWh
	 c2gWR4IyCGv/+uf31qlZjRHOIxT4tsifpSd/1P1GWYSFfM0RiO06bIBV/bbCRovrD6
	 FZaPh5YFZKVsh6FYn1XXuashigaIlRff/BIeAompZKKks6ZkE66teGozl/F/hkiN99
	 IS/s7zu78TcYf/sa3y7o2Lh7cduh6tRYnsin6FZEvHLSemuO7wuLCUXMKSmiHjyT1l
	 mT9XRQyijOx5HV9d7VX8SigFA0BZQJVZiTEMKBjpfQvsOhy1+dcVfat5pm3HXcR9eD
	 Hh9oq/Y/YzLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA076CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832725378.30350.2681875317310940161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e265c753d61e84924c752316c232bfb35ce685d6d5ccbc3e778a8425b5613bfb
Date: Sat, 09 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778327253
