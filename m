Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5998137A82C
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786746634; cv=none; b=ajYwEeHbXgteuyeU9H0DsNJummIQaATmKbn4fBh11VQR2vBEVgsoeN4fbVw4beYW9c6X38w4YG6PiFSSnILugDC62OOHctMal2KVPGtXgtOzBlTVaFeKJCjvtmQjN87dUTvQsVBcpsGWGWrnFV7hF+TM9a+16H/KIzO6e8AxI4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786746634; c=relaxed/simple;
	bh=Fwxq47VJ+XL3rFXg/i666tiDn40qdOHBnTLHY/Rru0w=;
	h=To:Subject:From:Message-Id:Date; b=Tnh/PL34sIoEdKzIWzppjN269oljbwukSboHX+zE73UcwUzejuQ8WD6BPpJ3I5r3sY729UstsPgqMgWVJTx29O2lKgcQzhkhB0WoBpQ9j0P2DHDnYNUpJ+sP2C5spXBzNb3omNR0FfbYouW3yFWaw7Cj8ktkBXCrTqKbin1ojbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ylr1oljy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ylr1oljy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCDCC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786746633;
	bh=Fwxq47VJ+XL3rFXg/i666tiDn40qdOHBnTLHY/Rru0w=;
	h=To:Subject:From:Date:From;
	b=Ylr1oljytDSOnjbB55nc+IOJeX8NgGnNtCqycuPx/frRl2ZP2wiwmcyOIvEGrkh7i
	 vjeUmeHcKGMnacfXf+JxMV+Lf8+yQuzF/67JDrYbHz1H4xQp8hRj0ZanNWST5SHS4U
	 aDKIvuHW209Vz1ScovaSLI9fZCrcdPj3VzEURYCN3EOeokYX89069hjKZl8OBEQ5Eo
	 M8cBKp9gI2B1b1J9L6o3WKF/hOKYzMF0YHNs53pqMLtEvdLbFwuIj2HII+UTtkl/Gg
	 D0OVpL8NXasgTl9tUkWna9wmLw2NTdHeWWVvuKDx7lV3uCXfE//UTDoCMJeagdEYR5
	 U/trRUHN4HySQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99CBC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674663368.28168.369772204052725393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8850476f31cec40262c44d21ad63920e8b9e8938cf56548ff36ae682cc742f24
Date: Fri, 14 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786746633
