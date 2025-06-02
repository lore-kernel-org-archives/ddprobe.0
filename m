Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3E66ADD
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748849994; cv=none; b=JqeTvgTulinxUKa78uud4kwPAwizxL0FXMh0lSkHuMNoMxUQdZEPHzqsTb/mWXM69UfAzhLBUe3Vds535LtffOAOwTv1VKyf8ijTXfRiGC3fanz34JVWq8ibs/ecN6kL9Wvei31tG5s7HmAzlYMIClVuTppIC5qKiWxMgwPzn0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748849994; c=relaxed/simple;
	bh=txUR3IlltnaZvdpF1KIHRxskPNK68JunHg83eoX2BXA=;
	h=To:Subject:From:Message-Id:Date; b=CTwzf7G1uuB6CKl7P6FFUKVrdrP68/tZ66aMTHOO7GQR/fwIl+1I4rG+IMh0qQm988zZYiVFcnELrNZAmX4U1T4vHw8MO8/L326r1wAxzbtOtvzHij1tji80DYm9hs59J3460XAsmCdIjfqN1j0pfyZhwx1s3kHQeoBTRMiPq+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BravtF1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BravtF1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD7EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748849993;
	bh=txUR3IlltnaZvdpF1KIHRxskPNK68JunHg83eoX2BXA=;
	h=To:Subject:From:Date:From;
	b=BravtF1rLK2g12ZrDhb6OeKcbz3BU7WdM8OXtqtw81FhvqrRJSF/jmorIkqw+BgJV
	 +dbo7O77KLGGHK/UztG/G+W51GbZs7gl7z08QSviFZg1aWGOTpaasDAbBmsuWJG8Iw
	 rf6VbYHQsricbzOuzxZJbAwqY2XOfa1bWupnYycc+WCKoxF+/dImiVAoHuEsVh75an
	 Er9nmzBes8SZul+jH1lHRh0K9eVbCSiZwWn67RGkQquHOYnLscgZaSBBPgdLwLpyJW
	 G0yyg7UIoPSR66l7wsRU3lT8LnrESSw4TSwbWlh+ZcjQkz1eEsOmGsy1kFeMwIsWbM
	 zRQxOYPQQ8ytQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AF6C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884999361.20675.4937706090818793647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d57284a0fabb0155329829fc867fa3e026b92d14a2c4a6a6a67f89f564c5bb6b
Date: Mon, 02 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748849993
