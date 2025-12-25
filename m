Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0B02E7621
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766667834; cv=none; b=VPJD69gyhM6tpnQdIkTpvfn5BL9NoNxN56bR+orNctckshlRicObF+Gu20RpilSGfRUtaPH/olckColofoV77ICbI6fBL2TZVyq5Sr4b6d77w0Hac80ZeH+VCAPrMbTs5gzE3A6JDTdj40ESWFP3kbtx8WB2//By1b6sB30tm5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766667834; c=relaxed/simple;
	bh=shdA3ZQy9/tG3sJDLtdYaDtrJ2eIUQuE9DZX/eUP1vc=;
	h=To:Subject:From:Message-Id:Date; b=fcQoSUxklZdapN9X2s9EHtSDSRUzJdhsaFzw4XJn2YYldVl38mSmPj+nPLoN64mIchl8D265QYl0/TpdZl28lZ5HS0LpP7l28BQIhiRok+x+7OJCphfyneVjp5q+66veqhVDCit5rQ45aWhEuF/h7bJGEOcpncCaLkDfkqkuV1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh/BVfo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh/BVfo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5214C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766667833;
	bh=shdA3ZQy9/tG3sJDLtdYaDtrJ2eIUQuE9DZX/eUP1vc=;
	h=To:Subject:From:Date:From;
	b=Gh/BVfo9hfF75rOIILO2PDL7YGrq3jMlDKboALVKBCkaht6sBrumnR+ioFt/1H2s9
	 n+6hGIbAbrcxGy7cndWtfe1x6vSjEvLCVwyWOr+We+V/X2Y3TLsUYH+WYkG05N63v3
	 fuxMP96l5FejQO8QHIEx0zHO7Hh2MB1EDgTxgIij6hVHaNrspp68duysifHlNDhX2l
	 jB2fbtt3rnlmzf1qHogcUt7MrR85hZ9AK0GOan9pwuDKNej1DDfxv57S52ze7QPBxV
	 vUxIJAu0Fc8/JR1tUZV88fI5d728k6jJf9szEIiPIkdRaSBoMPSeMYysK93cHYve3Q
	 6MUXuU9nHBcRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954ADE7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666783358.30962.17361098393427617234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ae2b2b705eaddd640368ba823750e6e361080ce376620f5b968ba0ba899a6d
Date: Thu, 25 Dec 2025 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766667833
