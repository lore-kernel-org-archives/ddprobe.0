Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A051A254E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759796994; cv=none; b=pL08glXa8OAp8MaYTYDe0cHekc/2Qby+0rsE65fHVqkq44oCku+sUmBt3MTSqIGOEWJV4KPxrUeiyLJkgLZ3sYCjOiy2eRCpHV2x40T+X8didxUkmAZCGhrPX8BRGoG7jRHKJjA8xppBrmcNGQPC6SjIYlEDC8JfqjyvgSa/tKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759796994; c=relaxed/simple;
	bh=7o9I7v7dSObGKM1EdLENyvw/wQaZaAekHZUKgFGablc=;
	h=To:Subject:From:Message-Id:Date; b=qC+64jxk56qY470zTSgjI5gJD/DAfc+DbsSB0DByEYfJTEPOkxkKWwW8TutMMGM1q+GKIhQd9F3FdbItnzAWyCaCa6V+kNB78kRF9v83AtHZpCEZDS8KH1pJgfbyGA5todTZ0usNfAus167SqUk8ZYjWNUlzpF5D1JW+PAwgK2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peTOaxiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peTOaxiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC97DC4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759796993;
	bh=7o9I7v7dSObGKM1EdLENyvw/wQaZaAekHZUKgFGablc=;
	h=To:Subject:From:Date:From;
	b=peTOaxiX6FYs9x3/HH4yL06PEHKckHZc2xp96beIZ7THQ0Ip/8yW23k/IG13Z1wDh
	 iM41ly0THei8+Nt3Yutjgf6vMnNyMxlQXK1/Cm8roiPlfGSBF2Nt4pQtMJxoh2g0uU
	 zEGuWcApDDlN8lGmTEdQjSPmNYpZN8LT/BMZhDRkvKlARD+TzvdoOVjYfom9dsvI41
	 qJghqvapRKxw2VusT+nokcLkicQcNoQBNtxs6J0pRNhR892pakYuY3E5s0EqewZtPa
	 vquL4v0Ic/T/Foz4CDZWNco7QRykkbxLAVm9o96mRI5EqhkBASzjTQrH8E33ugbr4t
	 4D15YkIfBt0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F52CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979699359.8471.2421208311400881460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5773c3b9644c0eb25129180c4f2545daf5177dcd2afaf0831eef44efa8699f91
Date: Tue, 07 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759796993
