Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C41ABE4E
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742639996; cv=none; b=Imne7tDgPpx51QWHKovkAtCcvlYQ6t4zGHZFnE63g004yOdCKf/qGt/E30iFZW4ohAUv3In2hLHs1bNwlC7ZpUKp7LRl3+X+54OzPOzS5OeWaHIBPh613Jd9/vxum3+yev5r/r+z1DlFByHrbGO5PgsBu34RciDFB2KX+9q2TMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742639996; c=relaxed/simple;
	bh=NvWMjtmcSuZE7js9X3CULr89X60SwwGL0T4eIR8l3ts=;
	h=To:Subject:From:Message-Id:Date; b=SB1CocbWv4ODwkvgiontQDonOOuDWId62NxqKw72QipLjjdYvHcz09G+hicN4IER/oe4BUKvYFb0fk9k+7iuY+kUksBPg0MNpg4WPQR0X2BE+H+97XMMI5ZslhgixIhFG/P/ppIaF6zhcJtlmEuhnNoeDYkPSxy8HXamUvSeOqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9Ivs9TM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9Ivs9TM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C30C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742639993;
	bh=NvWMjtmcSuZE7js9X3CULr89X60SwwGL0T4eIR8l3ts=;
	h=To:Subject:From:Date:From;
	b=r9Ivs9TMU73gnhcDmen8TMkGQrOj8IAJFIE0m2ZDPQXbi4bEPiKjZM1p31WluljDx
	 467kluR8hVqVaHVIJ0UlcgKOmqEXgXp2S5uJY4ZZfdtTmhLuxlB9i6W+hzoW+KaGqw
	 Epr1hooqa46PoiolJoheHRO64E9nuDkQ4dlR0/7avOLEAcuZKAGacYEmkmzft/VHOf
	 t0zRp0oEcF81FxRmP6jps7zSkMRTJnSgu64lEAVWDZnkiOHyRkXn/vvg+lIFfxvuJA
	 i9J8+ig3Wu7kQp9vkw4NEe3+Th/1TF+wjTgTqkgAG2XJVh+xd+5ORecYCNtRTdIV67
	 UrSkEF9eMEONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABCC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263999359.402.11198808453189688950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7c246b9c169779b4baf8445037da9af2851cf647b405acc6bdbc1b6b7f703e
Date: Sat, 22 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742639993
