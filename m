Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAC1CB532
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730331954; cv=none; b=hCbph9R3u/g1OCtjUefoqRaRFrkHTlYSRLh4x/B0vyJZFw0F7oNeLpwMKMj29XZR1N8rMMjdFH33SQvCTzr/XLF6+iH2ACE4bKKdbJvE52C8f+CDY6+DnYUr+in8b+2iJM/+073xp0uQNtVAkOmGrfKbY9HjbD4B8h42i6v0nug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730331954; c=relaxed/simple;
	bh=S0r/3n4/YNhdWDFilpdYihjCF+agtOgtrjIGcaUNYNo=;
	h=To:Subject:From:Message-Id:Date; b=JLYu5RJGttgpn0wvlwzChc0iB/J9ZCwgzj6BRBwF3OjmMaT4pon6aLY2dicAZyLyIcLgzcJZXXxWTnee8J+mH1KC02saifX7tBkhKSbf/7GiOxFnI3laILAO4aMt+CPlbQMZesg7/TWxPOdlrsP5JcdXAPf+LTMKn3loydQp1eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn2n7ev8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn2n7ev8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4360C4DDFC
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730331953;
	bh=S0r/3n4/YNhdWDFilpdYihjCF+agtOgtrjIGcaUNYNo=;
	h=To:Subject:From:Date:From;
	b=Xn2n7ev84cEWqQErfA5B+1zfO9Gy7AXSkf/Kn44UOEpJ6414zmakqMb497yW7Ro+T
	 Wu0bEVKQgWQtj3LxvjGD4oS7X2CGK3CM0/g+Fl/rfd64EdxmhVmFsb4gOc8femu7Ib
	 QTtCcE/huhA3q0hB+4ApzqXzUlA5FjHuo9Eqx9wqu2sTKfwYI/OUMSyYsm2cTQLCeZ
	 Vb41yc9u7kKGu+tynTSbzdpAU9ITADtIomnVS5ZW3BFPArO/NZhCOwMFoo3cmdaUCw
	 mJ27Urqsdmmr4P040oINo2g5iMy5FmGJLiUwaP+twMJPZr5gK1O46OLgvEloudorjB
	 suhYzHvwUUNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D3D6B6B4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173033195365.29616.5358555487091090869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d29a458b97007ae60058c2429e8e35154f066fca24341e5fc9dc57af3baf8e5
Date: Wed, 30 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730331953
