Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18D5226CE0
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744834194; cv=none; b=m16o86i2RznsdMtYmF3FhrX9NADT7BoVQtMp40Fg217IoauVVCqQXG2QCcZSkKfGQ5YOcf9Eq9h5Yez/rlvvsMCztuh+nY69E1V9vjk9EEkUbjAS9EwtgFCkwlm4j47xrn+sd68a8e2ZVWM5d+vpvkOYUk7fXCe1d0CEJ9GtIfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744834194; c=relaxed/simple;
	bh=BEIaWzQj+CCavRAzEQ1oeCR/YDTRps7yUANhtLzPaw0=;
	h=To:Subject:From:Message-Id:Date; b=I3C7B3Ee5XZqGSfzhUqBZR/ag3U/bpqTy0/TpEWJfA8xYdiNvxMt7kfhLbOnxswPSBhp8W9by+VJK9uafTM8CCJJp/KoLj+4aBObkP5h0yBoUrG3OnH8zldNU7X4/Y7XCDDVX2iWc16y03PpxCwIOyz0M0alKA4GPKnFq96tZ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQvffrf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQvffrf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95E7C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744834193;
	bh=BEIaWzQj+CCavRAzEQ1oeCR/YDTRps7yUANhtLzPaw0=;
	h=To:Subject:From:Date:From;
	b=XQvffrf6BHWafS20ztqiRSx8L/PrpHrM7WlMMKo1qQgM05Ka8WX7zQddIqeD0a7kN
	 8h4ekBMSUhqeiow3aQk5imLwoKaiZHv6sLcMzQB2DWbP7MBklZStWcZzV5ZbaaV87y
	 Hd4ZGfLdvhdqFXRey1a5/wXs9D5aLZkUH0jx1zzRcrevJsP3b86WZt5jKFXMf2lfak
	 P35iZBnrH8UfwSdHIEuJqHFALupunxtRwlc804rbS+uvA+ba2ahi4yT1QRXIMHjl7o
	 O1guY8PQly+SyHmK1pB5oUyeQbuuQThdoKEhHcOLXeoQSkKbUk1ib+rT0wFpTHzKbW
	 rHLRqAKb+SU4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EB6C369C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483419366.16542.4964540939524589350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f550a78ebc5c6e6907b6cadd9631dce802093bfdcda6590a55abcf514f79ba
Date: Wed, 16 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744834193
