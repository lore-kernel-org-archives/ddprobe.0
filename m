Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C883594F
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764729774; cv=none; b=Vf/x/kHdcMhleQwqokTFTWwndTThGfvHBxz1cCvneJyHs9cV0PGTN+uIVItnPctX5pTgcpM5nwf/BEOMDF9WNouD31rXbHPLJK/5BAA7RgqpAeTNeV/HtuEoWXSOASyTDac23/n45ZcZK/qQBhB/hGY8veu3aU5C7y7DS5FYOmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764729774; c=relaxed/simple;
	bh=5FBa4JASjU5rBaOWMHmPAPjgfEygYk++EoJfmHMb/i8=;
	h=To:Subject:From:Message-Id:Date; b=Kpe7XL0yhZ/bym/9qA5ZG4IbcNDV0Vnr93qDvAt9bii6uDuZNY+5SrGHQjepL7t6c3Qif4lD//l9D4bryqvUPaEw9E00aAIDHYyJBn2B0+/JwBrUc8kn7nzujlzsYyfYG3LchgTCci/kCih6x4vL+++HoL98WxN0xTczPlFgT6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuocJhyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuocJhyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764729773;
	bh=5FBa4JASjU5rBaOWMHmPAPjgfEygYk++EoJfmHMb/i8=;
	h=To:Subject:From:Date:From;
	b=IuocJhynlb0g/o+j6Aci9PixcEaX0DUZtSLlpLONMYnOFn93VJmfAzUsiXntkmJI6
	 s4D93kWiQgnToH6WpylQXSgreeeGnDPkY4t5A+1s4RXj7r0EKQ/2PkaKtFO/5lE1Ms
	 sC5dD5zA/mfR2W95oKEdoh6lBgnFf7QuppGzSFa3OHXQe+rhLS779O9o7Nt1Q/O6Hj
	 3D+eiZUqXN82ZCNM59c4D8d4nRKNk0N2tyIak98x8I3Z8vnuAjSOrwztkS1atDFYWT
	 ZOoW966hWRFrtHFG86d/ojzzGXSC5h3OQ0bt8gltZaNYe0+OeZw64fNexaiLk0vMEU
	 SuZfYyBOFFs4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942CAD1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472977358.18778.4260671481746006160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff9d3a4f1ab5bfe3c41135d65b85bed2ca56ec45740be551c495197c6743d8a
Date: Wed, 03 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764729773
