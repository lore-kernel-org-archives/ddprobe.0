Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC5028A1D9
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750241395; cv=none; b=RStqRqIl+Z8x6t5h01KGtYWuOmzCTuuCWZQo6OMXhMNuwOr7dw+NiBc14nqioqYzKmdFrp/6HTZqV7u7ZQaqiH1aFMFFhNY+ULOn6f9AhmDjIp5W3dcLwPHdiywrZmsI4qWy8UyMtNzf8/R7+jxT2wShMoCEhS43Dqf7GhFZWUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750241395; c=relaxed/simple;
	bh=w8DgTSJdBVGy1WMuEfp5kjvA2S/m6l3sewb2pG91mUs=;
	h=To:Subject:From:Message-Id:Date; b=U1AC+WC9+2QbDYsU5vKwXbfJ51G2T9OZWuG2F09Hz2d+nB6mhA6J7PNxyJMotoz/GgHcQuvJ9ZXbCA6wZxQhN+mC72FMaEcjk33JEbM2n1R2vFd8ldfmGv3tVGdZWKhfgdteV9DTfRJUMUdu80dJy+v8z+GISaAbxCT0mj+DxUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBCUVvEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBCUVvEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4917C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750241393;
	bh=w8DgTSJdBVGy1WMuEfp5kjvA2S/m6l3sewb2pG91mUs=;
	h=To:Subject:From:Date:From;
	b=ZBCUVvEl4Vc/ymKcRdpp1DoMv8Mspsi3TWIObKFqOMO6NjLn0NKuz3T8sDo8bd4nT
	 s18tvYaSHA47/UAFj6Snkzlp5ii6D5dcEi2SpUIvfnVOB1Pozq9GvzDCd0cys1ErLo
	 K4TmoRQ9PKeNuHpliAsdrFdSM6B/aqhMXyuce9w9LyiXIvawzadgvxdl2NvqpnF5eX
	 EoXVrSDVhjdExANx5gLBW94zRjDlkBvq0QneF2Cj0c0u/dDVUBpvlun5DJvJGOC9DX
	 nqwFz/0tx6/i/JsuynoZV0bnaHHww8+au6C4Nv6Sp1DO+ppGkIxbshBVYJ1P9/Kb0m
	 nCiQflFzq5Tng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9BC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024139358.6166.1154302066214811000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e1552c8e4bf6da4a7af68c3965e17607448f97da1877d85789b9cb85776b0e
Date: Wed, 18 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750241393
