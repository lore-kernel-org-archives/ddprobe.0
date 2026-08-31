Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69147471412
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788190834; cv=none; b=kuSIdol3ldh4Dgerb2MnpJnfP+MDaZc+r6dXm9aca67uqUeK8mkeRoz5onYmfmE4rRkC1izypcKr4Lli4BH7wRkUbUCeDoNNnk4JI8mrz7v+N045mpD1Sr/VOpX8mV2qXxq00JA/8FOKhdJBemvT9388pYQmUlo6uUb+pVx64Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788190834; c=relaxed/simple;
	bh=+iR6fm4S70zApnJhwwh40JW+4qV/9LkLGE6D1SgOD2E=;
	h=To:Subject:From:Message-Id:Date; b=bzf/PJYzUDlO9AKN5aBMLZqIXppy5NQCx6Of85A2eWtvmeC6LA4GsKV+AWueFsepf4iyOfwMU8fim0hjYt+UqSGh9ma4syTTdIlufSfPQOz1AY13oX/zSnbxvDyMsyyrgR8B7PGW50Hk04qz+d0BK49VAIFTUUCLsQBMzBAPF0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XugAkLze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XugAkLze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1A5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788190833;
	bh=+iR6fm4S70zApnJhwwh40JW+4qV/9LkLGE6D1SgOD2E=;
	h=To:Subject:From:Date:From;
	b=XugAkLzeKOU5QOqsGCFxwYCCGtH9eDZ3Vw6XMZxZJvsXknMzsCPebB3i0cOYssozr
	 AkxuVBqKWS0wDuOXubZ8VOEfjz+UArtXdrAIn06ZF4LGgU54z86CYxocQ5WiTHCJrV
	 vjbw8eWr3f7ahUz5kLQjIwQicgWlYr/6unzZhcwvoV43dQuCSJjz0/V7CgN5tlBh6S
	 9Ue60vD5aMVfRzb6C2cN/LYi8zvogLBqyzfwEDkDMOe56x8E6tnBcXka/H4y/OrTJs
	 sRBPJcjyVxyhQWD6nRkS3VJhBpGBzVXR5KCdpC6eGtn+dGOssOCr8KnXt9LkMNerUR
	 GNysi3dxSAjog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1CC624A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819083368.23915.15013925240649992169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db03664f318a131d112cb13087ff78459d1a4e41cfe51fb3c7b0839b0a59ff2b
Date: Mon, 31 Aug 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788190833
