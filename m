Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F7D2F12AE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781632594; cv=none; b=tFbyPG7H/23ryKdd0oRVhWpbhj0FF/pbv3QqbYKrjPP7Q/+iLHRA+ZQM37tBimNofjH732LV6tWmQ/Se7uVmKPqrKx8NjaArocQkvN+SN9bPZURgYl/8rX0RIW+3GszuAsmeCrrk0Nnd9B7r6uYQsZM66Xg59FbGLykl6WVGerI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781632594; c=relaxed/simple;
	bh=j5GF26Y3igpgpoX2kC+2X+W79eiIqU7nRINbynk8Lt4=;
	h=To:Subject:From:Message-Id:Date; b=kOZwerBQ5AKFT4+RYP9ecEmIL0LVBPCM8rhUUsze7hoTVKp4pz2v9zNnDMmXRBK900Vu94UAQKIAP6Bc5lQhAtdtchVPkPjzrvGrxdRPAjr7tdpPG1McHBOT+51afMfw9mRYHrMXN1q8E80FkoR8gVcKwmQPJOKGzClf40+IST0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdN5Cqau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdN5Cqau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03E4C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781632593;
	bh=j5GF26Y3igpgpoX2kC+2X+W79eiIqU7nRINbynk8Lt4=;
	h=To:Subject:From:Date:From;
	b=MdN5CqauCP0CGmgSTKJWg7MI8aZrFg6BBFi7jK/M/4y2/iPL3Ah4LkC8fgZjhVpkz
	 L0GE4KifrMMe4RbG7DF1ljIFw2jKQFVlORCLFmOpNs5VSjChwYvuWFEJ+ayJOJMIyk
	 BnhSoy9L50BK9TqqXK+UwUNQ/5eKqlV0kDGfwx4MdOZAaSP3pmb8qPhRcAS2TqCYm+
	 GopbRRRSbs9SKImxzSGW8XTxK/DszOo1LLCEWPtk8rmt9xMfQu35eSDSYK/kcjb5EP
	 j+8RExbusVpcroo5UU+dnmhpzSxOBSZo/7fmWA+X5j6y9nrtbUkWI617HQjEkq8yZy
	 EEEU5H4KLHujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF867CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163259371.17206.5741570306471601373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1adc76468076643739d34f3a39fe88983efc3024068fdf50c2019e5fdca052aa
Date: Tue, 16 Jun 2026 17:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781632593
