Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6CB165EED
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728179754; cv=none; b=WLW/2TzbS2dI1mpqEK/kZfhrD2aCdIyfzyGpY77X5JFFx3GHSIfoqE56zwyF+WCgoyFllFCPJxj2UB+gvuRLF2A02nx2gt9qqDuAPUhurP9IwANhv/fx/x7fWx/Q3USrjuLAnedEUmtDV0URUhbe4Wxr/4ItDLu4yTZHpmORw/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728179754; c=relaxed/simple;
	bh=lCcxqHG34qghRlXCR3/Wae53ZWyO9N0Ar+kdya6NLf4=;
	h=To:Subject:From:Message-Id:Date; b=PZ2wcwVwktFWJ9M00hyC2I8qqa+cXFP1TwATSda66bxKyuJoqaz1JJatAbhrch/iLnubYbzXHyZ2SGZ6V3ztvdBPf2xvdCfWT2A59yoWIYs5Fn3zv3ExHo9xGn/CBU3seDp8B15hFdov3oklkN9Mlv2FL6TmgxHtk9wu3A2VsTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lfwo0FmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lfwo0FmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF52DC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728179753;
	bh=lCcxqHG34qghRlXCR3/Wae53ZWyO9N0Ar+kdya6NLf4=;
	h=To:Subject:From:Date:From;
	b=Lfwo0FmCCeloAFHDW9Qhkmar8ocQsyiHQmHBn5AzdzeBcysLiTodp5Cgk8v1ccdn2
	 1EumNOHLoTDBqftpO7rcfvDgv2sEAMqFGZRuTU3Vf+eWw7R/kuk2ClU3cI2zAxBksD
	 xjW+poZTCWWcZkKkD6JTbhcKevOyhnAZs49RTXDna+P/owMW25iCpNcIHN0fbjQuNA
	 n0teC5FAENrrVVvaNrLecfn27mRT2iXUfnReYzVa4tYJEKnG/IEtlhz3QulPh9NE9Z
	 ZWtDx6Oi6ooM7MakFk786oCCcu+INKAsbmJtWik++BpqOWMSqb+mbquT4F8PMCw/dI
	 neTlnH/FV2Mkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2BACFB445
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817975360.10880.769791817787022500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8173005d362b59bf76e0e3c816b927121e06ab35ac30ceb76d077556e1b7451a
Date: Sun, 06 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728179753
