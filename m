Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293191922C4
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735634754; cv=none; b=d6IA/0WYBbTriiDXRj5yOkVUgDc3tNUkm3tu8caYBDG2vgJe58SI21oOoF9az5x0GNAQND4UcB+Io65WjhQKREb8FfPQUOYZE8oNoimJZHT3IdNkaQCNdReA3JHEvdWLr1LJ09SIwkI8PU0sGP7TennEWl9P7yOiFUEGAvvv0a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735634754; c=relaxed/simple;
	bh=GdT1aVLmKkOwmhlzWtgfNxPjEqagxI+26TwDs6tGdpM=;
	h=To:Subject:From:Message-Id:Date; b=DXYUKX0IFs1k2j8K2MiI9HO2iANNe7qLHENd4rVSHO/YFocYMs8KV6M+tMe+q2+Kr4oKN66hPjkF7od7jWwDpbv01gNXyfzyc4Vbw3TwoE57yp+YyF2DiX4/oYLcQzpH/VYQkkSMYugS0l1czZSrg7Hr18paiJx/VcKlUFkjqgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijXwujWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijXwujWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6E0C4CEDC
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735634753;
	bh=GdT1aVLmKkOwmhlzWtgfNxPjEqagxI+26TwDs6tGdpM=;
	h=To:Subject:From:Date:From;
	b=ijXwujWTMx8ggsrwSV9grdJDrzUHBeQ9U9ObUE3o8S1c+oFE0hCEigNw17YGjTmLI
	 7nA6iFur8eAqueofmqIh3Afek8XuEtAd436S4d4+kdz32xSnlW7LQ0081+SPDQay/G
	 j8Fp9RFXxmr6sfzxUi9aSmFqcVhTIu0l1lyDDWw/Lpebq0ZFHgIw4uZOm4uTcjCrIF
	 KQxvGgQKzCuRJIGdhG47pPKL40Jw586vd+Bp8hmWQtIde7Yy5e78ObUtNMyHCCM2Ba
	 19LGkm4k8WrQYKjFUT0X3N6pzeuNPUzOM0cAgxezd3owa4KbKyM/4vhfm5MakTpiMN
	 VAPgxqWm9CsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9743E77194
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563475368.31993.2623553231707573947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0a94e2c69a3f879d57cb5faa7136681e43dbbf6dbabe112e8293597e7be11d
Date: Tue, 31 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735634753
