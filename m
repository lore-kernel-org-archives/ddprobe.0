Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FC229408
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760455194; cv=none; b=i55OOVLw3/27ABG2WwdXVwVAJi8l8qjEN9jwkx7MivgNkWeZpUaJ/40htcPBr98Bx+ukto2yfE9NDRJIl8FWi+2s6GOZPeBEczmdTOO0eukNDwXtODCUbl//1Og9GcIfXhHAIfEpxVi5VCc0qgSBenOj6ePY1SDKXGzLR1kUrC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760455194; c=relaxed/simple;
	bh=PseQ2ocwBtBlDJL3pblW2RhyrIkAynClD0UhvvjI/tk=;
	h=To:Subject:From:Message-Id:Date; b=G6BNMhk62GZ0z7HOv3IGz+Y4xsE78BPNmCS5wcLSV8lrnXGKf4wpED+MhoQF5OPJ7ewZKmIrmlOSRdHgzuWqoP2ng8JOnQ5OAzdEXC2zNx9WQOYjWr15Cpya/DaUMW9AogrAHJY0ANgLXrrYNNZiciW6AWedaTIzZWsD7MOW29U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGiQ92u8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGiQ92u8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F840C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760455193;
	bh=PseQ2ocwBtBlDJL3pblW2RhyrIkAynClD0UhvvjI/tk=;
	h=To:Subject:From:Date:From;
	b=DGiQ92u83QH8s5sX0hl3lvTdfCA4XsVtuVKG2FJO+WCUm2CuAro8Gn2jDA8538/bN
	 8zb0HTbUMgIkiqMi90nSaExaj2h20Om5Qbi2M5tZz6FXEZmuFQudsnU/ZU/4EBRwW2
	 pPZukzWzPVkr6Mzggn/qXLwePPs1mTWfBxMINBi9WNn/Ape3j6Mit1OIi3to8LQ+Xs
	 4cauoSsq82uchNXcYg7cKvpAsykkkwJ/qixvUoj/9wddOx/n5ufru+IYaMDAilOr0u
	 VBzsnYyl+1PcJb/16aLAel98JuanBL06IglZl5uasLTupmGJH57xG67Il1Hk9AIJ4C
	 4uL4fzKbWASog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F496CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045519357.5235.11216771834997177933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0f14e6c9818660548897e721178c8859a0451e8015f753e864b323d6aee5c5
Date: Tue, 14 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760455193
