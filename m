Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2B4248869
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763090394; cv=none; b=bpvzAOs996rOPIUbPsgl9jWx4NLB4z+dnzl7Kflo6VWBE0635Q4KoRBkfxxq6IQA4UvmHbuBKIj1mYudffhltdF5KaCFCZ3QZr2gla9WXYjz3ppKDVBy6WxRmD3N3kplvZJuCsHSgyiLOhkJZJ25ZJSR+B5hpvoVactJEgZxdgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763090394; c=relaxed/simple;
	bh=kikknFK12cYSXZB//L9LOoQ0jjN8i+wivGQ2kbyhWmg=;
	h=To:Subject:From:Message-Id:Date; b=e+QSfshTxkIHiSA2cV6j6AHjz+iTCIsb2FClwMcxrcqKKUXUFcmq6ngHZ++QQ58rjsofsZlGCab+GQbE19srGQDqIhFYC3wl0/QbPLaHjDFMcCIkCClevYrMlzzqjc1t8giaH0t7ltgwAEoxYXFVBLocCbpVySqeTHmCVgjHnTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6ygZDY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6ygZDY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4615C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763090393;
	bh=kikknFK12cYSXZB//L9LOoQ0jjN8i+wivGQ2kbyhWmg=;
	h=To:Subject:From:Date:From;
	b=V6ygZDY2RHPhsYjID84hIxZG5tnHydjuagUa8IM8EHgjeCUSmZhqKZX9k/qQ/o6g4
	 3BHoAk+8a1+IxDAq6/PiAUv+DEB5k/7yP9m0kEGg/RLC/7NNFv9G7V4rHnJV+YlHA1
	 3Wa37HHmAIj1gGUQvs9CBE3Ec+VExRKq4uesPHoQJ7OYcSx/a0E4uZz3sE6cBJuhrh
	 88RfVjKX7BzOluc2rCgJwTvEIQrd3yfSViWiU0rdde40VeNagVNWskbeOMlpMHD3cw
	 55Cgc/8Ud/eVI4w+1d5Y+QUzJL5+dopjpGl8U2BGLnBfWnNH/GK7n/gz4fWIfYKVeT
	 4ywkvFJu5GKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94530CDB480
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309039359.5890.8287672402834476884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059a6c9494e984ba33e575b9a063b4db6e55f9428fabf838db99b32aae8164d1
Date: Fri, 14 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763090393
