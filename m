Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BCD25334B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764829374; cv=none; b=oQHHCUtPnu44h0yAsts76xdE+AYRiBpROGYrMUDEnChU8jyi+m2txNviAv49zKBnUTeQ0oa2dLt7rKG1E1pZ7HPD0iGupKKTfqbUsK2KJSxgQSzzbzXHzFtNBm+vk90Hzq5JxytD4xtfUamLgv92VvGC625A7VZG1lWLUxipzXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764829374; c=relaxed/simple;
	bh=WtUVuox7W+ng0Ob01iOcnNkfcg0T7bEgUqdcDneBBHM=;
	h=To:Subject:From:Message-Id:Date; b=k17wt6mVy+sDAZFFCSJqLvm55zOf9AqupsK3yqYBjVkxQaG3rFX0qKkRriqjW2eHjd4tkXFLLC3VaDrzcwk+QlskZ6Y69xKPm9nNo/HYH/sir2gDDU1QKmrplp6VQSmQFFtOfnxVpTzSEDli6flUjk0ddbrGceOzG9x2kmo0kL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aigLJy+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aigLJy+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5BC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764829373;
	bh=WtUVuox7W+ng0Ob01iOcnNkfcg0T7bEgUqdcDneBBHM=;
	h=To:Subject:From:Date:From;
	b=aigLJy+ORCbqN29wApnmAR0cDlGuGuXCk/uH2I67e2Yr2JdgCITnbMtS3JovhTxCx
	 r1s+yHr3k74nyGA5Mwn4TUMsfbtvOycHkK+ZsXmR6BEvgCbxpFoVxQx12rzFaHE0sn
	 RSZCoB7ZYrYNO0CW9imswlWLK91eoxrS+w+p2eTmY8R7cSUg7BDw5jHNQNegoXRD8i
	 B0SJGNQFJv2FGgVq9LOW0HAm71q13x5UrI2TtaEUNW5oDkLpB4YjUAK6bo0ej7o0Lg
	 fddD2vX3K1/GaRN1CRibvrhnfC74B7g6QY91Ji2Za45j0d166ucmbFVWX888SbyQSB
	 OzgIo9px/7yig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92852D1D86A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482937359.28053.13192076538043996095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126ab140a36a59504afd3fd66cd50aa47e2020cadb0605227d9630cdd871a0c7
Date: Thu, 04 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764829373
