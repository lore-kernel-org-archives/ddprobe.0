Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B9518DB01
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787466634; cv=none; b=jZFNBJe5Ma7cPsH2wvfnBZmbsIDTmycrFOXvhK9c+rllLItvOFiUWOdj3vs3Kl0x6ry/mZWGgtR7zSikw310u3LmeEi1AoYzMpJ9zdx6f8TCFInlU3WXTqJzbdcd5qQWEDgycvcWHanPUGuOiduAR4e+yA5pysJaPNIF1KF4iek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787466634; c=relaxed/simple;
	bh=efw3/AEZhsLX5vAgY1ffKa4guitT9wQg/VuEEZf6urk=;
	h=To:Subject:From:Message-Id:Date; b=pCi4SmiS4IbqQX47sinBEbCanWF+a41hawhQSLGbgEIV7BtulcuqrJxbdH1VF3seBW1TGHAYJaBTzZ9Ob6d6QRsLO4P8BcGHN+cCkZr/8ngj1odKb0Y/t8lnMVPm/Kq7xGArFmFqgFN7nJyWM/tJuDJlYwSef49niQqnKEfb9jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNavEPRZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNavEPRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9253C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787466633;
	bh=efw3/AEZhsLX5vAgY1ffKa4guitT9wQg/VuEEZf6urk=;
	h=To:Subject:From:Date:From;
	b=rNavEPRZ0N4psmlygu1NOQAeWIOZC89fgGi6hiM0snXrDWCDJDDG/Di37XNw5FBtx
	 5AOphGpdZRBFpk+HUi4gRU/6+CzgUxii39ekP1CL7pWZ0Ozpq+WMwi633ZvsA9mp1U
	 GcDVejU5n2SNR/bjTsea+WKpcxPlaBV55YkF6mINkdlS6mCYyD73Hk75vkxdJXeQ2D
	 uSRw353WV2y7tegORsGx0+ET0Fw0cQgkcV+BRzQOOk3E4rQzHUZ9+jdvHitT3yuPD3
	 QEp6HOwkAezuDrIXnmnWwkKnhV+8rgUcSnZCG7QoHiPDvmRZQ7JgUCYjRA+pKVoebn
	 U2jjBeZaXlSGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3540C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746663369.8950.8809162338026666853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6770b6189dfaac3ba35a0bc62fed9ff9acde8f7491631dc2ef7d24157773736d
Date: Sun, 23 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787466633
