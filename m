Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1540F1E492D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766387034; cv=none; b=WgUwEP4pSZ0foBSHmJQd7Z0GG10WPNHteMvXmrhJbUwRtoRO1IQE2rWdU0A6SSe2k9js7wKoqCT6VU+x4vUDSs3i8RiuBSli9USeOd6ongAjkFRloDwtk5Dwj4EhB3MRTNt5o4OSBdPxXF25O+Ymg4wotR+jnH5+BDPAwZma+Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766387034; c=relaxed/simple;
	bh=34/ounD1BycdBDtyUn9Zch1+7Ux/19nnDWJnDq3xtIE=;
	h=To:Subject:From:Message-Id:Date; b=VB8UW/gIAQgMCgLB2wnv7aLYW6DP1jrCrfO7EC44kOxB06Z5CJeUMvO18tTxFu2fWVyIHWYqDzUVmmy6JNFyQHnV+4+bqnuMtCClQl7L/MGxevzBIZgrPzilHcGrqKZZGBfvgw5zUGYSgak24rnPacGruMn/wh5jyweltF5UY7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ct5BO9qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ct5BO9qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A117AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766387033;
	bh=34/ounD1BycdBDtyUn9Zch1+7Ux/19nnDWJnDq3xtIE=;
	h=To:Subject:From:Date:From;
	b=ct5BO9qy9HkMY13l++17vFpdJqQEYLp+BOFLpzDIgxKkRnuT4470t43fqZzW4onoY
	 nVcD4mJzq+mICfG6eVlwRvQl4Jw4b6CtPuv3hIH/aBsW+S8wtF8+/G30EV405fTUBK
	 qgVy/nMaxw5OWujkLHLTh8leyBWlm5AD9qM4c9+HjbfEqpnfLLIVD5MOWaRo4TEiLr
	 +QNfeeiFiub0JRdSAlIYfeeTMmChGkTib3u4+7k6sRRF1HndJ2o8KBZ4FnC1rtHylA
	 bvaQpVwsYXEaO7lj6xppZUt8Rlry/SzA3kleN/Pacb4mZl9rg8Cfo1GLJsMQaSmuwF
	 cksfm2jVA9sZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8AD711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638703358.16707.14832465181767375236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2264a4a2054f3cc7307a99821da989dbd1a8de161eba86827a92db73aa10b46c
Date: Mon, 22 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766387033
