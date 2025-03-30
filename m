Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F16F12BF24
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743311994; cv=none; b=IGv0P13kP6m4RiLAFkIX2KD0sK79Wqb+XqHtBdt0Lts7vAgifN5cN9ZjnoWiUaYFAjc78KbTKMumQK5Je534V0pcgei1lDsK4Iqsw1O2OiQmGuxNmMYGGb9sH2AOd5U6lx3ysBdIYu2FvhHOat2vSuCv5ky9qVSDtfFF5vTxVaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743311994; c=relaxed/simple;
	bh=uICPYN8zZ81ylNdJT3ThtLYYv/ZCSvv6i/ZujgAFHoU=;
	h=To:Subject:From:Message-Id:Date; b=PmMuGMZLAL0g7AU25I+ckXIGXIrfcXJpEeRvqGdlgs8DqXDe0DoFlQhQ5SkG7AhG/KX343Fw1m57bXC8oit3OgB3aimpOfuRJP63DMLA6LeTlumyHed52pNi981oM84kzqZtiH1Y3tG4nNNd1GpYjkpir7iJ1aUSgx87j8Q4+kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDs+CYs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDs+CYs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57A5C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743311993;
	bh=uICPYN8zZ81ylNdJT3ThtLYYv/ZCSvv6i/ZujgAFHoU=;
	h=To:Subject:From:Date:From;
	b=jDs+CYs49fREgWd4v02NUxUgXkACP7f4pyNnmGXBRZz3VTqB9R8RtjoL59hb02+zN
	 41HkInLtl+BlZ0NVwBabrrKSccoRa4XnYVk3+HM/ikr90Zukw0dv9JY+Mel7IZagbT
	 kX2L94iPXJjiyhLHhKvC7r97zkNFuJMTvPpBT916o+DrdAezanLedg0LgBDc0dpFOm
	 o7XJ2V2nwE0qCeXaySFNWcBZBf0ruqhaQ8jjqrd5XkD7I6839klDjaqpXqxHEo/iLd
	 zONhOjjmDSxr1m/IEi6rAuUSSuLUuOA9Asn6JFClEANsN3TUQyBdDl5RQv6GUhQbpr
	 c34WfVzFcV3PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB0C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174331199358.15495.2489087367189414600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2683a24b58897e115ef982000d58c7d778761c614ad81d44158e9317c0e75035
Date: Sun, 30 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743311993
