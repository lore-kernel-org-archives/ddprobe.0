Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDAB139CFA
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747100394; cv=none; b=r5M2FWKPmxdajRhD8PJllzBATxlPdbk/g2fcx+PUMTmVPYNAmvRupEOyof3HDMXfODw7IrpbpST6Qz0RUUSuUfHAN/Q045XAc8klxpgQVNpH7HunlD6a83UgHfJJXAt2IOcizS1pjUFCsTKPU1izgg6bjp/o+pi72zN5ytbv1wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747100394; c=relaxed/simple;
	bh=+BRahqxGhwP0KFwtebaxjZz0F5TMTUARdPdA22FO9CM=;
	h=To:Subject:From:Message-Id:Date; b=idNCFhuNV8Lf6miRYqElK8l9svQ/K+DYR7sDlijTZ+l9uVadGxI3nnW582P/2yFpPh7SKE91TtJTrKckrwjtJzLTB6CLuHG5lgCRy5zMOJFGe9Z2O2YTI0CMWk+kua8FgmI8PXuqDNCxGV2Z0ofhgli8IkzlRvXNpZnvKoCPyvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2+8lvI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2+8lvI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61A8C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747100393;
	bh=+BRahqxGhwP0KFwtebaxjZz0F5TMTUARdPdA22FO9CM=;
	h=To:Subject:From:Date:From;
	b=s2+8lvI5UWzc3my/x+GSVrd+IF36tRRtBHB4KZXH1ga59z7fh0t8JWDhO29ERltx1
	 tPSc+T5TsoUP8aLNidrgBZQWu+lQI0m1iMUBxWCWXNINDljZqaRX8n1n8ec+Z1czL6
	 hm6Gd9SG5TjuzMRKvLC6zI8CYreQ464ZwZtU0Zgm2+PFkVehhCOGM+TikskQQFG+UY
	 oq6vZBX7XNpazda5gb8fgacjhmd9A5RQyO8899GyCaq4wVPPoh3x1fu1pZVTeeQ+He
	 lHpEnXAD7WACnWU057Ggxa13ZMpAgbQxtKqSVNXXZJ3MaRak1CdHht0yi3zNufeL6A
	 LXPGXvmoSF4dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CBAC3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710039357.20432.516986429754909506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3fd4dea9fb18a12ddadea45b29aaa0e4e47a5833211d5e110a9de9ecaa4b3b
Date: Tue, 13 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747100393
