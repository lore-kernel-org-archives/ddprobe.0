Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A3C1922C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718618903; cv=none; b=MP8Z5/Qq177eybCLuTaU+9MpkxFyk0kzAI/bOs4QnWqfp9KvG78rKukhpy0yYD85/EGMLPoV7NPNQdNQ0zDr/zyiyrza9r0TkOx9dtg57TspxlytUASZQOGAuG5OKB3/g2iHtm/vcuh5URQifGu895j2JgZl0bCWh4Km39wPmEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718618903; c=relaxed/simple;
	bh=1QZ+TBN+44/TpnNynoIInLVnYZUKTNrNfG+4Xrunjhk=;
	h=To:Subject:From:Message-Id:Date; b=BJUUiHEgPeey+WrVhjCy5PmJVeP9vxlq6N+9+yVepVgXI0hPD+1QzuJxxgOc+x6UWoulWLeLHRfXQkxoMKnsp9YFhuV/qImaStGjAzWQHBQfNogSMHQpamcxUCpHGHg8/DxhNrm3lKK2I8qv9PBje9sU6MgM+iJ7oeM8iv5ep5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVHRpyvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVHRpyvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75A3C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718618902;
	bh=1QZ+TBN+44/TpnNynoIInLVnYZUKTNrNfG+4Xrunjhk=;
	h=To:Subject:From:Date:From;
	b=qVHRpyvANTdDxOEg4hH8oJWCBu0g8TRZzkF9PfKAjiyM1FgrBh1U2VQCOATANopt/
	 mKt+3M/gbOLd8V1+eqJ32KnamoTb1jc287gaulo760LfZEkTtS08KkqU2Dln8qWRFA
	 uQ3dT0vZFNaIt4yuFQNoGUYH5jzDtZf5A4tpyNQFqXnM1wEzHU49jL47UiwVZTcKhC
	 1yBlLMKDb2CViHOpYmcnLXS29oM55+arO4PtK5zkxfOS1bl1reZpzo5nMOnRB+lG48
	 2fgNRIm7d1hRX86nE/yu0xiHVBxTdS/dD6aH/pKHHjHAFJuotyzBY8kmzdcn/vf1LN
	 KomjlgMmoZspQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15F0C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 10:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171861890278.31920.2166573763334732120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b5645cfb9bc6f21fdd68c8439a83568c0373ed97f530cec876b816eb8e93fff
Date: Mon, 17 Jun 2024 10:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718618902
